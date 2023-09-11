#import "ViewController.h"
#import "salt.h"

@interface ViewController ()

@end

@implementation ViewController


- (UIStatusBarStyle)preferredStatusBarStyle {
  return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad {
  [super viewDidLoad];
  
  [SalinitySlider setValue:34.801];
  [TempSlider setValue:25.001];
  [self CalcChanged:self];
}



- (IBAction)CalcChanged:(id)sender {

  double s=((int)([SalinitySlider value]*10.0))/10.0;
  double t=((int)([TempSlider value]*10.0))/10.0;
  double d = sal2dens(s,t,0);
  double c = sal2cond(s,t,0);
  
  [DensityValue setText:[NSString stringWithFormat:@"%.5f",d]];

  [ConductivityValue setText:[NSString stringWithFormat:@"%.2f",c]];
  
  [SalinityValue setText:[NSString stringWithFormat:@"%.1f",s]];
  [TempValue setText:[NSString stringWithFormat:@"%.1f",t]];

}

@end
