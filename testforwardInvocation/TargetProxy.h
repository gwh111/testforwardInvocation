//
//  TargetProxy.h
//  testforwardInvocation
//
//  Created by gwh on 2018/5/22.
//  Copyright © 2018年 gwh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TargetProxy : NSProxy {
    
}

@property (nonatomic,weak)id obj;

@end
