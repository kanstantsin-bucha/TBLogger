//
//  ViewController.m
//  TBLogger_Mac_Example
//
//  Created by Bucha Kanstantsin on 4/6/17.
//  Copyright © 2017 truebucha. All rights reserved.
//

#import "ViewController.h"
#import <TBLogger/TBLogger.h>


@interface ViewController ()

@property (strong, nonatomic, nonnull) TBLogger * logger;

@end


@implementation ViewController

/// MARK: - property -

- (TBLogger *)logger {
    if (_logger != nil) {
        return _logger;
    }
    
    _logger = [TBLogger loggerWithName: NSStringFromClass([self class])];
    _logger.logLevel = TBLogLevelInfo;
    return _logger;
}

/// MARK: - life cycle -

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.logger info:@"View did load start"];
    
    [self.logger log:@"View did load succeed"];
}

- (void)viewWillAppear {
    [super viewWillAppear];
    [self.logger info:@"View will appear start"];
    //NSAssert(NO, @"Test assert");
    [self.logger log:@"View will appear succeed"];
}

@end
