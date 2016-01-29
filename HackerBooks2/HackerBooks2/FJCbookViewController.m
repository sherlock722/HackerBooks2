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
    
    //Diseño de la celda
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"cell_bg.png"]];
    cell.textLabel.backgroundColor = [UIColor clearColor];
    cell.detailTextLabel.backgroundColor = [UIColor clearColor];
    cell.backgroundColor= [UIColor magentaColor];
    
    // Sincronizar libro y celda
    cell.textLabel.text = book.title;
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateStyle = NSDateFormatterShortStyle;
    
    cell.detailTextLabel.text = [fmt stringFromDate:book.lastRead];
    
    /*NSURL *url = [NSURL URLWithString:@"https://www.google.es/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiJ8LCCmcvKAhUKVhoKHUVdBvYQjRwIBw&url=http%3A%2F%2Fwww.javajan.com%2Fnews.php%3Fid%3D1379-rssidioma%3D3&psig=AFQjCNGpJokIqX4GDaqi0wTzxz2L7107TA&ust=1454025439004704"];
    
    NSString *newIMAGE = [[NSString alloc] initWithContentsOfURL:url
                                                        encoding:NSUTF8StringEncoding error:nil];
    
    cell.imageView.image = [UIImage imageNamed:newIMAGE];*/
    
    
    //cell.imageView.image
    
    // Devolvemos la celda
    return cell;
}



@end
