void printChars() {
    const char* str = "vincent\n";
    __asm__("int $0x80\n\r"::"a"(4), "b"(1), "c"(str), "d"(8):);
}

int main(int argc, char *argv[]){
    printChars();
    return 0;
}
