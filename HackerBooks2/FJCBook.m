#import "FJCBook.h"
#import "FJCPdf.h"
#import "FJCBookCoverPhoto.h"
#import "FJCAnotation.h"
#import "FJCAuthor.h"
#import "FJCBookTag.h"

@interface FJCBook ()

// Private interface goes here.

@end

@implementation FJCBook

// Custom logic goes here.


//Creo un inicializador de clase
/*+(instancetype) bookWithTitle:(NSString*) title
                     context:(NSManagedObjectContext *)context{
    
    
    //Uso el método insertInManagedObjectContext que se ha creado en el _FJCBook
    //la instancia creada estará vacia
    FJCBook *book = [self insertInManagedObjectContext:context];
    
    //Fault
    

    //Relleno los atributos
    
    book.title = title;
    book.lastRead = [NSDate date];
    book.pdf=[FJCPdf insertInManagedObjectContext:context];
    book.bookCoverPhoto=[FJCBookCoverPhoto insertInManagedObjectContext:context];
    book.anotations = [FJCAnotation insertInManagedObjectContext:context];
    book.authors = [FJCAuthor insertInManagedObjectContext:context];
    book.bookTags = [FJCBookTag insertInManagedObjectContext:context];
    
    
    return book;

}*/

+(instancetype)bookWithTitle:(NSString*) title
                     authors:(NSArray*) authors
                        tags:(NSArray*) tags
                  coverPhoto:(FJCBookCoverPhoto*) bookCoverPhoto
                         pdf:(FJCPdf*) pdf
                     context:(NSManagedObjectContext*) context{
    
    FJCBook *b = [FJCBook uniqueObjectWithValue:title
                                         forKey:FJCBookAttributes.title
                         inManagedObjectContext:context];
    
    // Como muchas de las propiedades de Book son readonly desde fuera
    // (realmente no se van a cambiar una vez creado) y NO estamos en
    // la instancia, sino en la clase, nos toca usar KVC
    [b setValue:title
         forKey:FJCBookAttributes.title];
    
    [b setValue:bookCoverPhoto
         forKey:FJCBookRelationships.bookCoverPhoto];
    
    [b setValue:pdf
         forKey:FJCBookRelationships.pdf];
    
    
    // Para las propiedades "a muchos" MoGenerator me genera unos métods
    // que aceptan NSSets. Convierto los arrays en NSSets
    //[b addAuthors:[NSSet setWithArray:authors]];
    
    
    
    // Tengo un array de Tags que tengo que convertir en un
    // array de BookTags y luego en un NSSet
    
    /*NSArray *bookTags = [tags arrayWithMappingBlock:^id(id element) {
        return [FJCBookTag bookTagWithBook:b
                                       tag:element
                                   context:context];
    }];*/
    
    //[b addBookTags:[NSSet setWithArray:bookTags]];
    
    
    return b;
    
}

+(instancetype) bookWithDictionary:(NSDictionary *)aDict
                         inContext:(NSManagedObjectContext *) aContext{
    
    return [self bookWithTitle:[aDict objectForKey:@"title"]
                       authors:[aDict objectForKey:@"authors"]
                          tags:[aDict objectForKey:@"tags"]
                    coverPhoto:[FJCBookCoverPhoto insertInManagedObjectContext:aContext]
                           pdf:[FJCPdf insertInManagedObjectContext:aContext]
                       context:aContext];
    
}


+(id)uniqueObjectWithValue:(id)value
                    forKey:(NSString *)key
    inManagedObjectContext:(NSManagedObjectContext *)context{
    // Nos aseguramos que el contexto no sea nil para evitar errores
    // chorras
    NSParameterAssert(context);
    // Buscamos un objeto que tenga el valor único para la propiedad
    // especificada
    NSFetchRequest *req = [NSFetchRequest
                           fetchRequestWithEntityName:[self entityName]];
    req.predicate = [NSPredicate predicateWithFormat:
                     [key stringByAppendingString:@" == %@"], value];
    req.fetchLimit = 1;
    // Hacemos la búsqueda
    NSError *err;
    NSArray *objs = [context executeFetchRequest:req
                                           error:&err];
    if (!objs) {
        // error
        NSLog(@"Error searching for %@s with a key = %@ and value = %@\n\n%@\n%@",
              [self entityName], key, value, err, err.userInfo );
        return nil;
    }
    NSManagedObject * obj = [objs lastObject];
    if (!obj) {
        // No habia nada y hay que crear
        obj = [NSEntityDescription insertNewObjectForEntityForName:[self entityName]
                                            inManagedObjectContext:context];
        [obj setValue:value
               forKey:key];
    }
    return obj;
}


@end
