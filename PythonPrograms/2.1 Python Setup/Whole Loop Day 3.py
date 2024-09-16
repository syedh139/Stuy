def sum_multiple(n):
    sum   = 0
    if n % 2 == 0:
        n = n - 1
    while(n < 10):
        if n % n == 0 or n % 5 == 0:
            sum = sum + n
        n = n + 1
    return sum