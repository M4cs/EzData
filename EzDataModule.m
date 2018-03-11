#import "EzDataModule.h"

@interface CTCellularData ()
+ (BOOL)CTCellularRestrictedState;
+ (void)CTCellularRestrictedState:(BOOL)arg1;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation EzDataModule
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor purpleColor];
}

- (BOOL)isSelected {
	if ([CTCellularData CTCellularRestrictedState]) {
		self.ezdata = TRUE;
	} else {
		self.ezdata = FALSE;
	}
	return self.ezdata;
}

- (void)setSelected:(BOOL)selected {
	if (CTCellularData CTCellularRestrictedState]) {
		[CTCellularData CTCellularRestrictedState]):FALSE];
		selected = FALSE;
	} else {
		[CTCellularData CTCellularRestrictedState]):TRUE];
		selected = TRUE;
	}
	self.ezlocation = selected;
	[super refreshState];
}
@end
