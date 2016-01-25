// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCAnotationPhoto.m instead.

#import "_FJCAnotationPhoto.h"

const struct FJCAnotationPhotoAttributes FJCAnotationPhotoAttributes = {
	.photoData = @"photoData",
	.text = @"text",
};

const struct FJCAnotationPhotoRelationships FJCAnotationPhotoRelationships = {
	.book = @"book",
};

@implementation FJCAnotationPhotoID
@end

@implementation _FJCAnotationPhoto

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"AnotationPhoto" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"AnotationPhoto";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"AnotationPhoto" inManagedObjectContext:moc_];
}

- (FJCAnotationPhotoID*)objectID {
	return (FJCAnotationPhotoID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic photoData;

@dynamic text;

@dynamic book;

@end

