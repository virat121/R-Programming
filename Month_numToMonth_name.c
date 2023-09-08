#include <stdio.h>
#include <string.h>

int main() {
    char inputDate[12];  // Assuming the input date format is "dd-mm-yyyy"
    char outputDate[12]; // To store the converted date "dd-xxx-yyyy"

    // Prompt the user for input
    printf("Enter a date in dd-mm-yyyy format: ");
    fgets(inputDate, sizeof(inputDate), stdin);

    // Remove the newline character from the input
    inputDate[strcspn(inputDate, "\n")] = '\0';

    // Check if the input format is valid
    if (strlen(inputDate) != 10 || inputDate[2] != '-' || inputDate[5] != '-') {
        printf("Invalid input format. Please use dd-mm-yyyy format.\n");
        return 1;
    }

    // Extract day, month, and year from the input
    int day, month, year;
    sscanf(inputDate, "%d-%d-%d", &day, &month, &year);

    // Define an array of month abbreviations
    char *months[] = {"JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"};

    // Check if the month value is valid
    if (month < 1 || month > 12) {
        printf("Invalid month. Month should be between 1 and 12.\n");
        return 1;
    }

    // Convert month to its abbreviation
    char *monthAbbreviation = months[month - 1];
    // Create the output date string
    snprintf(outputDate, sizeof(outputDate), "%02d-%s-%04d", day, monthAbbreviation, year);
    // Display the converted date
    printf("Converted date: %s\n", outputDate);

    return 0;
}
