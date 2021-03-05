//
//  TestCell.m
//  Cell的复用
//
//  Created by 白晗 on 2021/3/5.
//

#import "TestCell.h"
#import "TestViewModel.h"

@interface TestCell ()
@property (weak, nonatomic) IBOutlet UILabel *leftLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;
@end

@implementation TestCell


//- (void)setModel:(id<TestCellConfigProtocol>)model {
//    self.leftLabel.text = model.leftContent;
//    self.rightLabel.text = model.rightContent;
//}

- (void)setViewModel:(TestViewModel *)vm {
    self.leftLabel.text = vm.leftContent;
    self.rightLabel.text = vm.rightContent;
}

//- (void)setModel:(id<TestCellConfigProtocol>)model {
//    _model = model;
//
//    self.leftLabel.text = model.leftContent;
//    self.rightLabel.text = model.rightContent;
//}
@end
