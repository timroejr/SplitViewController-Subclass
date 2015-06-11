//
//  SplitViewTestViewController.m
//  Split Test
//
//  Created by Timothy Roe Jr. on 6/11/15.
//  Copyright (c) 2015 Timothy Roe, Jr.
//  THIS SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTAY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NO LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONIFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OR CONTRACT, TORT, OR TOHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "SplitViewTestViewController.h"

@interface SplitViewTestViewController ()

@end

@implementation SplitViewTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidLayoutSubviews {
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    const CGFloat kMasterViewWidth = screenRect.size.width/2;
    UIViewController *masterViewController = [self.viewControllers objectAtIndex:0];
    UIViewController *detailViewController = [self.viewControllers objectAtIndex:1];
    if (detailViewController.view.frame.origin.x > 0.0) {
        CGRect masterViewFrame = masterViewController.view.frame;
        CGFloat deltaX = masterViewFrame.size.width - kMasterViewWidth;
        masterViewFrame.size.width -= deltaX;
        masterViewController.view.frame = masterViewFrame;
        
        CGRect detailViewFrame = detailViewController.view.frame;
        detailViewFrame.origin.x -= deltaX;
        detailViewFrame.size.width += deltaX;
        detailViewController.view.frame = detailViewFrame;
        
        [masterViewController.view setNeedsLayout];
        [detailViewController.view setNeedsLayout];
    }
    
    
}


@end
