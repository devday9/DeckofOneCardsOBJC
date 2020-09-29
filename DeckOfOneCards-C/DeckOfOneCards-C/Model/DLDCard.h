//
//  DLDCard.h
//  DeckOfOneCards-C
//
//  Created by Deven Day on 9/29/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DLDCard : NSObject

@property (nonatomic, copy, readonly) NSString *suit;
@property (nonatomic, copy) NSString *imageString;

- (instancetype)initWithCard:(NSString *)suit
                 imageString:(NSString *)imageString;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
