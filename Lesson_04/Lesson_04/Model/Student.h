//
//  Student.h
//  Leeson_04
//
//  Created by admin on 08.02.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (readonly, nonatomic) NSInteger age;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *surname;
@property (readonly, strong, nonatomic) NSString *fullName;

- (instancetype)initWithName: (NSString *) name andSurname: (NSString *) surname andAge: (NSInteger) age;
- (void) setAge:(NSInteger)age;

@end

NS_ASSUME_NONNULL_END
