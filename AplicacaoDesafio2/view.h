//
//  view.h
//  AplicacaoDesafio2
//
//  Created by Victor de Lima on 12/05/14.
//  Copyright (c) 2014 Victor de Lima. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface view : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *labelSlider;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UITextField *fone;

-(IBAction)atualizaHistorico:(id)fone andInfoSlider:(id) slider;

@end
