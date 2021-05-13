//
//  BirdViewController.m
//  BirdShop
//
//  Created by Dan Jiang on 2021/5/13.
//

#import "BirdViewController.h"

@interface BirdViewController ()

@end

@implementation BirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    UIImage *image = [self imageWithName:@"bird.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    CGRect imageViewFrame = imageView.frame;
    imageViewFrame.origin.x = (self.view.frame.size.width - image.size.width) / 2.0;
    imageViewFrame.origin.y = (self.view.frame.size.height - image.size.height) / 2.0;
    imageView.frame = imageViewFrame;
    [self.view addSubview:imageView];
}

- (UIImage *)imageWithName:(NSString *)name {
    NSBundle *bundle = [NSBundle bundleForClass:BirdViewController.class];
    NSURL *url = [bundle URLForResource:@"BirdShop" withExtension:@"bundle"];
    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
    return [UIImage imageNamed:name inBundle:imageBundle compatibleWithTraitCollection:nil];
}


@end
