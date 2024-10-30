clean:
	rm -r -f *.class code *.s curl_http_post

code-bin:
	gcc -g -O0 -o code code.c

code-asm:
	gcc -S code.c

code-java:
	javac code.java

curl_http_post-bin:
	gcc -L/opt/local/curl-7.86.0-debug/lib -lcurl-d -g -O0 -o curl_http_post curl_http_post.c

all: clean code-bin code-asm code-java curl_http_post-bin

.PHONY: clean code-bin code-asm code-java curl_http_post-bin