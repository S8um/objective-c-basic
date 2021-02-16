//
//  Flock.h
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import <Foundation/Foundation.h>
#import "Bird.h"

NS_ASSUME_NONNULL_BEGIN

@interface Flock : NSObject

-(void)createWithBirds:(NSArray *)birds;

@property(nonatomic, strong) NSArray *birds;

@end

NS_ASSUME_NONNULL_END
