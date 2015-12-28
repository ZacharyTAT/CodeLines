//
//  NSString+TextLine.m
//  Codelines
//
//  Created by apple on 12/26/15.
//  Copyright (c) 2015 swjtu. All rights reserved.
//

#import "NSString+TextLine.h"

@implementation NSString (TextLine)

- (NSUInteger)lines
{
    NSUInteger count = 1;
    
    for (NSUInteger i = 0; i < self.length; i++) {
        char ch = [self characterAtIndex:i];
        
#warning 这里的回车符判断没有考虑不同操作系统的情况
        if (ch == '\n')count++;
        
    }
    
    return count;
}

@end
