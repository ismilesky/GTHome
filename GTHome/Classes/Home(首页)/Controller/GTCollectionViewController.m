//
//  GTCollectionViewController.m
//  GTPageController
//

//

#import "GTCollectionViewController.h"
#import "GTImageViewCell.h"
@interface GTCollectionViewController ()

@property (nonatomic, strong) NSArray *imageNames;

@end

@implementation GTCollectionViewController

static NSString * const reuseIdentifier = @"GTCollectionCell";

- (instancetype)init{
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    flow.minimumLineSpacing = 1;
    flow.minimumInteritemSpacing = .1;
    CGFloat width = [[UIScreen mainScreen] bounds].size.width / 4 - 3*0.1;
    flow.itemSize = CGSizeMake(width,width);
    self = [self initWithCollectionViewLayout:flow];
    if (self) {
        // insert code here...
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageNames = @[@"h1.jpg",@"h2.jpg",@"h3.jpg"];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerClass:[GTImageViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
    NSLog(@"%@ destroyed",[self class]);
}

#pragma mark <UICollectionViewDataSource>
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 100;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    GTImageViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    NSInteger i = indexPath.row % self.imageNames.count;
    NSString *imageName = self.imageNames[i];
    cell.imageView.image = [UIImage imageNamed:imageName];
    return cell;
}
@end
