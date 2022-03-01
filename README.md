curious about why most error messages always in raw string in their respective requires.

from a software engineering point, these messages are typically needed to be copied into test code that looks for reverts under specific conditions. 

wouldnt it make more sense if the test could call upon the contract for the error message? (ie `contract.ERROR_FOR_SOMETHING()`)

after this experiment its i would guess becuase its gas optimal to store the error in raw string in the require. Although success of conditions are fairly close from tested conditions, failures spent ~40% more gas. situtationaly, this extra gas on failure for software maintance may be worthwhile. 

ps callback use is not truthful as current implementation stands

to-investigate:
- [ ] larger message strings
- [ ] proper diamond proxy style
- [ ] functions with more compute / gas need
