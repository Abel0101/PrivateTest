//
//  Person.m
//  PodDemo
//
//  Created by Abel on 2019/6/15.
//  Copyright © 2019年 Abel. All rights reserved.
//

#import "Person.h"

@interface Person () {
    NSString *_nameA;
}

- (void)nihaoya;

@end

@implementation Person



//- (instancetype)initWithCoder:(NSCoder *)aDecoder {
//    
//}

- (id)copyWithZone:(NSZone *)zone {
    Person *person = [[[self class] alloc] init];
    person.name = self.name;
    return person;
}

- (void)setNameA:(NSString *)nameA {
    _nameA = nameA;
}

- (void)setName:(NSString *)name {
    _name = name;
}


- (Person * _Nonnull (^)(NSString * _Nonnull))say {
    Person *(^personBlock)(NSString *) = ^ (NSString *say) {
        NSLog(@"%@",say);
        return self;
    };
    return personBlock;
}

- (Person * _Nonnull (^)(NSString * _Nonnull))doSomething {
    return ^(NSString *something) {
        NSLog(@"%@",something);
        return self;
    };
}


@end
