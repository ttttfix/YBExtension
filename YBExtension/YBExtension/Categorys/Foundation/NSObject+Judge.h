//
//  NSObject+Judge.h
//  YBExtension
//
//  Created by yangbin on 2021/1/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface NSProxy (Judge)



@end


@interface NSObject (Judge)


- (BOOL)isKindOfString;

- (BOOL)isKindOfArrary;

- (BOOL)isKindOfDictionary;

//- (BOOL)isKindOfView;


@end

NS_ASSUME_NONNULL_END
