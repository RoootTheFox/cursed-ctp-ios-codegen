#import <CoreGraphics/CoreGraphics.h>
#import "tools/UIColor.h"
#include <stdio.h>
#import "UIColor+Utility.m"
#import "gen.m"

int main(int argc, char *argv[], char *envp[]) {
	printAllColorsMeow();
	//NSLog(@"red %@", [UIColor _controlShadowColor]);
	//NSLog(@"red %@", [[UIColor _controlShadowColor] representInHex]);
	@autoreleasepool {
		printf("all done!\n");
		return 0;
	}
}
