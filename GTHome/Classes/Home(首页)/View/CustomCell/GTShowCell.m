//
//  GTShowCell.m
//  GTHome
//
//  Created by VS on 15/10/23.
//  Copyright © 2015年 kf. All rights reserved.
//

#import "GTShowCell.h"

@interface GTShowCell ()

@property (weak, nonatomic) IBOutlet UIImageView *userIcon;
@property (weak, nonatomic) IBOutlet UIButton *attentionBtn;
@property (weak, nonatomic) IBOutlet UIImageView *showImg;

@end

@implementation GTShowCell

- (void)awakeFromNib {
    // Initialization code
    
    self.userIcon.layer.cornerRadius = self.userIcon.frame.size.width / 2;
    self.userIcon.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+ (instancetype)showCellWithTableView:(UITableView *)tableView
{
    GTShowCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GTCell"];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"GTShowCell" owner:nil options:nil] lastObject];
    }
    return cell;
}

- (IBAction)attentionFunction:(UIButton *)sender {
    if ([self.delegate respondsToSelector:@selector(attentionButton:button:)]) {
        [self.delegate attentionButton:self button:sender];
    }
}


@end
