//
//  TestViperToDoTableViewCell.m
//  TestViper01
//
//  Created by Andres Tello on 12/22/16.
//  Copyright © 2016 Andres Tello. All rights reserved.
//

#import "TestViperToDoTableViewCell.h"

@interface TestViperToDoTableViewCell()
@property(nonatomic, assign) BOOL didUpdateConstraints;

- (void) applyConstraints;

@end

@implementation TestViperToDoTableViewCell

#pragma mark - Lifecycle
- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self setNeedsUpdateConstraints];
    }
    return self;
}

#pragma mark - UIView Override
- (void) updateConstraints {
    if (!self.didUpdateConstraints) {
        self.didUpdateConstraints = YES;
        [self applyConstraints];
    }
    [super updateConstraints];
}

#pragma mark - Internal
/**
 * This method is intended to be overriden by the subclass.
 */
- (void) applyConstraints {
    [self doesNotRecognizeSelector:_cmd];
}

@end
