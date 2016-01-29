#import "_FJCBook.h"

@interface FJCBook : _FJCBook {}
// Custom logic goes here.



//Creo un inicializador de clase
/*+(instancetype) bookWithTitle:(NSString*) title
                     context:(NSManagedObjectContext *)context;*/

+(instancetype)bookWithTitle:(NSString*) title
                     authors:(NSArray*) authors
                        tags:(NSArray*) tags
                  coverPhoto:(FJCBookCoverPhoto*) bookCoverPhoto
                         pdf:(FJCPdf*) pdf
                     context:(NSManagedObjectContext*) context;


//Inicializador a partir de un diccionario
+(instancetype) bookWithDictionary:(NSDictionary *)aDict
                         inContext:(NSManagedObjectContext *) aContext;


+(id)uniqueObjectWithValue:(id)value
                    forKey:(NSString *)key
    inManagedObjectContext:(NSManagedObjectContext *)context;

@end
