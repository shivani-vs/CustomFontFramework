//
//  CustomFont.m
//  CustomFontFramework
//
//  Created by VectoScalar on 6/10/16.
//  Copyright © 2016 VectoScalar. All rights reserved.
//

#import "CustomFont.h"
#import <CoreText/CoreText.h>

@implementation CustomFont

- (UIFont *)customfontName:(NSString *)fontName andSize:(CGFloat)fontSize{
    
    NSString* mainBundlePath = [[NSBundle mainBundle] resourcePath];
    NSString* frameworkBundlePath = [mainBundlePath stringByAppendingPathComponent:@"CustomFont"];
    
    
    NSString *fontPath = [[NSBundle bundleWithPath:frameworkBundlePath] pathForResource:fontName ofType:@"ttf"];
    NSData *inData = [NSData dataWithContentsOfFile:fontPath];
    
    CFErrorRef error;
    CGDataProviderRef provider = CGDataProviderCreateWithCFData((__bridge CFDataRef)inData);
    
    CGFontRef font = CGFontCreateWithDataProvider(provider);
    NSString *newFontName = (__bridge NSString *)CGFontCopyPostScriptName(font);
    
    if (! CTFontManagerRegisterGraphicsFont(font, &error)) {
        CFStringRef errorDescription = CFErrorCopyDescription(error);
        NSLog(@"Failed to load font: %@", errorDescription);
        CFRelease(errorDescription);
    }
    
    CFRelease(font);
    CFRelease(provider);
    
    UIFont *customFont = [UIFont fontWithName:newFontName size:fontSize];
    return customFont;

}
@end
