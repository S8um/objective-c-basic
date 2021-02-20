//
//  Bird.h
//  Lesson_05
//
//  Created by admin on 16.02.2021.
//

#import <Foundation/Foundation.h>
#import "Wing.h"
#import "Tail.h"


NS_ASSUME_NONNULL_BEGIN

@interface Bird : NSObject

- (void)createBirdWithWings:(NSArray *)wings andTail:(Tail *) tail andNumber:(NSNumber *)number;

@property (nonatomic, strong) Tail *tail;
@property (nonatomic, strong) NSArray *wings;
@property (nonatomic, strong) NSNumber *number;

@end

NS_ASSUME_NONNULL_END
