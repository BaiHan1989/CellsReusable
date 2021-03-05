//
//  TestViewModel.m
//  Cell的复用
//
//  Created by 白晗 on 2021/3/5.
//

#import "TestViewModel.h"
#import "Person.h"
#import "User.h"

@implementation TestViewModel

- (void)setModel:(id <TestCellConfigProtocol>)model {
    self.leftContent = model.leftContent;
    self.rightContent = model.rightContent;
}

+ (NSArray *)getPersonModel {
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSInteger i = 0; i < 3; i++) {
        Person *p = [[Person alloc] init];
        p.name = [NSString stringWithFormat:@"张%ld", (long)i];
        p.job = @"开发";
        [tempArray addObject:p];
    }
    return [tempArray copy];
}

+ (NSArray *)getUserModel {
    NSMutableArray *tempArray = [NSMutableArray array];
    for (NSUInteger i = 0; i < 4; i++) {
        User *user = [[User alloc] init];
        user.nickName = [NSString stringWithFormat:@"狗%lu", (unsigned long)i];
        user.hobby = @"唱跳rap";
        [tempArray addObject:user];
    }
    
    return [tempArray copy];
}
@end
