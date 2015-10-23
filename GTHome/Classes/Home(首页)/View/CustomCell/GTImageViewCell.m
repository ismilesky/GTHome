//
//  GTImageViewCell.m
//  GTPageController
//
//

#import "GTImageViewCell.h"

@interface GTImageViewCell ()
@end

@implementation GTImageViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIImageView *imageView = [[UIImageView alloc] init];
        [self addSubview:imageView];
        self.imageView = imageView;
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.imageView.frame = self.bounds;
}

@end
