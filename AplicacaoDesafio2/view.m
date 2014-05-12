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
    
    [self sliderChanged:_slider];
}

- (IBAction)sliderChanged:(id)sender
{
    UISlider *slider = (UISlider *)sender;
    int val = slider.value;
    self.labelSlider.text = [NSString stringWithFormat:@"%d",val]		;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
