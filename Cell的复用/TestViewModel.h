//
//  TestViewModel.h
//  Cell的复用
//
//  Created by 白晗 on 2021/3/5.
//

#import <Foundation/Foundation.h>
#import "TestCellConfigProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface TestViewModel : NSObject

@property (nonatomic, copy) NSString *leftContent;
@property (nonatomic, copy) NSString *rightContent;

- (void)setModel:(id <TestCellConfigProtocol>)model;

+ (NSArray *)getPersonModel;


+ (NSArray *)getUserModel;

@end

NS_ASSUME_NONNULL_END
