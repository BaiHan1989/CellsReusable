//
//  Person.h
//  Cell的复用
//
//  Created by 白晗 on 2021/3/5.
//

#import <Foundation/Foundation.h>
#import "TestCellConfigProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject <TestCellConfigProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *job;

@end

NS_ASSUME_NONNULL_END
