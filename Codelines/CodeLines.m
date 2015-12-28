//
//  CodeLines.m
//  Codelines
//
//  Created by apple on 12/26/15.
//  Copyright (c) 2015 swjtu. All rights reserved.
//

#import "CodeLines.h"
#import "NSString+TextLine.h"

@implementation CodeLines

+ (NSUInteger)processWithPath:(NSString *)filePath
{
    NSFileManager *fileMgr = [NSFileManager defaultManager];
    
    BOOL isDirectory;
    [fileMgr fileExistsAtPath:filePath isDirectory:&isDirectory];
    
    if (isDirectory) {//是目录
        NSArray *fileArr = [fileMgr contentsOfDirectoryAtPath:filePath error:nil];
        
        NSUInteger sumLines = 0;
        for (int i = 0; i < fileArr.count; i++) {
            sumLines += [CodeLines processWithPath:[NSString stringWithFormat:@"%@/%@",filePath,fileArr[i]]];
        }
        
        return sumLines;
    }
    
    //是文件
    NSString *filePathExtension = [filePath pathExtension];
    
    if (![filePathExtension isEqualToString:@"m"] && ![filePathExtension isEqualToString:@"h"]) return 0;
    
    NSString *text = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    NSUInteger lines = [text lines];
    
    NSLog(@"%@ : %lu",[filePath lastPathComponent],lines);

//    NSLog(@"%@ : %lu",filePath,lines);
    
    return lines;
}

@end
