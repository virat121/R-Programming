#include <stdio.h>
#include <string.h>

int main() {
    char inputDate[12], outputDate[12];
    printf("Enter a date in dd-xxx-yyyy format: ");
    fgets(inputDate, sizeof(inputDate), stdin);
    inputDate[strlen(inputDate) - 1] = '\0';

    int day, month = -1, year;
    char monthAbbreviation[4];
    sscanf(inputDate, "%2d-%3s-%4d", &day, monthAbbreviation, &year);

    char *months[] = {"JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"};
    for (int i = 0; i < 12; i++) {
        if (strcmp(monthAbbreviation, months[i]) == 0) {
            month = i + 1;
            break;
        }
    }

    if (month < 1 || month > 12) {
        printf("Invalid month abbreviation. Use JAN to DEC.\n");
        return 1;
    }

    snprintf(outputDate, sizeof(outputDate), "%02d-%02d-%04d", day, month, year);
    printf("Converted date: %s\n", outputDate);

    return 0;
}
