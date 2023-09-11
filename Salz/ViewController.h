#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
  
  IBOutlet UISlider *SalinitySlider;
  IBOutlet UILabel *SalinityValue;
  
  IBOutlet UISlider *TempSlider;
  IBOutlet UILabel *TempValue;
  
  IBOutlet UILabel *DensityValue;
  
  IBOutlet UILabel *ConductivityValue;
  
}

- (IBAction)CalcChanged:(id)sender;

@end
