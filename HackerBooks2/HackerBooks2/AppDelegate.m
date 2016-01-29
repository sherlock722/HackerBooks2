//
//  AppDelegate.m
//  HackerBooks2
//
//  Created by Javier Cazorla Moriche on 21/1/16.
//  Copyright © 2016 FJC. All rights reserved.
//

#import "AppDelegate.h"
#import "AGTCoreDataStack.h"
#import "FJCBook.h"
#import "FJCLibraryViewController.h"
#import "UIViewController+Navigation.h"

@interface AppDelegate ()
@property (strong, nonatomic) AGTCoreDataStack *model;

@end

@implementation AppDelegate


-(void) createDummyData {
    
    
    //Se crea una cola
    //dispatch_queue_t  download = dispatch_queue_create("descarga JSON", 0);
    
    
        //Se recupera la información de los libros del JSON
    
        NSError *error;
        NSString *filePath = [[NSBundle mainBundle] pathForResource:@"books_readable" ofType:@"json"];
    
        NSLog(@"1");
    
        NSData *myJSONData =[NSData dataWithContentsOfFile:filePath];
    
        /*if(error) {
            NSLog(@"Error reading file: %@", error.localizedDescription);
         }*/
        
        NSArray *arrayBooks = [NSJSONSerialization JSONObjectWithData:myJSONData options:0 error:&error];
    
         NSLog(@"2");
        
        for(NSDictionary *dictBook in arrayBooks){
            
            [FJCBook bookWithDictionary:dictBook
                              inContext:self.model.context];
            
            //NSLog(@"Carga de Libros con titulo %@",book.title);
            
        }
    
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // Inicializo el Stack de Core Data con el nombre del fichero del modelo
    self.model = [AGTCoreDataStack coreDataStackWithModelName:@"HackerBooks2Model"];
    
    
    //Se realiza la carga del JSON
    [self createDummyData];
    
    // Creo la window y tal y cual
    self.window = [[UIWindow alloc] initWithFrame:
                   [[UIScreen mainScreen] bounds]];
    
    // NSFetchRequest
    NSFetchRequest *r = [NSFetchRequest fetchRequestWithEntityName:[FJCBook entityName]];
    r.fetchBatchSize = 25;
    r.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:FJCBookAttributes.title ascending:YES selector:@selector(caseInsensitiveCompare:)],
                          [NSSortDescriptor sortDescriptorWithKey:FJCBookAttributes.lastRead
                                                        ascending:NO]];
    
    // NSFetchedResultsController
    NSFetchedResultsController *fc = [[NSFetchedResultsController alloc] initWithFetchRequest:r managedObjectContext:self.model.context sectionNameKeyPath:nil cacheName:nil];
    
    // El Controlador de tabla
    FJCLibraryViewController *bookVC = [[FJCLibraryViewController alloc]initWithFetchedResultsController:fc style:UITableViewStylePlain];
    

    self.window.rootViewController = [bookVC wrappedInNavigation];
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



@end
