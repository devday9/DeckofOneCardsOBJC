//
//  DLDCardController.h
//  DeckOfOneCards-C
//
//  Created by Deven Day on 9/29/20.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DLDCard.h"

NS_ASSUME_NONNULL_BEGIN

@interface DLDCardController : NSObject

+ (void)drawANewCard:(NSInteger )numberOfCards completion:(void(^) (NSArray<DLDCard *> *_Nullable cards))completion;

+ (void)fetchCardImage:(DLDCard *)card completion:(void(^) (UIImage *_Nullable image))completion;

@end

NS_ASSUME_NONNULL_END
