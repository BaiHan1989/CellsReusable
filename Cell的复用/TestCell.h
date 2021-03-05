//
//  TestCell.h
//  Cell的复用
//
//  Created by 白晗 on 2021/3/5.
//

#import <UIKit/UIKit.h>
#import "TestCellConfigProtocol.h"

@class TestViewModel;

NS_ASSUME_NONNULL_BEGIN

@interface TestCell : UITableViewCell

@property (nonatomic, strong) id <TestCellConfigProtocol> model;

//- (void)setModel:(id <TestCellConfigProtocol>)model;

- (void)setViewModel:(TestViewModel *)vm;

@end

NS_ASSUME_NONNULL_END
