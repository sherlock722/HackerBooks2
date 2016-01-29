// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBookCoverPhoto.m instead.

#import "_FJCBookCoverPhoto.h"

const struct FJCBookCoverPhotoAttributes FJCBookCoverPhotoAttributes = {
	.photoCover = @"photoCover",
	.remoteURLString = @"remoteURLString",
};

const struct FJCBookCoverPhotoRelationships FJCBookCoverPhotoRelationships = {
	.book = @"book",
};

@implementation FJCBookCoverPhotoID
@end

@implementation _FJCBookCoverPhoto

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BookCoverPhoto" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BookCoverPhoto";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BookCoverPhoto" inManagedObjectContext:moc_];
}

- (FJCBookCoverPhotoID*)objectID {
	return (FJCBookCoverPhotoID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic photoCover;

@dynamic remoteURLString;

@dynamic book;

@end

