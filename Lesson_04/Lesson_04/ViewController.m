//
//  ViewController.m
//  Leeson_04
//
//  Created by admin on 08.02.2021.
//

#import "ViewController.h"
#import "Student.h"
#import "Bachelor.h"
#import "Physics.h"
#import "Chemistry.h"
#import "Mathematics.h"
#import "NSNumber+toString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Student *student1 = [[Student alloc]initWithName: @"Петр" andSurname: @"Петров" andAge: 19];
    NSLog(@"%@", [student1 description]);
    
    student1.name = @"Иван";
    student1.surname = @"Иванов";
    [student1 setAge:23];
    NSLog(@"%@", [student1 description]);
    
    Bachelor *student2 = [[Bachelor alloc]initWithName:@"Максим" andSurname:@"Сидоров" andAge:25];
    student2.specialization = @"Архитектура";
    NSLog(@"%@", [student2 description]);
    
    
    //https://base.garant.ru/70480868/53f89421bbdaf741eb2d1ecc4ddb4c33/
    
    Mathematics *math1 = [[Mathematics alloc] init];
    math1.code = @"01.03.04";
    math1.name = @"Прикладная математика";
    math1.type = SpecializationTypeMathematics;
    [math1 print];
    
    Mathematics *math2 = [[Mathematics alloc] init];
    math2.code = @"01.03.05";
    math2.name = @"Статистика";
    math2.type = SpecializationTypeMathematics;
    [math2 print];
    
    Physics *phys1 = [[Physics alloc] init];
    phys1.code = @"03.03.03";
    phys1.name = @"Радиофизика";
    phys1.type = SpecializationTypePhysics;
    [phys1 print];
    
    Chemistry *chem1 = [[Chemistry alloc] init];
    chem1.code = @"04.03.01";
    chem1.name = @"Химия";
    chem1.type = SpecializationTypeChemistry;
    [chem1 print];
    
    NSNumber *number = @12345;
    NSString *string = [number toString];
    NSLog(@"Result %@", string);
}

@end
