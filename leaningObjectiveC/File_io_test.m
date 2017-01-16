//
//  File_io_test.m
//  leaningObjectiveC
//
//  Created by dukwonnam on 2017. 1. 9..
//  Copyright © 2017년 korail. All rights reserved.
//

#import <Foundation/Foundation.h>

void test_File_IO() {
    @autoreleasepool {
        // Text file
        NSFileManager * fileManager = [NSFileManager defaultManager];
        NSString *currentPath = [fileManager currentDirectoryPath];
        NSMutableString *fileName = [NSMutableString stringWithString:@""];
        [fileName appendString:currentPath];
        [fileName appendString:@"test_input.txt"];
        NSLog(@"filePath is %@", fileName);
        
        NSString *absoluteFilePathAndName = @"/Users/dukwonnam/Documents/source/learning_Objective_C/leaningObjectiveC/test_input.txt";
        
        // Getting all text in file
        NSString *str = [NSString stringWithContentsOfFile:absoluteFilePathAndName encoding:NSUTF8StringEncoding error:NULL];
        NSLog(@"test_input.txt => %@", str);
        
        // Getting each line text in file
        NSArray *array = [str componentsSeparatedByString:@"\n"];
        for (int i = 0; i < array.count; i++) {
            NSLog(@"test_input.txt => [%d]%@", i, array[i]);
        }
        
        // Write string to File
        NSString *stringToWrite = @"Write string to File";
        [stringToWrite writeToFile:@"/Users/dukwonnam/Documents/source/learning_Objective_C/leaningObjectiveC/test_output.txt" atomically:YES encoding:NSUTF8StringEncoding error:NULL];
    }
}
