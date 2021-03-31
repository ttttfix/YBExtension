//
//  NSArray+Expand.h
//  YBExtension
//
//  Created by yangbin on 2021/1/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray<__covariant T> (Expand)


- (NSArray *)yb_map:(id (^)(T element, NSUInteger index))transform;

- (NSArray<T> *)yb_filter:(BOOL (^)(T element, NSUInteger index))includeElement;

- (T _Nullable)yb_find:(BOOL (^)(T element))block;

- (instancetype)sortedUsingSelector:(SEL)selector;

@end


@interface NSArray (Judge)


@end




NS_ASSUME_NONNULL_END
