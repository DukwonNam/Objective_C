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
        NSString *absoluteFilePathAndName2 = @"/Users/dukwonnam/Documents/source/learning_Objective_C/leaningObjectiveC/test_input2.txt";
        NSString *absoluteFilePathAndName3 = @"/Users/dukwonnam/Documents/test_input2.txt";
        NSString *absoluteFilePathAndName4 = @"/Users/dukwonnam/Documents/testtest";
        
        // Check the file exists or not
        BOOL fileExist1 = [fileManager fileExistsAtPath:currentPath];
        BOOL fileExist2 = [fileManager fileExistsAtPath:fileName];
        BOOL fileExist3 = [fileManager fileExistsAtPath:absoluteFilePathAndName];
        NSLog(@"fileExistsAtPath %d", fileExist1);
        NSLog(@"fileExistsAtPath %d", fileExist2);
        NSLog(@"fileExistsAtPath %d", fileExist3);
        
        // file or directory list: contentsOfDirectoryAtPath
        NSArray *fileArray = [fileManager contentsOfDirectoryAtPath:@"/" error:NULL];
        NSLog(@"contentsOfDirectoryAtPath at '/' = %@", fileArray);
        fileArray = [fileManager contentsOfDirectoryAtPath:@"/teteß" error:NULL];
        NSLog(@"contentsOfDirectoryAtPath at '/tete' = %@", fileArray);
        
        // file or directory copy: copyItemAtPath
        BOOL copyItemAtPath = [fileManager copyItemAtPath:absoluteFilePathAndName toPath:absoluteFilePathAndName2 error:NULL];
        NSLog(@"copyItemAtPath %d", copyItemAtPath);
        
        // file or directory move: moveItemAtPath
        BOOL moveItemAtPath = [fileManager moveItemAtPath:absoluteFilePathAndName2 toPath:absoluteFilePathAndName3 error:NULL];
        NSLog(@"moveItemAtPath %d", moveItemAtPath);
        
        // file or directory remove: removeItemAtPath
        BOOL removeItemAtPath = [fileManager removeItemAtPath:absoluteFilePathAndName3 error:NULL];
        NSLog(@"removeItemAtPath %d", removeItemAtPath);
        
        // create directory:
        BOOL createDirectoryAtPath = [fileManager createDirectoryAtPath:absoluteFilePathAndName4 withIntermediateDirectories:NO attributes:nil error:NULL];
        NSLog(@"createDirectoryAtPath %d", createDirectoryAtPath);
        
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
