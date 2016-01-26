//
//  UIViewController+Navigation.m
//  HackerBooks2
//
//  Created by Javier Cazorla Moriche on 26/1/16.
//  Copyright © 2016 FJC. All rights reserved.
//

#import "UIViewController+Navigation.h"

@implementation UIViewController (Navigation)

-(UINavigationController *) wrappedInNavigation{
    
    // Creamos el navigation controller
    UINavigationController *nav = [UINavigationController new];
    
    // le encasquetamos
    [nav pushViewController:self
                   animated:NO];
    
    // Lo devolvemos
    return nav;
}

@end
