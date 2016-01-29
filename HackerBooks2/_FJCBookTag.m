// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to FJCBookTag.m instead.

#import "_FJCBookTag.h"

const struct FJCBookTagAttributes FJCBookTagAttributes = {
	.name = @"name",
};

const struct FJCBookTagRelationships FJCBookTagRelationships = {
	.book = @"book",
	.tag = @"tag",
};

@implementation FJCBookTagID
@end

@implementation _FJCBookTag

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"BookTag" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"BookTag";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"BookTag" inManagedObjectContext:moc_];
}

- (FJCBookTagID*)objectID {
	return (FJCBookTagID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic name;

@dynamic book;

@dynamic tag;

@end

