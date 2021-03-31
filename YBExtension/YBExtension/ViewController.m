//
//  ViewController.m
//  YBExtension
//
//  Created by yangbin on 2021/1/8.
//

#import "ViewController.h"
#import "NSArray+Expand.h"
#import "NSString+Expand.h"
#import "TestProxy.h"
#import "NSObject+Judge.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestProxy *proxy = [TestProxy alloc];
    NSString *string = (NSString *)proxy;
    [string isKindOfString];
    
}


@end
