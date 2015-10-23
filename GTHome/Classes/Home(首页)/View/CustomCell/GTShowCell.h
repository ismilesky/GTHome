//
//  GTShowCell.h
//  GTHome
//
//  Created by VS on 15/10/23.
//  Copyright © 2015年 kf. All rights reserved.
//

#import <UIKit/UIKit.h>
@class GTShowCell;

// 协议方法
@protocol GTShowCellDelegate <NSObject>

@optional
- (void)attentionButton:(GTShowCell *)showCell button:(UIButton *)button;

@end


@interface GTShowCell : UITableViewCell

// 代理
@property (weak, nonatomic) id<GTShowCellDelegate> delegate;

/**
 * 类方法创建cell
 */
+ (instancetype)showCellWithTableView:(UITableView *)tableView;

@end
