//
//  FontTest.h
//  Themoji
//
//  Created by MobileAge Team on 07/02/16.
//  Copyright © 2016 MobileAge Team. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>

@interface FontRendering : NSObject

+ (CTFontRef)highResolutionEmojiFontSize:(CGFloat)size;
+ (UIFont *)highResolutionEmojiUIFontSize:(CGFloat)size;
+ (UIImage *)render:(NSString *)emojiString size:(CGFloat)size;

@end
