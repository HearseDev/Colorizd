#import <Preferences/PSListController.h>
#import <Cephei/HBRespringController.h>

@interface COPRootListController : PSListController
@property (nonatomic, retain) UIBarButtonItem *respringButton;
@property (nonatomic, retain) UILabel *titleLabel;
-(void)respring;
@end
