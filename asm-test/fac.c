int fac(int n) {
    return n == 1 ? 1 : n * fac(n-1);
}

int main(int argc, char* argv[]) {
    return fac(5);
}
