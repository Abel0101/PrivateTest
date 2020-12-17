//
//  Person.h
//  PodDemo
//
//  Created by Abel on 2019/6/15.
//  Copyright © 2019年 Abel. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<NSCopying, NSCoding>
@property (nonatomic, copy) NSString *name;



- (Person * (^)(NSString * _Nonnull))say;

- (Person * (^)(NSString * _Nonnull))doSomething;

@end

NS_ASSUME_NONNULL_END
