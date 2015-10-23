//
//  GTLoopView.h
//  GTLoopView
//
//

#import <UIKit/UIKit.h>
@class GTLoopView;
@protocol GTLoopViewDelegate <NSObject>
@optional
- (void)loopViewDidSelectedImage:(GTLoopView *)loopView index:(int)index;
@end

@interface GTLoopView : UIView
@property (nonatomic, weak) id<GTLoopViewDelegate> delegate;
@property (nonatomic, assign) BOOL autoPlay;
@property (nonatomic, assign) NSTimeInterval timeInterval;
@property (nonatomic, strong) NSArray *images;

- (id)initWithFrame:(CGRect)frame images:(NSArray *)images autoPlay:(BOOL)isAuto delay:(NSTimeInterval)timeInterval;
@end
