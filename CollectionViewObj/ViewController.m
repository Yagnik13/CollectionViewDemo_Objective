//
//  ViewController.m
//  CollectionViewObj
//
//  Created by Yagnik on 21/02/17.
//  Copyright © 2017 Yagnik. All rights reserved.
//

#import "ViewController.h"
#import "patternViewCell.h"

@interface ViewController ()

@property (nonatomic,strong) NSArray *imagesArray;
@property NSInteger *width;
@property (nonatomic,strong) NSArray *strTitleArray;
@property (nonatomic, weak) NSArray *imageDict;



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imagesArray = @[@"Add_Loyalty_Points",@"bank",@"profile",@"View",@"notification",@"redemprion"];
    self.strTitleArray = @[@"Add_Loyalty_Points",@"bank",@"profile",@"View",@"notification",@"redemprion"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.imagesArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    patternViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellId" forIndexPath:indexPath];
   
    NSString *myPatternString = [self.imagesArray objectAtIndex:indexPath.row];
    cell.patternImageView.image = [UIImage imageNamed:myPatternString];
    
    NSString *lbl = [self.strTitleArray objectAtIndex:indexPath.row];
    cell.titleLable.text = lbl;
    return cell;
}

//-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
//    return CGSizeMake(150.0, 150.0);
//}

-(UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section{
    return UIEdgeInsetsMake(5,5,5,5);
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = (self.view.frame.size.width - 20 - (10 * 3)) / 2.0 ;
    return CGSizeMake(width, 100);
}


-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    //NSLog(@"%ld",(long)indexPath.row);
    NSIndexPath *obj = self.imagesArray[indexPath.row];
   // NSLog(@"%@", obj);
    
    [self performSegueWithIdentifier: obj sender: nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:@"Add_Loyalty_Points"])
    {
        ViewController *vc = [segue destinationViewController];
        vc.view.backgroundColor = [UIColor redColor];
    }
    
    if ([[segue identifier] isEqualToString:@"bank"])
    {
        ViewController *vc = [segue destinationViewController];
        vc.view.backgroundColor = [UIColor blackColor];
    }
    
    if ([[segue identifier] isEqualToString:@"profile"])
    {
        ViewController *vc = [segue destinationViewController];
        vc.view.backgroundColor = [UIColor blueColor];
    }
    
    if ([[segue identifier] isEqualToString:@"View"])
    {
        ViewController *vc = [segue destinationViewController];
        vc.view.backgroundColor = [UIColor brownColor];
    }
    
    if ([[segue identifier] isEqualToString:@"notification"])
    {
        ViewController *vc = [segue destinationViewController];
        vc.view.backgroundColor = [UIColor grayColor];
    }
    
    if ([[segue identifier] isEqualToString:@"redemprion"])
    {
        ViewController *vc = [segue destinationViewController];
        vc.view.backgroundColor = [UIColor magentaColor];
    }
}


@end
