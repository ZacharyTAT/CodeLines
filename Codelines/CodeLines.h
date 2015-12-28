//
//  CodeLines.h
//  Codelines
//
//  Created by apple on 12/26/15.
//  Copyright (c) 2015 swjtu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CodeLines : NSObject
/**
 *  返回该文件路径下所有.h\.m文件的代码行，会打印出每个文件的行数
 */
+ (NSUInteger)processWithPath:(NSString *)filePath;

@end
