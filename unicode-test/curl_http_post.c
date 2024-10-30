#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "/opt/local/curl-7.86.0-debug/include/curl/curl.h"

int main(void)
{
    CURL *curl;
    CURLcode res;

    curl_global_init(CURL_GLOBAL_ALL);

    /* get a curl handle */
    curl = curl_easy_init();

    struct curl_slist *list = NULL;
    if (curl)
    {
        char *query_string = curl_easy_escape(curl, "arg1=中&arg2=😊", 0);
        if (query_string)
        {
            fprintf(stdout, "curl_easy_escape() ok, query string encoded:%s\n", query_string);
        }
        else
        {
            fprintf(stderr, "curl_easy_escape() failed\n");
        }
        char urlstr[100];
        char *url = "http://127.0.0.1:8042/echoback?";
        strcat(urlstr, url);
        strcat(urlstr, query_string);
        fprintf(stdout, "url:%s\n", urlstr);
        if (query_string)
        {
            curl_free((void *)query_string);
        }
        /* First set the URL that is about to receive our POST. This URL can
           just as well be an https:// URL if that is what should receive the
           data. */
        curl_easy_setopt(curl, CURLOPT_URL, url);
        /* Now specify the POST data */
        // char *data = "{\"d1\":\"\u4e2d\",\"d2\":\"😊\"}"; // utf8 encoded
        char data[21] = {
            0x00, 0x7B, 0x00, 0x22, 0x00, 0x64, 0x00, 0x31, 0x00, 0x22, 0x00, 0x3A, 0x00, 0x22, 0x4e, 0x2d, 0x00, 0x22, 0x00, 0x7d, '\0'}; // utf16 encoded
        curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data);
        curl_easy_setopt(curl, CURLOPT_POSTFIELDSIZE_LARGE, 20);
        /* Set headers*/
        list = curl_slist_append(list, "Content-Type: application/json");
        list = curl_slist_append(list, "My-header1: 😭");
        curl_easy_setopt(curl, CURLOPT_HTTPHEADER, list);
        /* Perform the request, res will get the return code */
        res = curl_easy_perform(curl);
        /* Check for errors */
        if (res != CURLE_OK)
            fprintf(stderr, "curl_easy_perform() failed: %s\n",
                    curl_easy_strerror(res));

        /* always cleanup */
        curl_easy_cleanup(curl);
        curl_slist_free_all(list);
    }
    curl_global_cleanup();
    return 0;
}