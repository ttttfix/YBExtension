//
//  NSObject+Judge.m
//  YBExtension
//
//  Created by yangbin on 2021/1/9.
//

#import "NSObject+Judge.h"
#import <objc/runtime.h>

@implementation NSProxy (Judge)




@end


@implementation NSObject (Judge)

- (BOOL)isKindOfString {
    return [self isKindOfClass:NSString.class];
}

- (BOOL)isKindOfArrary {
    return [self isKindOfClass:NSArray.class];
}

- (BOOL)isKindOfDictionary {
    return [self isKindOfClass:NSDictionary.class];
}



@end
