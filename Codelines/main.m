//
//  main.m
//  Codelines
//
//  Created by apple on 12/26/15.
//  Copyright (c) 2015 swjtu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CodeLines.h"

int main(int argc, const char * argv[])
{
    NSString *filePath = @"/Users/apple/Desktop/code/Codelines/Codelines";
    
    NSUInteger sumLines = [CodeLines processWithPath:filePath];
    
    NSLog(@"总行数 = %lu",sumLines);
    
    
    return 0;
}
