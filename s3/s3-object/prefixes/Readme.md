# Create bucket

```sh
aws s3 mb s3://prefixes-exe-tc1
```

# Break the 1024 limit

```sh
aws s3api put-object --bucket="prefixes-exe-tc1" --key="Once/upon/a/time/in/a/small/village/nestled/between/rolling/hills/there/lived/a/young/girl/named/Amelia/She/was/known/for/her/kindness/and/her/love/for/animals/Every/morning,/she/would/walk/through/the/forest/to/visit/her/animal/friends/One/day,/as/she/wandered/deeper/into/the/woods/she/stumbled/upon/a/hidden/path/Curiosity/piqued,/she/followed/it/leading/her/to/a/sparkling/stream/Beside/the/stream/stood/an/ancient/tree/with/branches/that/seemed/to/touch/the/sky/Intrigued,/Amelia/approached/the/tree/and/discovered/a/tiny/door/at/its/base/She/knocked/gently,/and/to/her/surprise/the/door/creaked/open/Revealing/a/magical/world/inside/Fairies/fluttered/around,/casting/shimmering/lights/A/wise/old/fairy/named/Eldora/greeted/her/Welcome,/Amelia,/she/said/with/a/warm/smile/We/have/been/expecting/you/Amelia/was/astonished/and/asked/How/do/you/know/my/name?/Eldora/explained/that/the/forest/had/been/watching/her/and/recognized/her/pure/heart/They/needed/her/help/to/protect/their/home/from/an/impending/danger/Amelia/agreed/without/hesitation/She/learned/about/the/harmony/of/nature/and/the/importance/of/preserving/it/With/the/fairies'/guidance,/she/embarked/on/a/quest/to/save/the/enchanted/forest/overcoming/various/challenges/along/the/way/Her/bravery/and/compassion/won/the/hearts/of/all/After/many/adventures,/she/succeeded/restoring/balance/to/the/magical/realm/The/forest/thrived/once/again/and/Amelia/returned/to/her/village/forever/changed/by/her/journey/She/continued/to/cherish/and/protect/nature/ensuring/the/forest's/magic/would/never/fade/And/so,/the/legend/of/Amelia/the/guardian/of/the/enchanted/forest/lived/on,/inspiring/generations/to/come/"
```
