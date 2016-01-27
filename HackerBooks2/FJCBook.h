#import "_FJCBook.h"

@interface FJCBook : _FJCBook {}
// Custom logic goes here.



//Creo un inicializador de clase
+(instancetype) bookWithTitle:(NSString*) title
                     context:(NSManagedObjectContext *)context;


//Inicializador a partir de un diccionario
+(instancetype) bookWithDictionary:(NSDictionary *)aDict
                         inContext:(NSManagedObjectContext *) aContext;

@end
