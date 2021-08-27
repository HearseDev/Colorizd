#include <colorizd-Swift.h>

static UIImage *iconImage;
@interface SBIconImageView
@end

@interface SBHIconTableViewCell : UITableViewCell
-(id)iconNameLabel;
@end

@interface SBIconLegibilityLabelView : UIView
@end

@interface SBFluidSwitcherItemContainerHeaderItem : NSObject
@property (nonatomic, strong, readwrite) UIImage *image;
-(id)image;
-(id)titleTextColor;
@end

