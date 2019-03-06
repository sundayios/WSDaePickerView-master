//
//  NSString+CBEMOEmoji.h
//  HuaDian
//
//  Created by cb_2018 on 2019/1/15.
//  Copyright © 2019 91cb. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ContainEMOEmoji)

/**
 Calculate the NSRange for every emoji on the string.
 
 @return array with the range for every emoji.
 */
- (NSArray *)emo_emojiRanges;

/**
 Calculate if the string has any emoji.
 
 @return YES if the string has emojis, No otherwise.
 */
- (BOOL)emo_containsEmoji;

/**
 Calculate if the string consists entirely of emoji.
 
 @return YES if the string consists entirely of emoji, No otherwise.
 */
- (BOOL)emo_isPureEmojiString;

/**
 Calculate number of emojis on the string.
 
 @return the total number of emojis.
 */
- (NSInteger)emo_emojiCount;


@end

NS_ASSUME_NONNULL_END
