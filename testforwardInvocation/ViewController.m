//
//  ViewController.m
//  testforwardInvocation
//
//  Created by gwh on 2018/5/22.
//  Copyright © 2018年 gwh. All rights reserved.
//

#import "ViewController.h"
#import "TargetProxy.h"

@interface ViewController ()

@property (nonatomic,strong)TargetProxy *proxy;
@property (nonatomic,strong)NSTimer *timer;
@property (nonatomic,assign)NSInteger count;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.proxy = [TargetProxy alloc];
    //作为当前控制器的代理
    self.proxy.obj = self;
    //target为代理
    self.timer = [NSTimer timerWithTimeInterval:1 target:self.proxy selector:@selector(timerEvent) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}

- (void)timerEvent{
    NSLog(@"%zd",self.count++);
}

- (void)dealloc{
    NSLog(@"----dealloc");
    //释放计时器
    [self.timer invalidate];
}


@end
