#include <stdio.h>

extern void bubble_sort(int *arr, int n);

static void print_array(const char *label, const int *arr, int n)
{
    printf("%s [", label);
    for (int i = 0; i < n; i++) {
        printf("%d%s", arr[i], (i < n - 1) ? ", " : "");
    }
    printf("]\n");
}

int main(void)
{
    int arr[] = { 5, 3, 8, 1, 9, 2, 7, 4, 6, 0, -3, 42, 17, -8 };
    int n = (int)(sizeof(arr) / sizeof(arr[0]));

    print_array("Before:", arr, n);
    bubble_sort(arr, n);
    print_array("After: ", arr, n);

    int sorted = 1;
    for (int i = 1; i < n; i++) {
        
        if (arr[i - 1] > arr[i]) { 
            sorted = 0; 
            break; 
        }
    }
    printf("Result: %s\n", sorted ? "SORTED OK" : "SORT FAILED");

    return sorted ? 0 : 1;
}
