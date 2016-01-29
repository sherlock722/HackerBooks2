//
//  FJCBookViewController.m
//  HackerBooks2
//
//  Created by Javier Cazorla Moriche on 29/1/16.
//  Copyright © 2016 FJC. All rights reserved.
//

#import "FJCBookViewController.h"

@interface FJCBookViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleView;
@property (weak, nonatomic) IBOutlet UILabel *modificationDateView;
@property (strong, nonatomic) FJCBook *model;

@end;


@implementation FJCBookViewController

#pragma mark - Initialization
-(id) initWithModel: (FJCBook*) model{
    
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = model;
    }
    return self;
    
}


#pragma mark - Life cycle
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // sincronizamos modelo -> vistas
    NSDateFormatter *fmt = [NSDateFormatter new];
    fmt.dateStyle = NSDateFormatterShortStyle;
    
    //self.titleView.title = [fmt stringFromDate:self.model.title];
    //self.lastRead.text = [fmt stringFromDate:self.model.lastRead];
    
}

-(void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    // sincronizamos vistas -> modelo
    //self.model.title = self.textView.text;
    //self.model.lastRead = self.nameView.text;
    
   
}







#pragma mark - Actions
/*- (IBAction)displayPhoto:(id)sender {
    
    KCGPhotoViewController *pVC = [[KCGPhotoViewController alloc] initWithModel:self.model];
    
    [self.navigationController pushViewController:pVC
                                         animated:YES];
    
}*/



@end
