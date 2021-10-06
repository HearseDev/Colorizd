#include "Tweak.h"

%group Colorizd

%hook SBIconImageView
- (id)contentsImage {
    if (%orig){
        iconImage = %orig;
    }
	return %orig;
}
%end

//Hook for the SpringBoard Icons
%hook SBIconLabelImageParameters
- (id)font {
	return [UIFont fontWithName:@"HelveticaNeue" size:14.0];
}

- (BOOL)isColorspaceGrayscale {
	return NO;
}

- (id)textColor {
    Helper *help = [[Helper alloc]init];
    if (iconImage){
        
        return [help averageColorWithImage:iconImage];
    }
    return [help randomColor];
}
%end

//Multitask Hook
%hook SBFluidSwitcherItemContainerHeaderItem
-(id)titleTextColor{
    if (self.image){
        Helper *help = [[Helper alloc]init];
        return [help averageColorWithImage:self.image];
    }
    return %orig;
    
}
%end


%hook SBIconLegibilityLabelView
-(void)setImageParameters:(id)arg1{
	Helper *help = [[Helper alloc]init];
	self.layer.cornerRadius = 5;
	self.layer.masksToBounds = true;
	if (iconImage){
		self.backgroundColor = [help secondaryAverageColorWithImage:iconImage];
	}else {
		self.backgroundColor = [help randomColor];
	}
	
	return %orig;
}

%end

%end // Colorizd Group


%ctor {
    preferences = [[HBPreferences alloc] initWithIdentifier:@"im.hearse.colorizdprefs"];
    [preferences registerBool:&enabled default:YES forKey:@"enabled"];

    if ([preferences boolForKey:@"enabled"]) %init(Colorizd);
}