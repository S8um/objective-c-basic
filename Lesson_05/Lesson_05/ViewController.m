//
//  ViewController.m
//  Lesson_05
//
//  Created by admin on 13.02.2021.
//

#import "ViewController.h"
#import "Calculate.h"
#import "Flock.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSLog(@"Task 1");
    
    float v1 = 2.4;
    float v2 = 0.6;
    float answer = -1;
    
    Calculate * calc = [[Calculate alloc] init];
    
    answer = [calc calculate:v1 execute:OperationAddition and:v2];
    NSLog(@"%2.2f + %2.2f = %2.2f", v1, v2, answer);
    
    answer = [calc calculate:v1 execute:OperationSubtraction and:v2];
    NSLog(@"%2.2f - %2.2f = %2.2f", v1, v2, answer);
    
    answer = [calc calculate:v1 execute:OperationMultiplication and:v2];
    NSLog(@"%2.2f * %2.2f = %2.2f", v1, v2, answer);
    
    answer = [calc calculate:v1 execute:OperationDivision and:v2];
    NSLog(@"%2.2f / %2.2f = %2.2f", v1, v2, answer);
    
    [calc release];
    NSLog(@"");
    
    
    NSLog(@"Task 2");
    
    Flock *flock = [[Flock alloc] init];
    
    Bird *bird1 = [[Bird alloc] init];
    Tail *tail1 = [[Tail alloc]initWithModel:@"long"];
    Wing *wing1r = [[Wing alloc] initWithNumber:@1];
    Wing *wing1l = [[Wing alloc] initWithNumber:@2];
    NSArray *wings1 = [[NSArray alloc] initWithObjects:wing1r, wing1l, nil];
    [bird1 createBirdWithWings:wings1 andTail:tail1 andNumber:@1];
    
    Bird *bird2 = [[Bird alloc] init];
    Tail *tail2 = [[Tail alloc]initWithModel:@"short"];
    Wing *wing2r = [[Wing alloc] initWithNumber:@1];
    Wing *wing2l = [[Wing alloc] initWithNumber:@2];
    NSArray *wings2 = [[NSArray alloc] initWithObjects:wing2r, wing2l, nil];
    [bird2 createBirdWithWings:wings2 andTail:tail2 andNumber:@2];
    
    NSArray *birds = [[NSArray alloc] initWithObjects:bird1, bird2, nil];
    
    [flock createWithBirds:birds];
    
    [flock release];
    
}

@end
