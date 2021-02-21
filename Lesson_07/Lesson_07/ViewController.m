//
//  ViewController.m
//  Lesson_07
//
//  Created by admin on 22.02.2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Path for storage plist
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    path = [path stringByAppendingString:@"/user.plist"];
    NSLog(@"%@", path);
    
    NSArray *elements;
    
    // Write to plist
    elements = [NSArray arrayWithObjects:@"Sergey", @"Ivanov", @"ivanov@mail.ru", @8698, @true, nil];
    [elements writeToFile:path atomically:YES];
    
    // Read from plist
    elements = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"%@", elements);
}


@end
