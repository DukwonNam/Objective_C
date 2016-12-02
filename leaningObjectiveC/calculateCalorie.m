//
//  calculateCalorie.m
//  leaningObjectiveC
//
//  Created by DukwonNam on 2016. 11..
//  Copyright © 2016 year DukwonNam. All rights reserved.
//

#import <stdio.h>
#import <string.h>

typedef struct _CALORIE {
    char food_name[40];
    float calorie;
}Calorie;

int register_calorie(int cal_num, Calorie* calorie_array);
void calculate_calorie(int cal_num, Calorie* calorie_array) ;

int calculateCalories() {

    Calorie calorie_array[500];
    int cal_num = 0;
    int mode = 0;

    printf("Calculate Calories\n");
    while (1) {
        printf("\nChoose 1.Register 2.Calculate : ");
        scanf("%d", &mode);

        switch (mode) {
        case 1:
            cal_num = register_calorie(cal_num, &calorie_array);
            break;
        case 2:
            calculate_calorie(cal_num, &calorie_array);
            break;
        default:
            return 0;
        }
    }
    return 0;
}

int register_calorie(int cal_num, Calorie* calorie_array) {
    printf("Type the name: ");
    scanf("%s", calorie_array[cal_num].food_name);
    printf("Type the calorie: ");
    scanf("%f", &(calorie_array[cal_num].calorie));
    
    return ++cal_num;
}

void calculate_calorie(int cal_num, Calorie* calorie_array) {
    printf("------Food list--------\n");
    int i;
    for (i = 0; i < cal_num; i++) {
        printf("%s ", calorie_array[i].food_name);
    }
    printf("\n-----------------------\n");

    char food_input[40];
    float grams_input;
    float total_calories = 0;
    while (1) {
        printf("\nFood name(\"end\" will start calculate): ");
        scanf("%s", food_input);
        if (strcmp(food_input, "end") == 0) {
            break;
        }

        printf("\ngrams : ");
        scanf("%f", &grams_input);

        for (i = 0; i < cal_num; i++) {
            if (strcmp(food_input, calorie_array[i].food_name)) {
                total_calories += calorie_array[i].calorie * grams_input / 100;
                break;
            }
        }
    }

    printf("\nTotal calories: %fkcal", total_calories);
    system("PAUSE");
}
