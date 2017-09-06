//
//  YelpTableViewCell.m
//  YelpMock
//
//  Created by Sean on 8/29/17.
//  Copyright © 2017 Sean. All rights reserved.
//

#import "YelpTableViewCell.h"
#import <UIImageView+AFNetworking.h>

@interface YelpTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *restaurantImage;
@property (weak, nonatomic) IBOutlet UILabel *restaurantName;
@property (weak, nonatomic) IBOutlet UIImageView *ratingImage;
@property (weak, nonatomic) IBOutlet UILabel *review;
@property (weak, nonatomic) IBOutlet UILabel *dollarLabel;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *address;


@end

@implementation YelpTableViewCell

- (void)updateBasedOnDataModel:(YelpDataModel *)dataModel
{
    self.restaurantName.text = dataModel.name;
    [self.restaurantImage setImageWithURL:[NSURL URLWithString:dataModel.imageUrl]];
    self.ratingImage.image = dataModel.ratingImage;
    self.review.text = [NSString stringWithFormat:@"reviews %ld", dataModel.reviewCount];
    self.dollarLabel.text = dataModel.price;
    self.address.text = dataModel.displayAddress;
    self.category.text = dataModel.categories;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // here is for the cornered image
    self.restaurantImage.layer.cornerRadius = 5.0f;
    self.restaurantImage.layer.masksToBounds = YES;
}


@end
