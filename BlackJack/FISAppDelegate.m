//  FISAppDelegate.m

#import "FISAppDelegate.h"
#import "FISCard.h"
#import "FISCardDeck.h"
#import "FISBlackjackPlayer.h"
#import "FISBlackjackGame.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    FISBlackjackPlayer *Claire = [[FISBlackjackPlayer alloc] initWithName:@"Claire"];
    NSLog(@"This is the description before we've started the game: %@", Claire.description);
    
    FISCardDeck *deck = [[FISCardDeck alloc] init];
    [deck shuffleRemainingCards];
    [Claire acceptCard:[deck drawNextCard]];
    NSLog(@"This is the description after player has accepted first card: %@", Claire.description);
    
    FISBlackjackGame *game = [[FISBlackjackGame alloc] init];
    [game playBlackjack];
    [game playBlackjack];
    return YES;
}

@end
