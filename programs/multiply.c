unsigned int multiply(unsigned int a, unsigned int b);

void _start(void) {
    unsigned int result;
    
    result = multiply(10, 10);
}

unsigned int multiply(unsigned int a, unsigned int b) {
    unsigned int i;
    unsigned int value = 0;

    for (i = 0; i < b; i++) {
        value += a;
    }

    return value;
}