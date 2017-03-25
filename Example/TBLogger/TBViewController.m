//
//  TBViewController.m
//  TBLogger
//
//  Created by truebucha on 03/25/2017.
//  Copyright (c) 2017 truebucha. All rights reserved.
//

#import "TBViewController.h"
#import <TBLogger/TBLogger.h>

@interface TBViewController ()

@end

@implementation TBViewController

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

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    [self.logger info:@"View will appear start"];
    //NSAssert(NO, @"Test assert");
    [self.logger log:@"View will appear succeed"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    [self.logger warning:@"View did received mamory warning"];
    // Dispose of any resources that can be recreated.
}

@end
