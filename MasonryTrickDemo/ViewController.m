//
//  ViewController.m
//  MasonryTrickDemo
//
//  Created by sunyazhou on 2020/4/7.
//  Copyright © 2020 www.sunyazhou.com. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *subViewA;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.subViewA mas_makeConstraints:^(MASConstraintMaker *make) {
//        if (@available(iOS 11.0, *)) {
//            make.top.equalTo(self.view.mas_safeAreaLayoutGuideTop);
//            make.left.equalTo(self.view.mas_safeAreaLayoutGuideLeft);
//            make.bottom.equalTo(self.view.mas_safeAreaLayoutGuideBottom);
//            make.right.equalTo(self.view.mas_safeAreaLayoutGuideRight);
//        } else {
            make.top.equalTo(self.mas_topLayoutGuide);
            make.left.right.equalTo(self.view);
            make.bottom.equalTo(self.mas_bottomLayoutGuide);
//        }
    }];
}


@end
