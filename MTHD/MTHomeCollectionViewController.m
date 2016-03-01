//
//  MTHomeCollectionViewController.m
//  MTHD
//
//  Created by 刘畅 on 16/2/29.
//  Copyright © 2016年 LCfan. All rights reserved.
//

#import "MTHomeCollectionViewController.h"

@interface MTHomeCollectionViewController ()

@end

@implementation MTHomeCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

-(instancetype)init
{
    
    return [self initWithCollectionViewLayout:[[UICollectionViewFlowLayout alloc]init]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    self.collectionView.backgroundColor=MTGlobalBackgroundColor;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    [self setLeftItems];
    [self setRightItems];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)setRightItems
{
    UIBarButtonItem *search=[UIBarButtonItem itemWithTarget:nil action:nil imageForNormal:@"icon_map" imageForHighlighted:@"icon_map_highlighted"];
    UIBarButtonItem *map=[UIBarButtonItem itemWithTarget:nil action:nil imageForNormal:@"icon_search" imageForHighlighted:@"icon_search_highlighted"];
    self.navigationItem.rightBarButtonItems=@[map,search];
}

-(void)setLeftItems
{
    UIBarButtonItem *logo=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style:UIBarButtonItemStylePlain target:nil action:nil];
    logo.enabled=NO;
    
    MTNavigationTopItem *categoryItem=[MTNavigationTopItem item];
    UIBarButtonItem *category=[[UIBarButtonItem alloc]initWithCustomView:categoryItem];
    
    MTNavigationTopItem *districtItem=[MTNavigationTopItem item];
    UIBarButtonItem *district=[[UIBarButtonItem alloc]initWithCustomView:districtItem];
    
    
    MTNavigationTopItem *sortItem=[MTNavigationTopItem item];
    UIBarButtonItem *sort=[[UIBarButtonItem alloc]initWithCustomView:sortItem];
    

    
    self.navigationItem.leftBarButtonItems=@[logo,category,district,sort];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
