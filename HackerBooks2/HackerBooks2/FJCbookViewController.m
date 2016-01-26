//
//  FJCbookViewController.m
//  HackerBooks2
//
//  Created by Javier Cazorla Moriche on 26/1/16.
//  Copyright © 2016 FJC. All rights reserved.
//

#import "FJCbookViewController.h"
#import "FJCBook.h"

@implementation FJCbookViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"HackerBooks2";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID = @"NotebookCell";
    
    // Averiguar qué libro es
     FJCBook *book = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    // Crear la celda
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        // Creamos la celda de la nada
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    // Sincronizar libro y celda
    cell.textLabel.text = book.title;
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateStyle = NSDateFormatterShortStyle;
    cell.detailTextLabel.text = [fmt stringFromDate:book.modificationBook];
    
    
    // Devolvemos la celda
    return cell;
}



@end
