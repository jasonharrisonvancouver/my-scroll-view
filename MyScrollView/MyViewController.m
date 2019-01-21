//
//  ViewController.m
//  MyScrollView
//
//  Created by jason harrison on 2019-01-21.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   
    
    
    
    /*
    Move the origin of the bounds of your root view down 100 point in the y direction, you should now see part of the yellow box. (Hint: Do this in viewDidAppear)
 */
}

- (void)viewDidAppear:(BOOL)animated{

    
    self.containerView.bounds = CGRectMake(0, 100, self.containerView.bounds.size.width, self.containerView.bounds.size.height);

    
}





@end
