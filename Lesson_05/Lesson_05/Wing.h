//
//  Wing.h
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Wing : NSObject

@property(nonatomic, strong) NSNumber *number;

-(instancetype)initWithNumber:(NSNumber *)number;

@end

NS_ASSUME_NONNULL_END
