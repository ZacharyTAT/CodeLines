//
//  NSString+TextLine.h
//  Codelines
//
//  Created by apple on 12/26/15.
//  Copyright (c) 2015 swjtu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TextLine)

/** 计算字符串对应文本的行数 */
- (NSUInteger)lines;

@end
