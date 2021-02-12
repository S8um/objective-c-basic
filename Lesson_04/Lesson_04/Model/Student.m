//
//  Student.m
//  Leeson_04
//
//  Created by admin on 08.02.2021.
//

#import "Student.h"

@implementation Student

- (instancetype)initWithName: (NSString *) name andSurname: (NSString *) surname andAge: (NSInteger) age
{
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
        _age = age;
    }
    [self print];
    return self;
}

- (NSString *) fullName {
    return [NSString stringWithFormat:@"%@ %@", _name, _surname];
}

- (void) setAge:(NSInteger)age {
    _age = age;
}

- (NSString *) description {
    return [NSString stringWithFormat: @"%@ - %ld", self.fullName, (long)self.age];
}

- (void) print {
    NSLog(@"Создан: %@ %@ %ld", self.name, self.surname, self.age);
}

@end
