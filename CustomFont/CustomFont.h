//
//  CustomFont.h
//  CustomFontFramework
//
//  Created by VectoScalar on 6/10/16.
//  Copyright © 2016 VectoScalar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CustomFont : NSObject

- (UIFont *)customfontFromBundle:(NSString *)bundleName withFontName:(NSString *)fontName andSize:(CGFloat)fontSize;

@end
