#import "SlowSliderView.h"
#import "ViewController.h"

@implementation SlowSliderView

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  loca=[[[[event allTouches] allObjects]objectAtIndex:0] locationInView:self];
  ov=[S value];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
  locb=[[[[event allTouches] allObjects]objectAtIndex:0] locationInView:self];
  CGRect rect=[self frame];
    
  nv=ov+((locb.x-loca.x)/rect.size.width*GEAR);
  
  [S setValue:nv];
  [VC CalcChanged:self];
}

@end
