//
//  ViewController.m
//  ImageCropping
//
//  Created by BuzzLightYear23 on 16/2/29.
//  Copyright © 2016年 Irving. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+UIImage_Image.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //图片剪裁
    UIImage *image =[UIImage imageWithImage:[UIImage imageNamed:@"me"] borderWidth:2 borderColor:[UIColor redColor]];
    
    _imageView.image = image;
  
}



@end
