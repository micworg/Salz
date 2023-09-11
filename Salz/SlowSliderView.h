#import <UIKit/UIKit.h>
#import "ViewController.h"

#define GEAR 3

@interface SlowSliderView : UIView {
  CGPoint loca,locb;
  double ov,nv;
  
  IBOutlet UISlider *S;
  IBOutlet ViewController *VC;
}

@end
