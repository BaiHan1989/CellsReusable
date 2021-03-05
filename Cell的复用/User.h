//
//  User.h
//  Cell的复用
//
//  Created by 白晗 on 2021/3/5.
//

#import <Foundation/Foundation.h>
#import "TestCellConfigProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface User : NSObject <TestCellConfigProtocol>
@property (nonatomic, copy) NSString *nickName;
@property (nonatomic, copy) NSString *hobby;
@end

NS_ASSUME_NONNULL_END
