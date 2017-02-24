//
//  ViewController.h
//  CollectionViewObj
//
//  Created by Yagnik on 21/02/17.
//  Copyright © 2017 Yagnik. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate>

@property (nonatomic,weak) IBOutlet UICollectionView *myCollectionView;

@end

