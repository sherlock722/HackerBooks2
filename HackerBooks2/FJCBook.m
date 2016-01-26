#import "FJCBook.h"

@interface FJCBook ()

// Private interface goes here.

@end

@implementation FJCBook

// Custom logic goes here.


//Creo un inicializador de clase
+(instancetype) bookWithTitle:(NSString*) title
                     context:(NSManagedObjectContext *)context{
    
    
    //Uso el método insertInManagedObjectContext que se ha creado en el _FJCBook
    //la instancia creada estará vacia
    FJCBook *book = [self insertInManagedObjectContext:context];
    
    
    //Relleno los atributos
    book.title = title;
    book.creationBook = [NSDate date];
    book.modificationBook = [NSDate date];
    
    return book;

}


@end
