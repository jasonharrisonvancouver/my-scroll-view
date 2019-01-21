//
//  ViewController.m
//  MyScrollView
//
//  Created by jason harrison on 2019-01-21.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "MyViewController.h"
#import "MyScrollView.h"

@interface MyViewController ()
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panGestureRecognizer;
@property (weak, nonatomic) IBOutlet MyScrollView *containerView;

@end

@implementation MyViewController
- (IBAction)containerViewWasPanned:(UIPanGestureRecognizer *)sender {
    NSLog(@"panned");
    
    CGPoint translationInThisView = [sender translationInView:sender.view];
    // add the above, to the center of the view
    CGPoint oldCenter = sender.view.center;

 //   CGPoint newCenter = CGPointMake(oldCenter.x + translationInThisView.x,
 //                                   oldCenter.y + translationInThisView.y);
 //   sender.view.center = newCenter;
    // reset to zero
//    [sender setTranslation:CGPointZero inView:self.view];
    
    
    
    self.containerView.bounds = CGRectMake(oldCenter.x - translationInThisView.x, oldCenter.y - translationInThisView.y, self.containerView.bounds.size.width, self.containerView.bounds.size.height);

    
    
    NSLog(@"moved x amount:%f and y amount:%f", translationInThisView.x, translationInThisView.y);
}

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
