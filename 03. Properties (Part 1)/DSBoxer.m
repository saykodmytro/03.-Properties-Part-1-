//
//  DSBoxer.m
//  03. Properties (Part 1)
//
//  Created by Dmytro Sayko on 03.12.2020.
//

#import "DSBoxer.h"

@interface DSBoxer ()
@property(assign, nonatomic) NSInteger nameCount;

@end

@implementation DSBoxer
@synthesize name = _name;


- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nameCount = 0;
    }
    return self;
}

- (void) setName:(NSString *)name {
    NSLog(@"New name is Hack");
    _name = name;
}

 
 
- (NSString*) name {
    self.nameCount = self.nameCount + 1;
    //self.nameCount++;
    //self.nameCount += 1;
    NSLog(@"name getter is colled %ld times", self.nameCount);
    return _name;
}

- (NSInteger) age {
    NSLog(@"age getter is called");
    return _age;
}


- (NSInteger) howOldAreYou {
    return self.age;
}



@end
