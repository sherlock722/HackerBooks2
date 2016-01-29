#import "FJCPdf.h"
#import "FJCBook.h"

@interface FJCPdf ()

// Private interface goes here.

@end

@implementation FJCPdf

//Creo un inicializador de clase
/*+(instancetype) pdfWithTitle:(NSData*) pdf
                         url:(NSString*)urlString
                        book:(FJCBook*) book
                     context:(NSManagedObjectContext *)context{
    
    
    //Uso el método insertInManagedObjectContext que se ha creado en el _FJCBook
    //la instancia creada estará vacia
    FJCPdf * pdfData = [self insertInManagedObjectContext:context];
    
    
    //Relleno los atributos
    pdfData.pdfData = pdf;
    pdfData.urlString=urlString;
    pdfData.book=book;
    
    
    return pdfData;
    
}*/


@end
