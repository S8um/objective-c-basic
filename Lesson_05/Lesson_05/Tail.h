//
//  Tail.h
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tail : NSObject

@property (nonatomic, strong) NSString *type;

- (instancetype) initWithModel:(NSString *)type;

@end

NS_ASSUME_NONNULL_END
