#import "_FJCBook.h"

@interface FJCBook : _FJCBook {}
// Custom logic goes here.



//Creo un inicializador de clase
+(instancetype) bookWithTitle:(NSString*) title
                     context:(NSManagedObjectContext *)context;

@end
