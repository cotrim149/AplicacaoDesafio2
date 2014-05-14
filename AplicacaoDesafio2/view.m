//
//  view.m
//  AplicacaoDesafio2
//
//  Created by Victor de Lima on 12/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import "view.h"

@interface view ()

@end

@implementation view

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)sliderChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    int val = slider.value;
    self.labelSlider.text = [NSString stringWithFormat:@"%d",val]		;
}

int count = 0;
-(IBAction)atualizaHistorico:(id)foneField{
    
//    UITextField *textFieldfone= (UITextField *) fone;
//    UISlider *sliderIdade = (UISlider *) slider;
//        
    NSDate *now = [NSDate date];
    
    NSMutableString *dir = [[NSMutableString alloc] init];
    [dir appendString:@"/Users/cotrim/Desktop/historico.plist"];
    
    NSLog(@"%@",dir);
    
    NSMutableDictionary *historico;
    
    if (count == 0) {
        historico = [[NSMutableDictionary alloc] init];
        
        [historico setValue:now forKey:[NSString stringWithFormat:@"%d",count]];
        [historico writeToFile:dir atomically:YES];
    }else{
        historico = [[NSMutableDictionary alloc] initWithContentsOfFile:dir];
        
        [historico setValue:now forKey:[NSString stringWithFormat:@"%d",count]];
        [historico writeToFile:dir atomically:YES];
    }
    
    
    count++;
    
    NSLog(@"%@",historico);
    
}


- (BOOL) shouldAutorotate{
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
