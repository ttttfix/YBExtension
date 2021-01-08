//
//  NSArray+Expand.m
//  YBExtension
//
//  Created by yangbin on 2021/1/8.
//

#import "NSArray+Expand.h"

@implementation NSArray (Expand)

- (NSArray *)yb_map:(id (^)(id element, NSUInteger index))transform {
    NSMutableArray *target = NSMutableArray.new;
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        id result = nil;
        if (transform) result = transform(obj, idx);
        [target addObject:result ?: NSNull.null];
    }];
    return target.copy;
}

- (NSArray *)yb_filter:(BOOL (^)(id element, NSUInteger index))includeElement {
    NSMutableArray *target = NSMutableArray.new;
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (includeElement(obj,idx)) [target addObject:obj];
    }];
    return target.copy;
}

- (id _Nullable)yb_find:(BOOL (^)(id element))block {
    for (id object in self) {
        if (block && block(object)) return object;
    }
    return nil;
}

@end


@implementation NSArray (Judge)

- (BOOL)isSome {
    return (self && self.count >0) ? YES : NO;
}

@end
