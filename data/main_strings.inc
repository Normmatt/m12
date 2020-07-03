#ifdef JAPANESE
    #define JAPANESE_TEXT(a) .string a
#else
    #define JAPANESE_TEXT(a) 
#endif
#ifdef ENGLISH
    #define ENGLISH_TEXT(a) .string a
#else
    #define ENGLISH_TEXT(a) 
#endif

    .align 1
    .global gUnknown_08F1BCEC
gUnknown_08F1BCEC:
    JAPANESE_TEXT("System Error!{BREAK}\0")
    ENGLISH_TEXT("System Error!{BREAK}\0")

    .global gUnknown_08F1BCFB
gUnknown_08F1BCFB:
    JAPANESE_TEXT("◆おにいちゃん こわい。{BREAK}でんきスタンドが くるったように{BREAK}あばれだしたの。{BREAK}\0")
    ENGLISH_TEXT("@Brother! I'm so scared!{BREAK}{WAIT}My lamp suddenly started{BREAK}going crazy!{BREAK}\0")

    .global gUnknown_08F1BD23
gUnknown_08F1BD23:
    JAPANESE_TEXT("◆おにいちゃ-ん!{BREAK}おうちが こわれちゃうよう!{BREAK}\0")
    ENGLISH_TEXT("@Brother! It's like our{BREAK}house is about to fall{BREAK}apart!{BREAK}\0")

    .global gUnknown_08F1BD3D
gUnknown_08F1BD3D:
    JAPANESE_TEXT("◆ウェ-ン。{BREAK}\0")
    ENGLISH_TEXT("@Waah!{BREAK}\0")

    .global gUnknown_08F1BD45
gUnknown_08F1BD45:
    JAPANESE_TEXT("◆はい おにいちゃん ジュ-ス。{BREAK}おなかすいたでしょ。{BREAK}\0")
    ENGLISH_TEXT("@Here's some juice, big{BREAK}brother!{BREAK}{WAIT}You must be pretty thirsty.{BREAK}\0")

    .global gUnknown_08F1BD62
gUnknown_08F1BD62:
    JAPANESE_TEXT("◆こわ-い!{BREAK}おにんぎょうが あばれだしたの!{BREAK}\0")
    ENGLISH_TEXT("@Eek!{BREAK}My doll is going crazy!{BREAK}\0")

    .global gUnknown_08F1BD7B
gUnknown_08F1BD7B:
    JAPANESE_TEXT("◆こわかったぁ。{BREAK}あっ! おにんぎょうのなかに{BREAK}なにかあるみたい。{BREAK}\0")
    ENGLISH_TEXT("@Whew, that was scary.{BREAK}{WAIT}@Oh! I think I see something{BREAK}inside the doll!{BREAK}\0")

    .global gUnknown_08F1BD9E
gUnknown_08F1BD9E:
    JAPANESE_TEXT("◆わたし ミミ-よ。{BREAK}ミニ-と まちがえちゃいや。{BREAK}\0")
    ENGLISH_TEXT("@I'm Mimmie.{BREAK}Don't mix me up with{BREAK}Minnie!{BREAK}\0")

    .global gUnknown_08F1BDB9
gUnknown_08F1BDB9:
    JAPANESE_TEXT("◆だいじょうぶだった?{BREAK}{0x03}{0x10}{BREAK}{WAIT}◆このいえは いったい{BREAK}どうなっているのかしら。{BREAK}オロオロ。{BREAK}{WAIT}◆こんなときに パパがいてくれたら{BREAK}いいのかもしれないけど……{BREAK}\0")
    ENGLISH_TEXT("@Are you okay, {0x03}{0x10}?{BREAK}{WAIT}@What on earth is happening{BREAK}to our home?{BREAK}{WAIT}I'm so scared...{BREAK}{WAIT}@If only your father were{BREAK}here now...{BREAK}\0")

    .global gUnknown_08F1BE0C
gUnknown_08F1BE0C:
    JAPANESE_TEXT("◆あなたって おもってたより{BREAK}ずっと ゆうかんなこだったのね。{BREAK}{WAIT}◆……でも あなたを{BREAK}つらいたびに だしたくないわ。{BREAK}\0")
    ENGLISH_TEXT("@You're much braver than I{BREAK}ever imagined.{BREAK}{WAIT}@...But I can't send you on{BREAK}a journey so famished.{BREAK}\0")

    .global gUnknown_08F1BE4A
gUnknown_08F1BE4A:
    JAPANESE_TEXT("◆まぁ ずいぶんきずついて……{BREAK}\0")
    ENGLISH_TEXT("@Oh, my! You're hurt!{BREAK}\0")

    .global gUnknown_08F1BE5B
gUnknown_08F1BE5B:
    JAPANESE_TEXT("◆え-と つぎのレベルまで……{BREAK}\0")
    ENGLISH_TEXT("@Let's see... To get to the{BREAK}next level, you need...{BREAK}\0")

    .global gUnknown_08F1BE6C
gUnknown_08F1BE6C:
    JAPANESE_TEXT("◆また{BREAK}{0x03}{0x15}が たべたくなったら{BREAK}かえってくるのよ。{BREAK}\0")
    ENGLISH_TEXT("@Come back home whenever you{BREAK}want some more {0x03}{0x15}.{BREAK}\0")

    .global gUnknown_08F1BE88
gUnknown_08F1BE88:
    JAPANESE_TEXT("◆ふむふむ…… そうか{BREAK}それは ラップげんしょうだな。{BREAK}{WAIT}◆どうすればいいのかは……{BREAK}パパにもわからないな。{BREAK}{WAIT}◆しかし ひいおじいさんが{BREAK}PSIの けんきゅうを{BREAK}していたはずだ。{BREAK}{WAIT}◆ちかしつをさがせば{BREAK}なにか わかるかもしれない。{BREAK}{WAIT}◆ちかしつのカギは……{BREAK}どこかに つけておいたんだが……{BREAK}{WAIT}◆わすれた。{BREAK}{WAIT}◆とにかく おまえだけがたよりだ。{BREAK}いまこそ ぼうけんのときだ。{BREAK}すすめ {0x03}{0x10}!{BREAK}{WAIT}◆みんなを まもってくれ。{BREAK}\0")
    ENGLISH_TEXT("@Hmm, I see. Sounds like it{BREAK}must be a poltergeist of{BREAK}some sort.{BREAK}{WAIT}@I'm not sure what to do{BREAK}about it, either.{BREAK}{WAIT}@But your great-grandfather{BREAK}did study PSI at one point.{BREAK}{WAIT}@Perhaps there's something{BREAK}in the basement that could{BREAK}help make sense of things.{BREAK}{WAIT}@I know I put the basement{BREAK}key somewhere...{BREAK}{WAIT}but I can't remember where.{BREAK}{WAIT}@Anyway, you're our only{BREAK}hope. Now is the time for{BREAK}an adventure.{BREAK}{WAIT}Go forth, {0x03}{0x10}!{BREAK}Protect us all!{BREAK}\0")

    .global gUnknown_08F1BF65
gUnknown_08F1BF65:
    JAPANESE_TEXT("◆ガチャン ツ-ツ-ツ-{BREAK}\0")
    ENGLISH_TEXT("@(Click! Beep-beep-beep...){BREAK}\0")

    .global gUnknown_08F1BF73
gUnknown_08F1BF73:
    JAPANESE_TEXT("◆あ パパだ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10}? It's your dad.{BREAK}\0")

    .global gUnknown_08F1BF7C
gUnknown_08F1BF7C:
    JAPANESE_TEXT("◆{0x03}{0x10}の ぎんこうこうざに{BREAK}{0x03}{0x18}ドル{BREAK}ふりこんでおいたからね。{BREAK}{WAIT}◆おまえ{0x03}{0x17}が{BREAK}つかったぶんと さしひきで{BREAK}{WAIT}{0x03}{0x19}ドル{BREAK}ぎんこうに はいっているはずだ。{BREAK}{WAIT}◆だいじに つかいなさい。{BREAK}\0")
    ENGLISH_TEXT("@I've deposited ${0x03}{0x18}{BREAK}into your bank account.{BREAK}{WAIT}@Taking away what you've{BREAK}spent, you should now have{BREAK}${0x03}{0x19} in the bank.{BREAK}{WAIT}@Use it wisely.{BREAK}\0")

    .global gUnknown_08F1BFDD
gUnknown_08F1BFDD:
    JAPANESE_TEXT("◆おせっかいかもしれないが{BREAK}ちょっと きゅうけいしては{BREAK}どうかね。{BREAK}\0")
    ENGLISH_TEXT("@I realize this isn't any of{BREAK}my business, but why don't{BREAK}you take a little break?{BREAK}\0")

    .global gUnknown_08F1C000
gUnknown_08F1C000:
    JAPANESE_TEXT("◆そうか。{BREAK}じゃ きろくしとくよ。{BREAK}\0")
    ENGLISH_TEXT("@I see. Then I'll make a{BREAK}record of your progress.{BREAK}\0")

    .global gUnknown_08F1C013
gUnknown_08F1C013:
    JAPANESE_TEXT("◆そうか。{BREAK}ま ちきゅうの ききだからな。{BREAK}\0")
    ENGLISH_TEXT("@I see. Well, I guess the{BREAK}Earth IS in danger and all.{BREAK}\0")

    .global gUnknown_08F1C02A
gUnknown_08F1C02A:
    JAPANESE_TEXT("◆そうか。{BREAK}パパも もう きょうは{BREAK}やすもうと おもってたところだ。{BREAK}{WAIT}◆たたかいのきろくは{BREAK}つけといたよ。{BREAK}{WAIT}◆おやすみ……{BREAK}\0")
    ENGLISH_TEXT("@Okay.{BREAK}{WAIT}@Your dear old dad was also{BREAK}thinking about hitting the{BREAK}hay for the night.{BREAK}{WAIT}@I've created a record of{BREAK}your adventure to this{BREAK}point.{BREAK}{WAIT}@Good night, sleep tight.{BREAK}\0")

    .global gUnknown_08F1C06D
gUnknown_08F1C06D:
    JAPANESE_TEXT("◆おたがい よくやったよな。{BREAK}{WAIT}◆それじゃ スイッチを OFFに{BREAK}しなさい。 わかったね。{BREAK}\0")
    ENGLISH_TEXT("@We're a great team, aren't{BREAK}we?{BREAK}{WAIT}@Well, you should turn the{BREAK}power OFF now.{BREAK}{WAIT}@All right?{BREAK}\0")

    .global gUnknown_08F1C09D
gUnknown_08F1C09D:
    JAPANESE_TEXT("◆{0x03}{0x16}も ママににて{BREAK}がんばりやだなぁ。{BREAK}{WAIT}◆むりするなよ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16}, you like to work{BREAK}hard, just like your mom.{BREAK}{WAIT}@But, I don't think it's{BREAK}good to work too hard.{BREAK}\0")

    .global gUnknown_08F1C0BE
gUnknown_08F1C0BE:
    JAPANESE_TEXT("◆それはそうと なんのようだい?{BREAK}\0")
    ENGLISH_TEXT("@Anyway, what do you need{BREAK}from me?{BREAK}\0")

    .global gUnknown_08F1C0D0
gUnknown_08F1C0D0:
    JAPANESE_TEXT("◆がんばれよ。{BREAK}\0")
    ENGLISH_TEXT("@Good luck!{BREAK}\0")

    .global gUnknown_08F1C0D9
gUnknown_08F1C0D9:
    JAPANESE_TEXT("◆こんにちは。{BREAK}わたしも ピッピも{BREAK}すっごく げんきよ。{BREAK}\0")
    ENGLISH_TEXT("@Hello.{BREAK}{WAIT}Pippi and I are feeling{BREAK}just dandy now!{BREAK}\0")

    .global gUnknown_08F1C0F7
gUnknown_08F1C0F7:
    JAPANESE_TEXT("◆おまえ まさか{BREAK}みなみの はかばから{BREAK}きたんじゃないだろうな。{BREAK}\0")
    ENGLISH_TEXT("@You didn't come from the{BREAK}cemetery to the south, did{BREAK}you?{BREAK}{WAIT}Please tell me you didn't!{BREAK}\0")

    .global gUnknown_08F1C119
gUnknown_08F1C119:
    JAPANESE_TEXT("◆おまえ すごいな。{BREAK}\0")
    ENGLISH_TEXT("@You're really amazing.{BREAK}\0")

    .global gUnknown_08F1C125
gUnknown_08F1C125:
    JAPANESE_TEXT("◆おまえ まさか{BREAK}ゾンビじゃないだろうな。{BREAK}ゾンビか?{BREAK}\0")
    ENGLISH_TEXT("@Please tell me you're not a{BREAK}zombie!{BREAK}{WAIT}...Are you?{BREAK}\0")

    .global gUnknown_08F1C142
gUnknown_08F1C142:
    JAPANESE_TEXT("◆ゾ ゾ ゾンビの……{BREAK}バカッ! ヒャ--{BREAK}\0")
    ENGLISH_TEXT("@Oh, yeah? W-w-well...{BREAK}{WAIT}You're a big stupid zombie{BREAK}head! Waaaah! Eek!{BREAK}\0")

    .global gUnknown_08F1C159
gUnknown_08F1C159:
    JAPANESE_TEXT("◆ほんとに にんげんか?{BREAK}\0")
    ENGLISH_TEXT("@Are you really a human?{BREAK}\0")

    .global gUnknown_08F1C167
gUnknown_08F1C167:
    JAPANESE_TEXT("◆よく ここまで こられたな。{BREAK}\0")
    ENGLISH_TEXT("@I'm amazed you made it this{BREAK}far.{BREAK}\0")

    .global gUnknown_08F1C178
gUnknown_08F1C178:
    JAPANESE_TEXT("◆やっぱりな……{BREAK}\0")
    ENGLISH_TEXT("@I knew it...{BREAK}\0")

    .global gUnknown_08F1C182
gUnknown_08F1C182:
    JAPANESE_TEXT("◆おれ  こわくて{BREAK}おもらししそうだよ。{BREAK}\0")
    ENGLISH_TEXT("@I'm so scared I'm about to{BREAK}wet my pants...{BREAK}\0")

    .global gUnknown_08F1C198
gUnknown_08F1C198:
    JAPANESE_TEXT("◆こわかったよなぁ。{BREAK}\0")
    ENGLISH_TEXT("@Boy, that was scary...{BREAK}\0")

    .global gUnknown_08F1C1A4
gUnknown_08F1C1A4:
    JAPANESE_TEXT("◆ゾンビ-!{BREAK}\0")
    ENGLISH_TEXT("@ZOMBIE!\0")

    .global gUnknown_08F1C1AC
gUnknown_08F1C1AC:
    JAPANESE_TEXT("◆フフフフフ……{BREAK}おまえも ゾンビに なれ!{BREAK}\0")
    ENGLISH_TEXT("@Heheheh...!{BREAK}You get to be a zombie too!{BREAK}\0")

    .global gUnknown_08F1C1C4
gUnknown_08F1C1C4:
    JAPANESE_TEXT("◆ししゃたちを うごかしている{BREAK}なにものかが いるらしい。{BREAK}\0")
    ENGLISH_TEXT("@There must be someone{BREAK}controlling the dead...{BREAK}\0")

    .global gUnknown_08F1C1E3
gUnknown_08F1C1E3:
    JAPANESE_TEXT("◆おわかいの やるではないか。{BREAK}\0")
    ENGLISH_TEXT("@Not too shabby, youngster!{BREAK}\0")

    .global gUnknown_08F1C1F4
gUnknown_08F1C1F4:
    JAPANESE_TEXT("◆このまちも ゾンビに{BREAK}せんりょうされてしまうのか。{BREAK}\0")
    ENGLISH_TEXT("@Are the zombies going to{BREAK}take over our town too?{BREAK}\0")

    .global gUnknown_08F1C210
gUnknown_08F1C210:
    JAPANESE_TEXT("◆あら カナリアのヒナね。{BREAK}カナリアむらで てにいれたの?{BREAK}\0")
    ENGLISH_TEXT("@Oh, that's a baby canary.{BREAK}{WAIT}Did you find it in Canary{BREAK}Village?{BREAK}\0")

    .global gUnknown_08F1C22F
gUnknown_08F1C22F:
    JAPANESE_TEXT("◆へ-え。{BREAK}\0")
    ENGLISH_TEXT("@Hmm. You don't say.{BREAK}\0")

    .global gUnknown_08F1C236
gUnknown_08F1C236:
    JAPANESE_TEXT("◆カナリアむらの ことりなら{BREAK}きれいなうたを{BREAK}うたうはずだものね。{BREAK}\0")
    ENGLISH_TEXT("@The birds of Canary Village{BREAK}do sing such lovely songs.{BREAK}\0")

    .global gUnknown_08F1C259
gUnknown_08F1C259:
    JAPANESE_TEXT("◆わたし カナリアむらの{BREAK}おじさんに あこがれてるのよ。{BREAK}\0")
    ENGLISH_TEXT("@I really admire the man{BREAK}living in Canary Village.{BREAK}\0")

    .global gUnknown_08F1C277
gUnknown_08F1C277:
    JAPANESE_TEXT("◆ちょうちょうさんは{BREAK}ゆうきのある すけっとを{BREAK}さがしておられる。{BREAK}\0")
    ENGLISH_TEXT("@The town mayor is looking{BREAK}for someone brave to help{BREAK}him.{BREAK}\0")

    .global gUnknown_08F1C29A
gUnknown_08F1C29A:
    JAPANESE_TEXT("◆はかばに こどもが{BREAK}まよいこんだっていうけど{BREAK}たすかったのかなぁ。{BREAK}\0")
    ENGLISH_TEXT("@I heard a little girl got{BREAK}lost in the cemetery.{BREAK}{WAIT}I wonder if she's been{BREAK}rescued yet...{BREAK}\0")

    .global gUnknown_08F1C2BE
gUnknown_08F1C2BE:
    JAPANESE_TEXT("◆おまえ……{BREAK}ほんとに はかばに いくつもりか?{BREAK}\0")
    ENGLISH_TEXT("@Say... You're not honestly{BREAK}thinking of going to the{BREAK}cemetery, are you?{BREAK}\0")

    .global gUnknown_08F1C2D8
gUnknown_08F1C2D8:
    JAPANESE_TEXT("◆じょうしきを わきまえた{BREAK}こどもだと おもったな オレは。{BREAK}\0")
    ENGLISH_TEXT("@I thought you were a{BREAK}sensible boy.{BREAK}\0")

    .global gUnknown_08F1C2F8
gUnknown_08F1C2F8:
    JAPANESE_TEXT("◆どうぶつたちは{BREAK}くるって あばれだすし{BREAK}{WAIT}◆しにんは{BREAK}ゾンビになっておそってくるし……{BREAK}{WAIT}◆どうすればいいのよ。{BREAK}ヒ-ヒ-……{BREAK}\0")
    ENGLISH_TEXT("@Animals have suddenly{BREAK}turned violent,{BREAK}{WAIT}and the dead have come back{BREAK}as zombies to attack us...{BREAK}{WAIT}@What are we supposed to do?{BREAK}I'm so scared I can hardly{BREAK}breathe... (gasp gasp){BREAK}\0")

    .global gUnknown_08F1C33C
gUnknown_08F1C33C:
    JAPANESE_TEXT("◆あなたって スゴイ!{BREAK}\0")
    ENGLISH_TEXT("@You're so awesome!{BREAK}\0")

    .global gUnknown_08F1C349
gUnknown_08F1C349:
    JAPANESE_TEXT("◆おまえんち ポルタ-ガイストに{BREAK}みまわれなかったか?{BREAK}おれんちなんか たいへんだったぜ。{BREAK}\0")
    ENGLISH_TEXT("@Did a poltergeist attack{BREAK}your house?{BREAK}{WAIT}It tore mine apart.{BREAK}\0")

    .global gUnknown_08F1C378
gUnknown_08F1C378:
    JAPANESE_TEXT("◆どうぶつえんは{BREAK}くるったどうぶつが これいじょう{BREAK}にげださないよう{BREAK}{WAIT}かんぜんに へいさしたそうだぜ。{BREAK}\0")
    ENGLISH_TEXT("@I hear they locked the zoo{BREAK}up to keep any more animals{BREAK}from escaping.{BREAK}{WAIT}@They've all gone berserk,{BREAK}you see...{BREAK}\0")

    .global gUnknown_08F1C3AF
gUnknown_08F1C3AF:
    JAPANESE_TEXT("◆パンは たべることもできるけれど{BREAK}ちぎって パンくずにすると{BREAK}めじるしに なるんじゃないかな。{BREAK}{WAIT}◆……おせっかい ですけどね。{BREAK}\0")
    ENGLISH_TEXT("@Bread is great for when{BREAK}you're hungry,{BREAK}{WAIT}but I bet you could also{BREAK}use its crumbs to mark your{BREAK}trail.{BREAK}{WAIT}@...I guess it's really none{BREAK}of my business, though.{BREAK}\0")

    .global gUnknown_08F1C3F3
gUnknown_08F1C3F3:
    JAPANESE_TEXT("◆きみでは むりかなぁ。{BREAK}きたいしてるんだけどなぁ。{BREAK}\0")
    ENGLISH_TEXT("@I don't know, this task{BREAK}might be too much for you{BREAK}to handle,{BREAK}{WAIT}but I still have high hopes{BREAK}for you anyway.{BREAK}\0")

    .global gUnknown_08F1C40F
gUnknown_08F1C40F:
    JAPANESE_TEXT("◆いやなに……{BREAK}はかばに こどもがまよいこんでね。{BREAK}{WAIT}◆つぎの ちょうちょうせんきょも{BREAK}ちかいし……{BREAK}……たすけてチョ-ダイ!{BREAK}\0")
    ENGLISH_TEXT("@Well, you see...{BREAK}{WAIT}@A child has strayed into{BREAK}the cemetery.{BREAK}{WAIT}@And, as luck would have it,{BREAK}I'm up for re-election{BREAK}soon.{BREAK}{WAIT}@So... please help me!{BREAK}\0")

    .global gUnknown_08F1C451
gUnknown_08F1C451:
    JAPANESE_TEXT("◆えっ いってくれるか。{BREAK}たすけだして くれるってか。{BREAK}\0")
    ENGLISH_TEXT("@Oh! You'll do it?!{BREAK}{WAIT}@You'll go and rescue her?!{BREAK}\0")

    .global gUnknown_08F1C46E
gUnknown_08F1C46E:
    JAPANESE_TEXT("◆そのこが まいごになった{BREAK}ピッピちゃんかね。{BREAK}{WAIT}◆いやいや すばらしい。{BREAK}{WAIT}◆みどころのあるしょうねんだと{BREAK}おもって いたが。{BREAK}{WAIT}◆はくしゅ パチパチパチ……{BREAK}{WAIT}◆よかったねぇ{BREAK}かわいいピッピちゃん。{BREAK}{WAIT}◆ママに ちょうちょうさんに{BREAK}たすけてもらったと{BREAK}ちゃんというんだよ。{BREAK}{WAIT}◆{0x03}{0x16}くんにも{BREAK}しょうきんを {0x03}{0x1E}ドル{BREAK}あげよう。 ホレッ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, is this Pippi, the girl{BREAK}who got lost?{BREAK}{WAIT}@Stunning work, lad!{BREAK}{WAIT}@I knew from the start that{BREAK}you showed promise!{BREAK}{WAIT}(clap clap applause){BREAK}{WAIT}@You're so lucky, Pippi.{BREAK}Adorable, too.{BREAK}{WAIT}@Now remember to tell your{BREAK}mother that the mayor{BREAK}rescued you.{BREAK}{WAIT}@And for you, {0x03}{0x16}...{BREAK}A ${0x03}{0x1E} reward. Here.{BREAK}\0")

    .global gUnknown_08F1C520
gUnknown_08F1C520:
    JAPANESE_TEXT("◆ところで{BREAK}ついでといっては なんだが{BREAK}{WAIT}◆どうぶつえんの じけんのほうも{BREAK}ひとがんばりしてみちゃ{BREAK}くれないかね?{BREAK}\0")
    ENGLISH_TEXT("@Say, since you're here and{BREAK}everything, won't you help{BREAK}with the zoo problem too?{BREAK}\0")

    .global gUnknown_08F1C55C
gUnknown_08F1C55C:
    JAPANESE_TEXT("◆そうか やっぱりいってくれるか!{BREAK}{0x03}{0x16}くん きみも{BREAK}ほんとに ゲ-ムずきだねぇ。{BREAK}{WAIT}◆どうぶつえんの カギは{BREAK}じょやくの アボットから{BREAK}もらいなさい。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you'll go check it out?{BREAK}That's wonderful!{BREAK}{WAIT}{0x03}{0x16}, you certainly do{BREAK}love to play games!{BREAK}{WAIT}@Have my assistant Abbot{BREAK}give you a key to the zoo.{BREAK}\0")

    .global gUnknown_08F1C5AB
gUnknown_08F1C5AB:
    JAPANESE_TEXT("◆はい{BREAK}これが どうぶつえんのカギです。{BREAK}\0")
    ENGLISH_TEXT("@Here you go. This is the{BREAK}key to the zoo.{BREAK}\0")

    .global gUnknown_08F1C5C1
gUnknown_08F1C5C1:
    JAPANESE_TEXT("◆いきてかえって きみは えいゆう!{BREAK}からだのぐあいさえよければ{BREAK}わたしも いくんだけど……{BREAK}\0")
    ENGLISH_TEXT("@Come back alive and you'll{BREAK}be a hero!{BREAK}{WAIT}@I'd go with you, but I'm,{BREAK}umm, not feeling well...{BREAK}\0")

    .global gUnknown_08F1C5F1
gUnknown_08F1C5F1:
    JAPANESE_TEXT("◆おお{BREAK}えいゆうの {0x03}{0x16}くん。{BREAK}ふくに とらのふんがついているよ。{BREAK}{WAIT}◆あ うそ うそ。{BREAK}こんどは なにも{BREAK}あげるものがないが……{BREAK}{WAIT}ワハハハハハ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, it's {0x03}{0x16}, the hero!{BREAK}{WAIT}@You have tiger droppings{BREAK}all over your clothes, you{BREAK}know.{BREAK}{WAIT}@Oh, I'm just kidding!{BREAK}{WAIT}@Sorry, I don't have{BREAK}anything to give you this{BREAK}time...{BREAK}{WAIT}Wahahaha!{BREAK}\0")

    .global gUnknown_08F1C63F
gUnknown_08F1C63F:
    JAPANESE_TEXT("◆ふしぎな しょうじょの{BREAK}うわさは きいてるかしら?{BREAK}{WAIT}◆きっと きみの たびを{BREAK}たすけてくれると おもうの。{BREAK}\0")
    ENGLISH_TEXT("@Everyone's talking about a{BREAK}girl with special powers.{BREAK}Have you heard about her?{BREAK}{WAIT}@I bet she'd be a great help{BREAK}to you on your journey.{BREAK}\0")

    .global gUnknown_08F1C679
gUnknown_08F1C679:
    JAPANESE_TEXT("◆どうぶつえんのカギくらい{BREAK}いくらでもあります。{BREAK}はい またひとつあげましょう。{BREAK}\0")
    ENGLISH_TEXT("@I have plenty of extra zoo{BREAK}keys.{BREAK}{WAIT}@Here, have another.{BREAK}\0")

    .global gUnknown_08F1C6A3
gUnknown_08F1C6A3:
    JAPANESE_TEXT("◆みてのとおり どうぶつたちは{BREAK}みんなにげだしちまった。{BREAK}\0")
    ENGLISH_TEXT("@As you can see, all our{BREAK}animals have escaped.{BREAK}\0")

    .global gUnknown_08F1C6C1
gUnknown_08F1C6C1:
    JAPANESE_TEXT("◆いるのは カナリアのヒナだけだ。{BREAK}かうかね?{BREAK}\0")
    ENGLISH_TEXT("@All we have left is this{BREAK}canary chick.{BREAK}{WAIT}Interested in buying it?{BREAK}\0")

    .global gUnknown_08F1C6DA
gUnknown_08F1C6DA:
    JAPANESE_TEXT("◆じゃ {0x03}{0x1E}ドルで かうかね?{BREAK}\0")
    ENGLISH_TEXT("@Then how about for ${0x03}{0x1E}?{BREAK}\0")

    .global gUnknown_08F1C6EB
gUnknown_08F1C6EB:
    JAPANESE_TEXT("◆うたをしらないカナリアだからなぁ。{BREAK}\0")
    ENGLISH_TEXT("@Yeah, I don't blame you.{BREAK}{WAIT}It doesn't even know any{BREAK}songs.{BREAK}\0")

    .global gUnknown_08F1C6FF
gUnknown_08F1C6FF:
    JAPANESE_TEXT("◆かわいがってね。 ありがとさん。{BREAK}\0")
    ENGLISH_TEXT("@Thanks! Take extra good{BREAK}care of it!{BREAK}\0")

    .global gUnknown_08F1C712
gUnknown_08F1C712:
    JAPANESE_TEXT("◆ただでも いらないかね?{BREAK}もっていきな。{BREAK}\0")
    ENGLISH_TEXT("@How about for free, then?{BREAK}C'mon, take it.{BREAK}\0")

    .global gUnknown_08F1C729
gUnknown_08F1C729:
    JAPANESE_TEXT("◆カナリアは まだ げんきかね。{BREAK}\0")
    ENGLISH_TEXT("@Say, how's that canary{BREAK}doing?{BREAK}\0")

    .global gUnknown_08F1C73B
gUnknown_08F1C73B:
    JAPANESE_TEXT("◆どうぶつたちは きっと なにかに{BREAK}あやつられていると おもうの。{BREAK}\0")
    ENGLISH_TEXT("@I'm almost certain that{BREAK}something is controlling{BREAK}all the animals...{BREAK}\0")

    .global gUnknown_08F1C75E
gUnknown_08F1C75E:
    JAPANESE_TEXT("◆どうぶつは かわいいわよね。{BREAK}\0")
    ENGLISH_TEXT("@Animals are so cute. Don't{BREAK}you agree?{BREAK}\0")

    .global gUnknown_08F1C76F
gUnknown_08F1C76F:
    JAPANESE_TEXT("◆うふっ。{BREAK}\0")
    ENGLISH_TEXT("@Teehee.{BREAK}\0")

    .global gUnknown_08F1C776
gUnknown_08F1C776:
    JAPANESE_TEXT("◆バ-カ!{BREAK}\0")
    ENGLISH_TEXT("@Stupid head!{BREAK}\0")

    .global gUnknown_08F1C77D
gUnknown_08F1C77D:
    JAPANESE_TEXT("◆いらっしゃいませ。{BREAK}また ごへんぴんですね。{BREAK}\0")
    ENGLISH_TEXT("@Welcome! Do you need to{BREAK}return any items?{BREAK}\0")

    .global gUnknown_08F1C796
gUnknown_08F1C796:
    JAPANESE_TEXT("◆{0x03}{0x16}の こころに{BREAK}なにかが といかけてきている。{BREAK}\0")
    ENGLISH_TEXT("@Something is speaking into{BREAK}{0x03}{0x16}'s mind.{BREAK}\0")

    .global gUnknown_08F1C7B1
gUnknown_08F1C7B1:
    JAPANESE_TEXT("◆ああ よかった。{BREAK}\0")
    ENGLISH_TEXT("@Whew, what a relief.{BREAK}\0")

    .global gUnknown_08F1C7BC
gUnknown_08F1C7BC:
    JAPANESE_TEXT("◆これからも とうデパ-トを{BREAK}よろしくおひきたてくださいませね。{BREAK}うっふん。{BREAK}\0")
    ENGLISH_TEXT("@Please visit us again for{BREAK}all your shopping needs!{BREAK}(giggle){BREAK}\0")

    .global gUnknown_08F1C7E4
gUnknown_08F1C7E4:
    JAPANESE_TEXT("◆デパ-トの 1かいに{BREAK}ちょきんを おろせる きかいが{BREAK}できたのは いいんだけどね。{BREAK}{WAIT}◆キャなんとかカ-ドが ないと{BREAK}おろせないってのが ふべんね。{BREAK}\0")
    ENGLISH_TEXT("@It's nice that there's a{BREAK}machine on the first floor{BREAK}of the department store{BREAK}{WAIT}that lets you withdraw cash{BREAK}from your bank account,{BREAK}{WAIT}but you need a PTA card or{BREAK}something to use it.{BREAK}{WAIT}That's not very convenient,{BREAK}if you ask me.{BREAK}\0")

    .global gUnknown_08F1C832
gUnknown_08F1C832:
    JAPANESE_TEXT("◆いいてんきじゃ。 しかし{BREAK}それがどうしたと いうのだろう。{BREAK}\0")
    ENGLISH_TEXT("@It's such nice weather out.{BREAK}{WAIT}But what does it matter?\0")

    .global gUnknown_08F1C852
gUnknown_08F1C852:
    JAPANESE_TEXT("◆ありゃ きみのカナリアは{BREAK}うたひめロ-ラのこどもじゃないか。{BREAK}ロ-ラに とどけてやっておくれ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, that canary is Laura{BREAK}the songbird's baby!{BREAK}{WAIT}@Go take it to her!{BREAK}\0")

    .global gUnknown_08F1C884
gUnknown_08F1C884:
    JAPANESE_TEXT("◆きみは なにか たいせつなことを{BREAK}わすれているな。 かなしいことだ。{BREAK}\0")
    ENGLISH_TEXT("@You seem to have forgotten{BREAK}something important about{BREAK}life.{BREAK}{WAIT}How sad.{BREAK}\0")

    .global gUnknown_08F1C8A9
gUnknown_08F1C8A9:
    JAPANESE_TEXT("◆ロ-ラは どこにいたかな……{BREAK}\0")
    ENGLISH_TEXT("@Now where did I last see{BREAK}Laura...?{BREAK}\0")

    .global gUnknown_08F1C8BA
gUnknown_08F1C8BA:
    JAPANESE_TEXT("◆うたひめロ-ラが うたを{BREAK}おもいだしてくれたようだ。{BREAK}きみも メロディ-をおぼえたかい?{BREAK}\0")
    ENGLISH_TEXT("@It sounds like Laura the{BREAK}songbird has remembered her{BREAK}song.{BREAK}{WAIT}@Have you learned her{BREAK}melody, too?{BREAK}\0")

    .global gUnknown_08F1C8E9
gUnknown_08F1C8E9:
    JAPANESE_TEXT("◆だ-めだ そりゃ。{BREAK}\0")
    ENGLISH_TEXT("@Well, that's no good.{BREAK}\0")

    .global gUnknown_08F1C8F5
gUnknown_08F1C8F5:
    JAPANESE_TEXT("◆うたは ちからなり……{BREAK}まことに そのとおりじゃ。{BREAK}\0")
    ENGLISH_TEXT("@In song there is strength.{BREAK}{WAIT}True words, indeed.{BREAK}\0")

    .global gUnknown_08F1C911
gUnknown_08F1C911:
    JAPANESE_TEXT("◆わたしは まいごのピッピだよ。{BREAK}あなたって ゆうき あるね。{BREAK}\0")
    ENGLISH_TEXT("@I'm Pippi. I'm lost.{BREAK}You're really brave, huh?{BREAK}\0")

    .global gUnknown_08F1C932
gUnknown_08F1C932:
    JAPANESE_TEXT("◆この おちょうしもの。 ハハハ。{BREAK}\0")
    ENGLISH_TEXT("@You're such a goofball!{BREAK}Hahaha!{BREAK}\0")

    .global gUnknown_08F1C945
gUnknown_08F1C945:
    JAPANESE_TEXT("◆ゆうきあるわよ。{BREAK}また いつか どこかで{BREAK}あえるといいね?{BREAK}\0")
    ENGLISH_TEXT("@You're really brave.{BREAK}I hope we meet again{BREAK}sometime, don't you?{BREAK}\0")

    .global gUnknown_08F1C965
gUnknown_08F1C965:
    JAPANESE_TEXT("◆うれしい。 このバッヂは{BREAK}やくそくのしるしよ。{BREAK}ハイ うけとって。{BREAK}\0")
    ENGLISH_TEXT("@Oh, I'm so happy!{BREAK}{WAIT}@Here, this badge can be a{BREAK}symbol of our bond.{BREAK}{WAIT}Take it with you.{BREAK}\0")

    .global gUnknown_08F1C989
gUnknown_08F1C989:
    JAPANESE_TEXT("◆すきなひとがいるのね。{BREAK}きっと……{BREAK}\0")
    ENGLISH_TEXT("@I guess you already have a{BREAK}special someone, huh...{BREAK}\0")

    .global gUnknown_08F1C99D
gUnknown_08F1C99D:
    JAPANESE_TEXT("◆じゃ ここでバイバイ。{BREAK}{WAIT}◆わたしの もっている グッズは{BREAK}あとで わたしのうちに{BREAK}とりにきてね。{BREAK}{WAIT}◆ところで……{BREAK}わたしのくつした みじかすぎる?{BREAK}\0")
    ENGLISH_TEXT("@Well, I guess this is bye{BREAK}for now.{BREAK}{WAIT}@Come by my house later to{BREAK}pick up an item of mine.{BREAK}{WAIT}@By the way... do you think{BREAK}my socks are too short?{BREAK}\0")

    .global gUnknown_08F1C9ED
gUnknown_08F1C9ED:
    JAPANESE_TEXT("◆こたえなくてもよかったのに。{BREAK}かわいいひと……{BREAK}\0")
    ENGLISH_TEXT("@Oh, you didn't have to{BREAK}answer.{BREAK}{WAIT}You're such a cutie...{BREAK}\0")

    .global gUnknown_08F1CA07
gUnknown_08F1CA07:
    JAPANESE_TEXT("◆キャッキャッキャッ{BREAK}(おまえの かあさんでべそ!){BREAK}\0")
    ENGLISH_TEXT("@Kyakyakya!{BREAK}(You're a big doo-doo{BREAK}head!){BREAK}\0")

    .global gUnknown_08F1CA23
gUnknown_08F1CA23:
    JAPANESE_TEXT("◆{0x03}{0x16}{0x03}{0x17}は{BREAK}「かみのしっぽは どこにある。」{BREAK}という こえをきいた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16} heard a voice...{BREAK}{WAIT}@…Where is the god's tail?”{BREAK}\0")

    .global gUnknown_08F1CA48
gUnknown_08F1CA48:
    JAPANESE_TEXT("◆ありゃりゃ。 かわったふくを{BREAK}きているな おめぇ。{BREAK}{WAIT}◆そんなにめだつふくを きてると{BREAK}まものが よってくるだよ。{BREAK}\0")
    ENGLISH_TEXT("@Whoa, those are some weird{BREAK}clothes you have on there.{BREAK}{WAIT}@I bet you'll attract{BREAK}monsters dressed like that!{BREAK}\0")

    .global gUnknown_08F1CA85
gUnknown_08F1CA85:
    JAPANESE_TEXT("◆しあわせは あるいてこない。{BREAK}だども ふしあわせも{BREAK}あるいちゃこねぇよなぁ。{BREAK}\0")
    ENGLISH_TEXT("@Happiness won't just walk{BREAK}into your life on its own.{BREAK}{WAIT}@But neither will{BREAK}unhappiness.{BREAK}{WAIT}@Wouldn't you agree?{BREAK}\0")

    .global gUnknown_08F1CAAE
gUnknown_08F1CAAE:
    JAPANESE_TEXT("◆さいなんに であいたくなかったら{BREAK}いっぽも あるかねぇこった。{BREAK}\0")
    ENGLISH_TEXT("@So if you don't want{BREAK}trouble in your life...{BREAK}{WAIT}then you'd best stay still{BREAK}and never move a muscle.{BREAK}\0")

    .global gUnknown_08F1CAD0
gUnknown_08F1CAD0:
    JAPANESE_TEXT("◆そうか{BREAK}ふしあわせは あるくか……{BREAK}しらなんだ。{BREAK}\0")
    ENGLISH_TEXT("@Really? Unhappiness CAN{BREAK}walk?{BREAK}{WAIT}I had no idea.{BREAK}\0")

    .global gUnknown_08F1CAEB
gUnknown_08F1CAEB:
    JAPANESE_TEXT("◆おらの センスを みとめただか。{BREAK}おめぇも カッコイイあだなが{BREAK}ほしいだな?{BREAK}\0")
    ENGLISH_TEXT("@So, you admit I have good{BREAK}taste?{BREAK}{WAIT}@Then I take it you want a{BREAK}cool nickname, too?{BREAK}\0")

    .global gUnknown_08F1CB14
gUnknown_08F1CB14:
    JAPANESE_TEXT("◆できた。{BREAK}いまから おめぇは{BREAK}うすのろぶた {0x03}{0x16}だ。{BREAK}{WAIT}◆おしゃれな ム-ドになったぞ。{BREAK}\0")
    ENGLISH_TEXT("@Okay, I got it.{BREAK}{WAIT}@From now on, your name will{BREAK}be Stupid Face {0x03}{0x16}.{BREAK}{WAIT}@It just oozes class.{BREAK}\0")

    .global gUnknown_08F1CB44
gUnknown_08F1CB44:
    JAPANESE_TEXT("◆そうか。 ざんねんだな。{BREAK}\0")
    ENGLISH_TEXT("@Oh, that's too bad.{BREAK}\0")

    .global gUnknown_08F1CB53
gUnknown_08F1CB53:
    JAPANESE_TEXT("◆やぁ うすのろぶた{0x03}{0x16}。{BREAK}\0")
    ENGLISH_TEXT("@Heya, Stupid Face {0x03}{0x16}!{BREAK}\0")

    .global gUnknown_08F1CB62
gUnknown_08F1CB62:
    JAPANESE_TEXT("◆しあわせについて{BREAK}てつがくしてるやつに あったか?{BREAK}\0")
    ENGLISH_TEXT("@Have you met the guy who{BREAK}philosophizes about{BREAK}happiness?{BREAK}\0")

    .global gUnknown_08F1CB7E
gUnknown_08F1CB7E:
    JAPANESE_TEXT("◆やつは{BREAK}あだなをつける めいじんなんだ。{BREAK}さいこうに センスが いいんだぜ。{BREAK}\0")
    ENGLISH_TEXT("@He's a master nicknamer.{BREAK}He's got a real knack for{BREAK}names.{BREAK}\0")

    .global gUnknown_08F1CBA7
gUnknown_08F1CBA7:
    JAPANESE_TEXT("◆あわなきゃ わかれもないわけだ。{BREAK}\0")
    ENGLISH_TEXT("@People cannot part if they{BREAK}have not yet met.{BREAK}\0")

    .global gUnknown_08F1CBBA
gUnknown_08F1CBBA:
    JAPANESE_TEXT("◆あわなきゃ わかれもないっていう{BREAK}かんがえのおとこに あったか?{BREAK}\0")
    ENGLISH_TEXT("@Have you met a guy who{BREAK}talks about how you can't{BREAK}part if you haven't met?{BREAK}\0")

    .global gUnknown_08F1CBDD
gUnknown_08F1CBDD:
    JAPANESE_TEXT("◆おれも そんなかんがえかた{BREAK}してるんだ。{BREAK}\0")
    ENGLISH_TEXT("@I agree with him, actually.{BREAK}\0")

    .global gUnknown_08F1CBF4
gUnknown_08F1CBF4:
    JAPANESE_TEXT("◆あったほうが ためになるぞ。{BREAK}\0")
    ENGLISH_TEXT("@You really should meet him.{BREAK}You'll be a better person{BREAK}for it!{BREAK}\0")

    .global gUnknown_08F1CC05
gUnknown_08F1CC05:
    JAPANESE_TEXT("◆クイ-ンマリ-の いずみで{BREAK}すっかり げんきになったわ。{BREAK}\0")
    ENGLISH_TEXT("@I feel completely refreshed{BREAK}after stopping by Queen{BREAK}Mary's fountain!{BREAK}\0")

    .global gUnknown_08F1CC24
gUnknown_08F1CC24:
    JAPANESE_TEXT("◆クイ-ンマリ-のいずみは{BREAK}とおいのが つらいわよねぇ。{BREAK}わかりにくい ばしょにあるし。{BREAK}\0")
    ENGLISH_TEXT("@Gettng to Queen Mary's{BREAK}fountain is really tough.{BREAK}{WAIT}Not only is it far away,{BREAK}but it's hard to find, too.{BREAK}\0")

    .global gUnknown_08F1CC52
gUnknown_08F1CC52:
    JAPANESE_TEXT("◆この こわれたイヤリングを{BREAK}いずみにもっていって まほうの{BREAK}イヤリングにするの。{BREAK}\0")
    ENGLISH_TEXT("@I'm going to take this{BREAK}broken earring to the{BREAK}fountain to turn it into a{BREAK}magic earring.{BREAK}\0")

    .global gUnknown_08F1CC7D
gUnknown_08F1CC7D:
    JAPANESE_TEXT("◆いずみのふしぎなおとを きくと{BREAK}それだけで おちつくよなぁ。{BREAK}\0")
    ENGLISH_TEXT("@I feel so relaxed just{BREAK}listening to the mysterious{BREAK}sound of the fountain.{BREAK}\0")

    .global gUnknown_08F1CC9E
gUnknown_08F1CC9E:
    JAPANESE_TEXT("◆もっと みなみ。{BREAK}みちにまよったのかい。{BREAK}{WAIT}◆ごめん ごめん{BREAK}いま おしえたのは{BREAK}トイレのばしょだった。{BREAK}{WAIT}◆クイ-ンマリ-の いずみなら{BREAK}おしろから にしに いくんだよ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, are you lost?{BREAK}Just keep going south.{BREAK}{WAIT}@Oops, sorry. I thought you{BREAK}were looking for a{BREAK}restroom.{BREAK}{WAIT}@If you're looking for Queen{BREAK}Mary's fountain, then just{BREAK}go west from the castle.{BREAK}\0")

    .global gUnknown_08F1CCF9
gUnknown_08F1CCF9:
    JAPANESE_TEXT("◆スプ-ンを まげちゃったら{BREAK}ごはんが たべにくいや。{BREAK}おにいちゃんもとに もどせる?{BREAK}\0")
    ENGLISH_TEXT("@I bent my spoon, and now{BREAK}it's hard to eat with.{BREAK}{WAIT}@Can you bend it back for{BREAK}me?{BREAK}\0")

    .global gUnknown_08F1CD26
gUnknown_08F1CD26:
    JAPANESE_TEXT("◆はやく もどして。{BREAK}{WAIT}◆({0x03}{0x10}は{BREAK}PSIのちからで スプ-ンを{BREAK}もとに もどしてやった。){BREAK}{WAIT}◆あんがと。{BREAK}パクパク モシャモシャ。{BREAK}うちにこんやは とまっていきなよ?{BREAK}\0")
    ENGLISH_TEXT("@Please hurry.{BREAK}{WAIT}@({0x03}{0x10} used the power of{BREAK}PSI to fix the spoon.){BREAK}{WAIT}@Thanks!{BREAK}(munch munch chomp chomp){BREAK}{WAIT}@Do you wanna stay the night{BREAK}here tonight?{BREAK}\0")

    .global gUnknown_08F1CD7F
gUnknown_08F1CD7F:
    JAPANESE_TEXT("◆どうしてぇ!?{BREAK}\0")
    ENGLISH_TEXT("@Why not?!{BREAK}\0")

    .global gUnknown_08F1CD89
gUnknown_08F1CD89:
    JAPANESE_TEXT("◆あなた へんなかんじの かたね。{BREAK}でも にくめないタイプ……{BREAK}\0")
    ENGLISH_TEXT("@You're very strange, you{BREAK}know that?{BREAK}{WAIT}But I also think I might{BREAK}like you...{BREAK}\0")

    .global gUnknown_08F1CDAA
gUnknown_08F1CDAA:
    JAPANESE_TEXT("◆よかった。{BREAK}\0")
    ENGLISH_TEXT("@Great!{BREAK}\0")

    .global gUnknown_08F1CDB2
gUnknown_08F1CDB2:
    JAPANESE_TEXT("◆うぇ-ん。 ひとのしんせつは{BREAK}うけるものだよ。{BREAK}\0")
    ENGLISH_TEXT("@Waaah! You're supposed to{BREAK}accept people's kindness!\0")

    .global gUnknown_08F1CDCC
gUnknown_08F1CDCC:
    JAPANESE_TEXT("◆あら たびのかた{BREAK}うちで おしょくじしていったら?{BREAK}{WAIT}◆さぁ{BREAK}きょうのメニュ-は なんでしょう?{BREAK}わかる?{BREAK}\0")
    ENGLISH_TEXT("@Oh, a traveler! Why don't{BREAK}you eat with us?{BREAK}{WAIT}@Here, can you guess what{BREAK}we're having today?{BREAK}\0")

    .global gUnknown_08F1CE05
gUnknown_08F1CE05:
    JAPANESE_TEXT("◆まぁ どうしてわからないのかしら。{BREAK}あやしいひと!{BREAK}\0")
    ENGLISH_TEXT("@Huh? Why can't you tell?{BREAK}You're really suspicious!{BREAK}\0")

    .global gUnknown_08F1CE21
gUnknown_08F1CE21:
    JAPANESE_TEXT("◆そう {0x03}{0x15}。{BREAK}{WAIT}◆あなたのこころを よんで{BREAK}{0x03}{0x15}にしたのよ。{BREAK}おいしい?{BREAK}\0")
    ENGLISH_TEXT("@That's right, {0x03}{0x15}.{BREAK}{WAIT}@I read your mind and{BREAK}decided to make {0x03}{0x15}.{BREAK}{WAIT}@How does it taste? Do you{BREAK}like it?{BREAK}\0")

    .global gUnknown_08F1CE49
gUnknown_08F1CE49:
    JAPANESE_TEXT("◆うちは がっきや だったんだけど{BREAK}ちゅうもんした オカリナが{BREAK}ぜんぜん できてこないの。{BREAK}{WAIT}◆もう あきらめた-っと。{BREAK}\0")
    ENGLISH_TEXT("@I used to run a musical{BREAK}instrument store, but the{BREAK}ocarina I ordered never {BREAK}arrived.{BREAK}{WAIT}@So I've given up.{BREAK}\0")

    .global gUnknown_08F1CE88
gUnknown_08F1CE88:
    JAPANESE_TEXT("◆あら そう。{BREAK}\0")
    ENGLISH_TEXT("@Oh. I see.{BREAK}\0")

    .global gUnknown_08F1CE91
gUnknown_08F1CE91:
    JAPANESE_TEXT("◆ありがとう{BREAK}ベッドのよういも できてるわ。{BREAK}ゆっくりおやすみ。{BREAK}\0")
    ENGLISH_TEXT("@Thanks!{BREAK}{WAIT}@Your bed is ready.{BREAK}Pleasant dreams!{BREAK}\0")

    .global gUnknown_08F1CEB3
gUnknown_08F1CEB3:
    JAPANESE_TEXT("◆えんりょしないで{BREAK}また とまっていきなよ。{BREAK}\0")
    ENGLISH_TEXT("@Stop by again anytime!{BREAK}\0")

    .global gUnknown_08F1CECB
gUnknown_08F1CECB:
    JAPANESE_TEXT("◆おまえ{BREAK}なんか このくにに なじまない{BREAK}かおしてるなぁ?{BREAK}\0")
    ENGLISH_TEXT("@You don't fit in with this{BREAK}place, you know that?{BREAK}\0")

    .global gUnknown_08F1CEEA
gUnknown_08F1CEEA:
    JAPANESE_TEXT("◆きぼうのオカリナができたんだ。{BREAK}{WAIT}◆きみのしってる メロディ-が{BREAK}ながれるんだよ。{BREAK}{WAIT}◆ほしいか?{BREAK}\0")
    ENGLISH_TEXT("@I finished the Ocarina of{BREAK}Hope.{BREAK}{WAIT}@It can play the melodies{BREAK}that you know.{BREAK}{WAIT}@Do you want it?{BREAK}\0")

    .global gUnknown_08F1CF20
gUnknown_08F1CF20:
    JAPANESE_TEXT("◆すなおな しょうねんだな。{BREAK}はい どうぞ。 アハハハハ。{BREAK}\0")
    ENGLISH_TEXT("@Ahahaha. You're a real{BREAK}straightforward guy.{BREAK}{WAIT}@Here you go.{BREAK}\0")

    .global gUnknown_08F1CF3F
gUnknown_08F1CF3F:
    JAPANESE_TEXT("◆ほしいって かおに かいてあるよ。{BREAK}アハハハハ もっていきな。{BREAK}\0")
    ENGLISH_TEXT("@Ahahaha!{BREAK}…I want it!” is written all{BREAK}over your face.{BREAK}{WAIT}@Go ahead, take it with you.{BREAK}\0")

    .global gUnknown_08F1CF61
gUnknown_08F1CF61:
    JAPANESE_TEXT("◆よっ ぼうず げんきか。{BREAK}\0")
    ENGLISH_TEXT("@Hi, kid! How's it going?{BREAK}\0")

    .global gUnknown_08F1CF70
gUnknown_08F1CF70:
    JAPANESE_TEXT("◆マジカントのくにに{BREAK}でぐちなんてものが あるものかね。{BREAK}アハハハ。{BREAK}\0")
    ENGLISH_TEXT("@Leave Magicant?{BREAK}That'd be the day!{BREAK}{WAIT}@Ahahaha!{BREAK}\0")

    .global gUnknown_08F1CF94
gUnknown_08F1CF94:
    JAPANESE_TEXT("◆そと?{BREAK}そとのせかいって なんのこったね?{BREAK}\0")
    ENGLISH_TEXT("@Outside?{BREAK}{WAIT}What is this …outside” you{BREAK}speak of?{BREAK}\0")

    .global gUnknown_08F1CFAC
gUnknown_08F1CFAC:
    JAPANESE_TEXT("◆あなが あったら{BREAK}はいりたいですわ。{BREAK}もし あったら だけどね。{BREAK}\0")
    ENGLISH_TEXT("@I'm so embarrassed I wish I{BREAK}could crawl into a hole.{BREAK}{WAIT}@If only there were holes to{BREAK}crawl into...{BREAK}\0")

    .global gUnknown_08F1CFCF
gUnknown_08F1CFCF:
    JAPANESE_TEXT("◆わたしは ふしぎな{BREAK}にもつあずかりにん。{BREAK}{WAIT}◆ごようですか?{BREAK}\0")
    ENGLISH_TEXT("@I am the mysterious{BREAK}goods-keeper.{BREAK}{WAIT}@Can I help you?{BREAK}\0")

    .global gUnknown_08F1CFF1
gUnknown_08F1CFF1:
    JAPANESE_TEXT("◆ぼく ものまねが うまいんだぜ。{BREAK}\0")
    ENGLISH_TEXT("@I'm great at impressions,{BREAK}you know!{BREAK}\0")

    .global gUnknown_08F1D004
gUnknown_08F1D004:
    JAPANESE_TEXT("◆まちの ひがしのほうに{BREAK}あなが たくさんあるんだ。{BREAK}{WAIT}◆どの あなか わからないんだけど{BREAK}べつの せかいの おとが{BREAK}きこえてくるんだ。{BREAK}\0")
    ENGLISH_TEXT("@There's a whole bunch of{BREAK}holes east of town.{BREAK}{WAIT}@I'm not sure which hole it{BREAK}is, but you can hear{BREAK}otherworldly sounds coming{BREAK}from one.{BREAK}\0")

    .global gUnknown_08F1D04B
gUnknown_08F1D04B:
    JAPANESE_TEXT("◆あかいくさを ひっこぬいて{BREAK}いずみにつければ なんと{BREAK}マジックハ-ブになるだよ。{BREAK}\0")
    ENGLISH_TEXT("@If you pull out a Red Weed{BREAK}and put it in the fountain,{BREAK}{WAIT}it'll turn into a Magic{BREAK}Herb... just like magic!{BREAK}\0")

    .global gUnknown_08F1D076
gUnknown_08F1D076:
    JAPANESE_TEXT("◆でっかいふくろは いるかね?{BREAK}\0")
    ENGLISH_TEXT("@Could I interest you in a{BREAK}Big Bag?{BREAK}\0")

    .global gUnknown_08F1D087
gUnknown_08F1D087:
    JAPANESE_TEXT("◆じゃ あんたのキャッシュカ-ドを{BREAK}しばらくかしてくれんかね。{BREAK}\0")
    ENGLISH_TEXT("@In that case, could I{BREAK}borrow your ATM Card for a{BREAK}short while?{BREAK}\0")

    .global gUnknown_08F1D0A8
gUnknown_08F1D0A8:
    JAPANESE_TEXT("◆マジックハ-ブが 30たんいも{BREAK}はいっているんだぜ。{BREAK}\0")
    ENGLISH_TEXT("@It has 30 Magic Herbs{BREAK}inside it, in case you{BREAK}didn't know.{BREAK}\0")

    .global gUnknown_08F1D0C5
gUnknown_08F1D0C5:
    JAPANESE_TEXT("◆ありがとう かならず かえすよ。{BREAK}なんか{BREAK}カッコイイな とおもってね。{BREAK}\0")
    ENGLISH_TEXT("@Thanks. I promise I'll give{BREAK}it back.{BREAK}{WAIT}@It just seems... really{BREAK}cool.{BREAK}\0")

    .global gUnknown_08F1D0EB
gUnknown_08F1D0EB:
    JAPANESE_TEXT("◆あんたは にんげんを{BREAK}うたがうことを しっとるな。{BREAK}そのほうが いいかもしれんが……{BREAK}\0")
    ENGLISH_TEXT("@You don't trust others.{BREAK}{WAIT}@That might be for the best.{BREAK}Well, maybe...{BREAK}\0")

    .global gUnknown_08F1D118
gUnknown_08F1D118:
    JAPANESE_TEXT("◆ああ キャッシュカ-ドを{BREAK}かえさなきゃな。{BREAK}\0")
    ENGLISH_TEXT("@Oh, right, I need to return{BREAK}your ATM Card.{BREAK}\0")

    .global gUnknown_08F1D130
gUnknown_08F1D130:
    JAPANESE_TEXT("◆クイ-ンは いま ちょっと{BREAK}からだの ぐあいがわるいの。{BREAK}\0")
    ENGLISH_TEXT("@The queen isn't feeling{BREAK}very well right now...{BREAK}\0")

    .global gUnknown_08F1D14F
gUnknown_08F1D14F:
    JAPANESE_TEXT("◆あやしい かおだな。{BREAK}わしのナゾナゾがわかったら{BREAK}ここをとおして やるけどな……{BREAK}\0")
    ENGLISH_TEXT("@You look suspicious.{BREAK}{WAIT}@But I'll let you through if{BREAK}you can solve my little{BREAK}riddle...{BREAK}\0")

    .global gUnknown_08F1D17A
gUnknown_08F1D17A:
    JAPANESE_TEXT("◆そうでした。{BREAK}こたえは わに にひき。{BREAK}{WAIT}◆もんだいは{BREAK}まだ かんがえてなかったんだよ{BREAK}ヘヘヘ。{BREAK}\0")
    ENGLISH_TEXT("@That's right. The answer is{BREAK}…two alligators”.{BREAK}{WAIT}@I haven't thought up the{BREAK}question yet, though.{BREAK}{WAIT}Heheh.{BREAK}\0")

    .global gUnknown_08F1D1AE
gUnknown_08F1D1AE:
    JAPANESE_TEXT("◆ごきげんよう。{BREAK}\0")
    ENGLISH_TEXT("@Take care!{BREAK}\0")

    .global gUnknown_08F1D1B8
gUnknown_08F1D1B8:
    JAPANESE_TEXT("◆クイ-ンの うたを{BREAK}また ききたいな。{BREAK}\0")
    ENGLISH_TEXT("@I wish I could hear the{BREAK}queen's song again...{BREAK}\0")

    .global gUnknown_08F1D1CE
gUnknown_08F1D1CE:
    JAPANESE_TEXT("◆ハロ-!{BREAK}おれは てつがくしていたところだ。{BREAK}{WAIT}◆ギタ-のおとが じゃまで ものを{BREAK}かんがえられないよ。{BREAK}{WAIT}◆あっ!{BREAK}じぶんが ギタ-をひいていたのか。{BREAK}まいった まいった。{BREAK}{WAIT}◆……………………{BREAK}{WAIT}◆ここからの はなしは{BREAK}ぜったいに ないしょなんだが{BREAK}{WAIT}すっごく つよくなったら{BREAK}おれに あいにこい。{BREAK}{WAIT}◆それと このことは{BREAK}ぜったいに わすれないように{BREAK}メモなんか しとくと いいぞ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, hello!{BREAK}{WAIT}@I was just in the middle of{BREAK}pondering philosophical{BREAK}questions.{BREAK}{WAIT}@It's hard for me to focus{BREAK}with all this guitar music,{BREAK}though.{BREAK}{WAIT}@Oh! Whoops!{BREAK}{WAIT}I didn't realize I was the{BREAK}one playing the guitar!{BREAK}How careless of me!{BREAK}{WAIT}@.........{BREAK}{WAIT}@This is a secret between{BREAK}just you and me: come back{BREAK}here when you're stronger.{BREAK}{WAIT}@You should probably make a{BREAK}note of this now so you{BREAK}don't forget later.{BREAK}\0")

    .global gUnknown_08F1D299
gUnknown_08F1D299:
    JAPANESE_TEXT("◆おれを むししようとしたな。{BREAK}さみしいもんだぜ。{BREAK}こんなところで ひとりぼっちでさ。{BREAK}{WAIT}◆できることなら なんでもするぜ。{BREAK}ホラッ!{BREAK}\0")
    ENGLISH_TEXT("@You tried to ignore me,{BREAK}didn't you?{BREAK}{WAIT}@I get so lonely, being out{BREAK}here all by myself.{BREAK}{WAIT}@If there's anything I can{BREAK}do, I'll do it.{BREAK}{WAIT}@Here!{BREAK}\0")

    .global gUnknown_08F1D2DF
gUnknown_08F1D2DF:
    JAPANESE_TEXT("◆うれしいよな-{BREAK}おまえらが きてくれて。{BREAK}{WAIT}◆わかってるって{BREAK}やってほしいことは。{BREAK}ホラッ!{BREAK}\0")
    ENGLISH_TEXT("@I'm so happy you came!{BREAK}{WAIT}@I know just what you want.{BREAK}{WAIT}@Here you go!{BREAK}\0")

    .global gUnknown_08F1D311
gUnknown_08F1D311:
    JAPANESE_TEXT("◆おれ ついに うたをつくったんだ。{BREAK}きけ!{BREAK}おんがくずきの ぼうけんか{0x03}{0x17}よ。{BREAK}{WAIT}「キュ-ピ-にんぎょう なぜなくの{BREAK}それは カナリアが なくからよ{BREAK}{WAIT}サルが うたえば ピアノもうたう{BREAK}ピアノは おばけが ひくのかな{BREAK}{WAIT}さばくのサボテン さみしそう{BREAK}ひとりで よなよな うたってる{BREAK}{WAIT}ドラゴンたおれて おんぷがのこる{BREAK}イヴが うたって やまをのぼる{BREAK}{WAIT}XXいしの さいごの うたは{BREAK}クイ-ンマリ-に とどくかな{BREAK}{WAIT}ラララ ふしぎなララバイよ{BREAK}ララバイ バイバイ さようなら」{BREAK}{WAIT}◆いいうただろ。{BREAK}いいうただよなぁ……{BREAK}\0")
    ENGLISH_TEXT("@I finally wrote a song!{BREAK}Give it a listen, you{BREAK}music-loving adventurer!{BREAK}{WAIT}@Oh, baby doll, why do you{BREAK}weep?{BREAK}{WAIT}The saddened canary won't{BREAK}utter a peep.{BREAK}{WAIT}The monkey can sing,{BREAK}the piano - it chimes.{BREAK}{WAIT}Though ghosts will play out{BREAK}on its keyboard sometimes.{BREAK}{WAIT}Each night in the desert,{BREAK}the lone cactus croons.{BREAK}{WAIT}The dragon, when beaten,{BREAK}will carry some tunes.{BREAK}{WAIT}While scaling the mountain,{BREAK}EVE sings along.{BREAK}{WAIT}Will Queen Mary ever hear{BREAK}the XX Stone's last song?{BREAK}{WAIT}Lalala, what a mysterious{BREAK}lullaby.{BREAK}{WAIT}Lullaby, bye-bye, and{BREAK}goodbye.{BREAK}{WAIT}@What do you think? Nice{BREAK}song, huh?{BREAK}{WAIT}@It is, isn't it?{BREAK}\0")

    .global gUnknown_08F1D41D
gUnknown_08F1D41D:
    JAPANESE_TEXT("◆もりのおくに こどくをあいする{BREAK}ギタ-ひきが いるの。{BREAK}{WAIT}◆ちょっといいおとこで……{BREAK}しかも すっごく しじんなの。{BREAK}\0")
    ENGLISH_TEXT("@Deep in the forest is a{BREAK}guitar player who loves{BREAK}solitude.{BREAK}{WAIT}@He's kind of handsome...{BREAK}and a great poet, too.\0")

    .global gUnknown_08F1D45B
gUnknown_08F1D45B:
    JAPANESE_TEXT("◆……そんなきが……したわ。{BREAK}\0")
    ENGLISH_TEXT("@...That's what I figured.{BREAK}\0")

    .global gUnknown_08F1D46B
gUnknown_08F1D46B:
    JAPANESE_TEXT("◆おれは うたわないサルだ。{BREAK}{WAIT}◆でも ふつうサルってのは{BREAK}うたわないもんだ。{BREAK}しつもんは あるか?{BREAK}\0")
    ENGLISH_TEXT("@I'm an unsinging monkey.{BREAK}{WAIT}@But monkeys don't normally{BREAK}sing, anyway.{BREAK}{WAIT}@Any questions?{BREAK}\0")

    .global gUnknown_08F1D4A0
gUnknown_08F1D4A0:
    JAPANESE_TEXT("◆ぐもんだね……どうせ。{BREAK}\0")
    ENGLISH_TEXT("@I'm sure it's a dumb{BREAK}question, too.{BREAK}\0")

    .global gUnknown_08F1D4AE
gUnknown_08F1D4AE:
    JAPANESE_TEXT("◆よかった。{BREAK}つっこんだ しつもんをされたら{BREAK}どうしようと おもってたんだ。{BREAK}{WAIT}◆それにしても おまえ{BREAK}クイ-ンマリ-に かおが{BREAK}にてるなぁ。{BREAK}{WAIT}◆どうしてだろ。{BREAK}\0")
    ENGLISH_TEXT("@Whew, what a relief.{BREAK}{WAIT}@I was worried you were{BREAK}going to ask me something{BREAK}tough.{BREAK}{WAIT}@Say, you look kind of like{BREAK}Queen Mary.{BREAK}{WAIT}@I wonder why that is.\0")

    .global gUnknown_08F1D503
gUnknown_08F1D503:
    JAPANESE_TEXT("◆あんた{0x03}{0x17}に あったら{BREAK}いおうと おもってたんだ。{BREAK}{WAIT}◆せんろが なおって{BREAK}でんしゃが{BREAK}とおれるように なったってね。{BREAK}\0")
    ENGLISH_TEXT("@I wanted to tell you this{BREAK}as soon as I saw you...{BREAK}{WAIT}@The train tracks have been{BREAK}fixed, so the train can run{BREAK}through here again.{BREAK}\0")

    .global gUnknown_08F1D542
gUnknown_08F1D542:
    JAPANESE_TEXT("◆わたし{BREAK}いっしょうに いちどでいいから{BREAK}おしろに はいって{BREAK}{WAIT}◆マリ-さまの おかおを{BREAK}はいけんしたいわ。{BREAK}\0")
    ENGLISH_TEXT("@Just once, I'd like to go{BREAK}inside the castle and see{BREAK}what Queen Mary looks like.{BREAK}\0")

    .global gUnknown_08F1D57B
gUnknown_08F1D57B:
    JAPANESE_TEXT("◆たまに クイ-ンマリ-は{BREAK}うなされてるんだ。{BREAK}{WAIT}◆わるいこを しかりつけるような{BREAK}ことをいって{BREAK}{WAIT}◆こわい こわい となきさけぶのさ。{BREAK}{WAIT}◆そして{BREAK}うたを うたいはじめるんだ。{BREAK}ほんのすこしだけ……{BREAK}{WAIT}◆で おもいだせないって{BREAK}くるしがってさ。 あせびっしょり{BREAK}かいて めざめるわけさ。{BREAK}{WAIT}◆クイ-ンマリ-は むかし{BREAK}よっぽど かなしい{BREAK}ひどいめに あったのかな。{BREAK}\0")
    ENGLISH_TEXT("@Queen Mary often has{BREAK}nightmares.{BREAK}{WAIT}@She talks like she's{BREAK}punishing a naughty child{BREAK}{WAIT}and then cries out about{BREAK}being afraid.{BREAK}{WAIT}@Then she starts to sing a{BREAK}song, but only a short bit{BREAK}of it.{BREAK}{WAIT}@The fact she can't remember{BREAK}it seems to bring her pain.{BREAK}{WAIT}@Then she wakes up covered{BREAK}in sweat.{BREAK}{WAIT}@Something really sad{BREAK}must've happened to Queen{BREAK}Mary a long time ago...{BREAK}\0")

    .global gUnknown_08F1D639
gUnknown_08F1D639:
    JAPANESE_TEXT("◆でも{BREAK}おんなのこにしか あげないよ。{BREAK}\0")
    ENGLISH_TEXT("@But it's for girls only.{BREAK}\0")

    .global gUnknown_08F1D64E
gUnknown_08F1D64E:
    JAPANESE_TEXT("◆ぐ-ぐ-ぐ-……{BREAK}\0")
    ENGLISH_TEXT("@Zzzzz...{BREAK}\0")

    .global gUnknown_08F1D659
gUnknown_08F1D659:
    JAPANESE_TEXT("◆うそつきめ!{BREAK}\0")
    ENGLISH_TEXT("@You rotten liar!{BREAK}\0")

    .global gUnknown_08F1D662
gUnknown_08F1D662:
    JAPANESE_TEXT("◆あなた{0x03}{0x17}が このくにのひとで{BREAK}ないことは みんなしってるわ。{BREAK}でも なかまだと おもっているの。{BREAK}{WAIT}◆めのうのつりばり さえあれば{BREAK}いつでもかえってこられるはず。{BREAK}\0")
    ENGLISH_TEXT("@We all know you're not from{BREAK}here, but we consider you{BREAK}one of us just the same.{BREAK}{WAIT}@With the Onyx Hook, you can{BREAK}come back here any time.{BREAK}\0")

    .global gUnknown_08F1D6B8
gUnknown_08F1D6B8:
    JAPANESE_TEXT("◆きっと また かえってくるのよ。{BREAK}くるしいときに ここに……{BREAK}{WAIT}◆みんな あなた{0x03}{0x17}を{BREAK}すきなんだから。{BREAK}\0")
    ENGLISH_TEXT("@Don't hesitate to come{BREAK}visit us again whenever{BREAK}you're having a hard time.{BREAK}{WAIT}@Everyone here loves you.{BREAK}\0")

    .global gUnknown_08F1D6F0
gUnknown_08F1D6F0:
    JAPANESE_TEXT("◆ようこそ {0x03}{0x16}。{BREAK}{WAIT}◆このマジカントこくでは みんなが{BREAK}ともだちになれるし ほしいものは{BREAK}すきなだけ えられるのですよ。{BREAK}{WAIT}◆えっ{BREAK}わたしのうたが ききたいの?{BREAK}{WAIT}◆ごめんなさい。{BREAK}どうしても おもいだせない。{BREAK}{WAIT}◆いつか きっと{BREAK}おもいだして うたえるはず……{BREAK}{WAIT}◆あのうたを うたえたときに{BREAK}そう……なにかが おこるの。{BREAK}\0")
    ENGLISH_TEXT("@Welcome, {0x03}{0x16}.{BREAK}{WAIT}@Here in the land of{BREAK}Magicant, everyone is your{BREAK}friend{BREAK}{WAIT}and you can have as much as{BREAK}you like of whatever you{BREAK}want.{BREAK}{WAIT}@Oh? You want to hear my{BREAK}song?{BREAK}{WAIT}@I'm sorry. I don't know{BREAK}why, but I just can't seem{BREAK}to remember it.{BREAK}{WAIT}@I'm sure I'll be able to{BREAK}remember it someday...{BREAK}{WAIT}@If I can just sing it{BREAK}again, something will{BREAK}happen...{BREAK}{WAIT}I just know it.{BREAK}\0")

    .global gUnknown_08F1D79A
gUnknown_08F1D79A:
    JAPANESE_TEXT("◆……。{BREAK}\0")
    ENGLISH_TEXT("@......\0")

    .global gUnknown_08F1D7A0
gUnknown_08F1D7A0:
    JAPANESE_TEXT("◆あなた{0x03}{0x17}の おぼえてきたうたを{BREAK}わたしに きかせて。{BREAK}{WAIT}\0")
    ENGLISH_TEXT("@Let me hear the melodies{BREAK}you've learned...{BREAK}\0")

    .global gUnknown_08F1D7C0
gUnknown_08F1D7C0:
    JAPANESE_TEXT("◆そう。 そう……このうただった。{BREAK}\0")
    ENGLISH_TEXT("@Yes... That's it...{BREAK}That's the song...{BREAK}\0")

    .global gUnknown_08F1D7D3
gUnknown_08F1D7D3:
    JAPANESE_TEXT("◆ああ……ギ-グ……{BREAK}\0")
    ENGLISH_TEXT("@Oh... Giygas...{BREAK}\0")

    .global gUnknown_08F1D7DF
gUnknown_08F1D7DF:
    JAPANESE_TEXT("◆わたし このマジカントこくが{BREAK}きえて なくなっちゃう{BREAK}ゆめをみたのよ。{BREAK}{WAIT}◆まだ{BREAK}しんぞうが ドキドキしてるわ。{BREAK}\0")
    ENGLISH_TEXT("@I had a dream that Magicant{BREAK}vanished into thin air.{BREAK}{WAIT}@My heart's still pounding,{BREAK}even now.{BREAK}\0")

    .global gUnknown_08F1D81B
gUnknown_08F1D81B:
    JAPANESE_TEXT("◆ぼくは ぢめんを およぐねこ。{BREAK}ぼくの てのなかに{BREAK}はいってるものを あててごらん。{BREAK}\0")
    ENGLISH_TEXT("@I'm a cat that swims in the{BREAK}ground.{BREAK}{WAIT}@Can you guess what I'm{BREAK}holding in my paw?{BREAK}\0")

    .global gUnknown_08F1D848
gUnknown_08F1D848:
    JAPANESE_TEXT("◆ぼくの てのなかに{BREAK}はいっているものが みえたかい?{BREAK}{WAIT}◆そう。 リボン。{BREAK}ふしぎなちからのわくリボンさ。{BREAK}\0")
    ENGLISH_TEXT("@Did you see what I'm{BREAK}holding in my paw?{BREAK}{WAIT}@That's right. A ribbon.{BREAK}{WAIT}@This ribbon is overflowing{BREAK}with a special power.{BREAK}\0")

    .global gUnknown_08F1D881
gUnknown_08F1D881:
    JAPANESE_TEXT("◆おんなのこには{BREAK}このふしぎなリボンを あげようね。{BREAK}\0")
    ENGLISH_TEXT("@I'll only give this Magic{BREAK}Ribbon to a girl.{BREAK}\0")

    .global gUnknown_08F1D89D
gUnknown_08F1D89D:
    JAPANESE_TEXT("◆おれは およぐ ねこ。{BREAK}{WAIT}◆よわいこに ゆうきと ちからを{BREAK}あたえる キャンディを{BREAK}しってるかい?{BREAK}\0")
    ENGLISH_TEXT("@I'm a swimming cat.{BREAK}{WAIT}@Have you heard of a candy{BREAK}that gives courage and{BREAK}strength to weaklings?{BREAK}\0")

    .global gUnknown_08F1D8D2
gUnknown_08F1D8D2:
    JAPANESE_TEXT("◆そうか。 でも きみは{BREAK}つよいこだから いらないな。{BREAK}\0")
    ENGLISH_TEXT("@I see. But you're a strong{BREAK}boy, so I doubt you would{BREAK}need any.{BREAK}\0")

    .global gUnknown_08F1D8EF
gUnknown_08F1D8EF:
    JAPANESE_TEXT("◆そっちの メガネのこは{BREAK}よわそうだから あげような。{BREAK}\0")
    ENGLISH_TEXT("@That boy with the glasses{BREAK}seems pretty weak. I'll{BREAK}give the candy to him.{BREAK}\0")

    .global gUnknown_08F1D90C
gUnknown_08F1D90C:
    JAPANESE_TEXT("◆キャンディ おいしかっただろ?{BREAK}\0")
    ENGLISH_TEXT("@Pretty tasty candy, huh?{BREAK}\0")

    .global gUnknown_08F1D91E
gUnknown_08F1D91E:
    JAPANESE_TEXT("◆おたすけじいさんを{BREAK}よびたかったら{BREAK}マリ-の いずみに ゆくのだ。{BREAK}{WAIT}◆こころの さけびで やってくる。{BREAK}こころの さけびだ!{BREAK}\0")
    ENGLISH_TEXT("@If you need to see the{BREAK}helpful old man, go to{BREAK}Mary's Fountain.{BREAK}{WAIT}@He'll come if he hears a{BREAK}cry from the heart.{BREAK}{WAIT}@Remember, a cry from the{BREAK}heart!{BREAK}\0")

    .global gUnknown_08F1D961
gUnknown_08F1D961:
    JAPANESE_TEXT("◆(おきゃくは さわいだ。){BREAK}{WAIT}◆あの ぼうしかぶった いしは{BREAK}なんなんだよ! ブ-ブ-。{BREAK}\0")
    ENGLISH_TEXT("@(The crowd grows restless.){BREAK}{WAIT}@We didn't come to see no{BREAK}lousy rocks with hats on{BREAK}'em!{BREAK}{WAIT}Boo! Boo!{BREAK}\0")

    .global gUnknown_08F1D991
gUnknown_08F1D991:
    JAPANESE_TEXT("◆よんだか?{BREAK}\0")
    ENGLISH_TEXT("@Need something?{BREAK}\0")

    .global gUnknown_08F1D999
gUnknown_08F1D999:
    JAPANESE_TEXT("◆そうか。 さいなら。{BREAK}\0")
    ENGLISH_TEXT("@Oh, okay. Goodbye.{BREAK}\0")

    .global gUnknown_08F1D9A6
gUnknown_08F1D9A6:
    JAPANESE_TEXT("◆おかねが ひつようか?{BREAK}\0")
    ENGLISH_TEXT("@Do you need money?{BREAK}\0")

    .global gUnknown_08F1D9B4
gUnknown_08F1D9B4:
    JAPANESE_TEXT("◆やくにたってるかい?{BREAK}\0")
    ENGLISH_TEXT("@How is it? Are you finding{BREAK}it helpful?{BREAK}\0")

    .global gUnknown_08F1D9C1
gUnknown_08F1D9C1:
    JAPANESE_TEXT("◆そうか。{BREAK}{0x03}{0x19}ドル{BREAK}ぎんこうに あるようだが{BREAK}{WAIT}◆いくら ひきだす?{BREAK}\0")
    ENGLISH_TEXT("@I see.{BREAK}{WAIT}@You seem to have ${0x03}{0x19}{BREAK}in your account.{BREAK}{WAIT}@How much will you withdraw?{BREAK}\0")

    .global gUnknown_08F1D9E7
gUnknown_08F1D9E7:
    JAPANESE_TEXT("◆えいやっ ホカホカ。{BREAK}だいじにつかえよ。 さいなら。{BREAK}\0")
    ENGLISH_TEXT("@Hocus-pocus, allakazam!{BREAK}{WAIT}@Use it wisely. Goodbye.{BREAK}\0")

    .global gUnknown_08F1DA04
gUnknown_08F1DA04:
    JAPANESE_TEXT("◆そんなに ひきだせないぞ。{BREAK}やりなおせ。 さいなら。{BREAK}\0")
    ENGLISH_TEXT("@You can't withdraw that{BREAK}much.{BREAK}{WAIT}@You'll have to try again.{BREAK}Goodbye.{BREAK}\0")

    .global gUnknown_08F1DA21
gUnknown_08F1DA21:
    JAPANESE_TEXT("◆げんきんを そんなに もつな。{BREAK}かんがえなおせ。 さいなら。{BREAK}\0")
    ENGLISH_TEXT("@Don't carry so much cash{BREAK}with you.{BREAK}{WAIT}@Go think things over.{BREAK}See you later.{BREAK}\0")

    .global gUnknown_08F1DA42
gUnknown_08F1DA42:
    JAPANESE_TEXT("◆おれは わすれられたおとこ{BREAK}いないも どうぜん。{BREAK}{WAIT}◆きづいてくれなくても{BREAK}よかったのに……{BREAK}{WAIT}◆おれのことなんか{BREAK}むしして いいんだ。{BREAK}\0")
    ENGLISH_TEXT("@I'm a forgotten man.{BREAK}I might as well not exist.{BREAK}{WAIT}@You didn't have to notice{BREAK}me, you know...{BREAK}{WAIT}@Just go ahead and ignore{BREAK}me.{BREAK}\0")

    .global gUnknown_08F1DA8B
gUnknown_08F1DA8B:
    JAPANESE_TEXT("◆おれは どこにもいないおとこ{BREAK}やさしいことばなんて{BREAK}かけてくれたら こまっちゃうぜ。{BREAK}{WAIT}◆ひとこいしく なったら{BREAK}いきていけない。{BREAK}\0")
    ENGLISH_TEXT("@I'm a nowhere man.{BREAK}{WAIT}@It's best if you don't give{BREAK}me words of kindness.{BREAK}{WAIT}@I can't live on like this{BREAK}if I start to miss{BREAK}people...{BREAK}\0")

    .global gUnknown_08F1DAD0
gUnknown_08F1DAD0:
    JAPANESE_TEXT("◆おれのことばは{BREAK}いつも ひとりごと。{BREAK}{WAIT}◆うまれたときから きょうまで{BREAK}ずっと ひとりでいたおとこ。{BREAK}\0")
    ENGLISH_TEXT("@My conversations are always{BREAK}a monologue.{BREAK}{WAIT}@I've always been alone,{BREAK}from the moment I was born.{BREAK}\0")

    .global gUnknown_08F1DB06
gUnknown_08F1DB06:
    JAPANESE_TEXT("◆うんがいいとか わるいとか。{BREAK}そんなことは おれには{BREAK}かんけいないね。{BREAK}{WAIT}◆いきをするのに せいいっぱいさ。{BREAK}\0")
    ENGLISH_TEXT("@Good luck, bad luck...{BREAK}{WAIT}None of it makes a{BREAK}difference to me.{BREAK}{WAIT}@Sometimes just breathing is{BREAK}almost too much for me to{BREAK}handle.{BREAK}\0")

    .global gUnknown_08F1DB40
gUnknown_08F1DB40:
    JAPANESE_TEXT("◆なぜ そんなにしつこく{BREAK}おれに はなしかけるんだ。{BREAK}{WAIT}◆おまえも{BREAK}わすれられたおとこなのか?{BREAK}\0")
    ENGLISH_TEXT("@Why do you insist on{BREAK}talking to me?{BREAK}{WAIT}@Are you a forgotten man,{BREAK}too?{BREAK}\0")

    .global gUnknown_08F1DB72
gUnknown_08F1DB72:
    JAPANESE_TEXT("◆うそを つけ。{BREAK}おまえを まってる おんなのこの{BREAK}ところへ かえれ!!{BREAK}\0")
    ENGLISH_TEXT("@Liar! I know there's a girl{BREAK}waiting for you!{BREAK}{WAIT}Just leave me alone and go{BREAK}back to her!{BREAK}\0")

    .global gUnknown_08F1DB98
gUnknown_08F1DB98:
    JAPANESE_TEXT("◆そうさ。 そうだよな。{BREAK}そうなんだ。{BREAK}{WAIT}◆おまえも はやく おれのことを{BREAK}むししろよ。{BREAK}\0")
    ENGLISH_TEXT("@Yeah. That's what I{BREAK}figured. Yep.{BREAK}{WAIT}@Now just hurry and ignore{BREAK}me already.{BREAK}\0")

    .global gUnknown_08F1DBC7
gUnknown_08F1DBC7:
    JAPANESE_TEXT("◆そうだ。 ありがとうよ。{BREAK}\0")
    ENGLISH_TEXT("@Good. Thanks.{BREAK}\0")

    .global gUnknown_08F1DBD6
gUnknown_08F1DBD6:
    JAPANESE_TEXT("◆もちきれないようだな。{BREAK}また でなおしておいで。{BREAK}\0")
    ENGLISH_TEXT("@You seem to be holding too{BREAK}much stuff.{BREAK}{WAIT}@Come back for it later.\0")

    .global gUnknown_08F1DBF1
gUnknown_08F1DBF1:
    JAPANESE_TEXT("◆マザ-ズデイのあたりは なんか{BREAK}とんでもない じけんが{BREAK}おこってるらしいな。{BREAK}\0")
    ENGLISH_TEXT("@I heard some really weird{BREAK}stuff is happening over in{BREAK}Mother's Day...?{BREAK}\0")

    .global gUnknown_08F1DC1A
gUnknown_08F1DC1A:
    JAPANESE_TEXT("◆ゾンビが ゆうかいされて{BREAK}どうぶつが どうしたとか……{BREAK}めちゃくちゃらしいな。{BREAK}\0")
    ENGLISH_TEXT("@Something about a kidnapped{BREAK}zombie and animals doing{BREAK}something or other...{BREAK}{WAIT}It sounds absolutely nuts.{BREAK}\0")

    .global gUnknown_08F1DC44
gUnknown_08F1DC44:
    JAPANESE_TEXT("「サンクスギビングのまちに{BREAK}          ようこそ!!{BREAK}{WAIT}{BREAK}CM--{BREAK}やすくて はやくて いいおとこ。{BREAK}{WAIT}いしゃは ビッグベン・ケ-シ-に{BREAK}かぎる。{BREAK}{WAIT}いまなら とくべつ{BREAK}おおやすちりょう!!{BREAK}{WAIT}いのちは しんでもまもりたいもの」{BREAK}\0")
    ENGLISH_TEXT("Welcome to the town of{BREAK}Thanksgiving!!{BREAK}{WAIT}{BREAK}Advertisement: Cheap, fast,{BREAK}and handsome!{BREAK}{WAIT}Big Ben Casey can heal what{BREAK}ails you!{BREAK}{WAIT}Visit now for a{BREAK}super-discount checkup!{BREAK}{WAIT}Protect your life... to the{BREAK}death!{BREAK}\0")

    .global gUnknown_08F1DCC0
gUnknown_08F1DCC0:
    JAPANESE_TEXT("◆まずマネ-をみせてください。{BREAK}ちりょうは それからです。{BREAK}{WAIT}◆みせないなら{BREAK}こちらから きんがくを いいます。{BREAK}{WAIT}◆{0x03}{0x1E}ドルで{BREAK}あなた{0x03}{0x17}は なおる。{BREAK}{WAIT}◆これ あかじ かくごの{BREAK}しゅっけつサ-ビスです。{BREAK}OK?{BREAK}\0")
    ENGLISH_TEXT("@First show me some money.{BREAK}Then I'll heal you.{BREAK}{WAIT}@Otherwise I'll have to{BREAK}charge you my own price.{BREAK}{WAIT}@I can heal you for ${0x03}{0x1E}.{BREAK}{WAIT}@This is my special deal{BREAK}just for you. I'm actually{BREAK}losing money doing this.{BREAK}\0")

    .global gUnknown_08F1DD30
gUnknown_08F1DD30:
    JAPANESE_TEXT("◆はい。 たしかに{0x03}{0x1E}ドル。{BREAK}{WAIT}◆はい もうなおりました。{BREAK}{WAIT}◆また おおけがを{BREAK}してきてくださいね。{BREAK}やすくしとくから。{BREAK}\0")
    ENGLISH_TEXT("@Thanks for the ${0x03}{0x1E}.{BREAK}{WAIT}@Okay, you're all better{BREAK}now.{BREAK}{WAIT}@Please come back sometime.{BREAK}I'll give you another nice{BREAK}deal.{BREAK}\0")

    .global gUnknown_08F1DD71
gUnknown_08F1DD71:
    JAPANESE_TEXT("◆そうですか。{BREAK}そうぎやにでも{BREAK}でんわしときましょう。{BREAK}\0")
    ENGLISH_TEXT("@Oh, I see.{BREAK}{WAIT}@In that case, I'll call a{BREAK}mortician and give them{BREAK}advance notice.{BREAK}\0")

    .global gUnknown_08F1DD8E
gUnknown_08F1DD8E:
    JAPANESE_TEXT("◆かいげんれいが とかれるまで{BREAK}この はしを とおすなと{BREAK}{WAIT}◆ちょうちょうさんから{BREAK}めいれいされているのだ。{BREAK}{WAIT}◆どうぶつえんの ひがしの はしを{BREAK}とおりなさい。{BREAK}\0")
    ENGLISH_TEXT("@By mayor's orders, no one's{BREAK}to cross this bridge until{BREAK}martial law is lifted.{BREAK}{WAIT}@I suggest you use the{BREAK}bridge to the east of the{BREAK}zoo instead.{BREAK}\0")

    .global gUnknown_08F1DDE3
gUnknown_08F1DDE3:
    JAPANESE_TEXT("◆きみ がっこうは どうしたの。{BREAK}きょうは おやすみじゃないはずよ。{BREAK}\0")
    ENGLISH_TEXT("@Hey, why aren't you in{BREAK}school, kid?{BREAK}{WAIT}@I'm pretty sure today's a{BREAK}school day.{BREAK}\0")

    .global gUnknown_08F1DE07
gUnknown_08F1DE07:
    JAPANESE_TEXT("◆きたの ダンカンこうじょうから{BREAK}バッテリ-を かっぱらってきた。{BREAK}\0")
    ENGLISH_TEXT("@I swiped a battery from{BREAK}Duncan's Factory north of{BREAK}here.{BREAK}\0")

    .global gUnknown_08F1DE2A
gUnknown_08F1DE2A:
    JAPANESE_TEXT("◆このこうじょうは{BREAK}ダンカンさんの もちものです。{BREAK}{WAIT}◆つうこうきょかしょうは{BREAK}もっていますか?{BREAK}\0")
    ENGLISH_TEXT("@This factory is Mr.{BREAK}Duncan's private property.{BREAK}{WAIT}@Do you have a pass?{BREAK}\0")

    .global gUnknown_08F1DE5D
gUnknown_08F1DE5D:
    JAPANESE_TEXT("◆こりゃ{BREAK}きげんぎれですぜ おにいさん。{BREAK}ひろったものだな。{BREAK}{WAIT}◆あやしいやつ……{BREAK}{WAIT}◆おれの めを みろ!!{BREAK}\0")
    ENGLISH_TEXT("@Sorry, but this is expired,{BREAK}kid.{BREAK}{WAIT}@You swiped it, didn't you?{BREAK}{WAIT}@You're suspicious...{BREAK}{WAIT}@Look me in the eye!{BREAK}\0")

    .global gUnknown_08F1DE98
gUnknown_08F1DE98:
    JAPANESE_TEXT("◆すげぇ ばけものに{BREAK}やられちまった。{BREAK}{WAIT}◆えきにいくなら{BREAK}かくごしたほうが いいぜ。{BREAK}\0")
    ENGLISH_TEXT("@Some really strong monsters{BREAK}beat me up.{BREAK}{WAIT}@If you're headed for the{BREAK}train station, I'd watch{BREAK}out if I were you...{BREAK}\0")

    .global gUnknown_08F1DEC6
gUnknown_08F1DEC6:
    JAPANESE_TEXT("◆マザ-ズデイの まちの{BREAK}かいげんれいは{BREAK}とかれたんだってな。{BREAK}{WAIT}◆ってことは あのはしも{BREAK}とおれるように なったってことだ。{BREAK}ドゥ ユ- アンダスタン?{BREAK}\0")
    ENGLISH_TEXT("@I heard they lifted the{BREAK}order for martial law over{BREAK}in Mother's Day.{BREAK}{WAIT}@Which means we can cross{BREAK}that bridge now...{BREAK}{WAIT}@Get my drift?{BREAK}\0")

    .global gUnknown_08F1DF16
gUnknown_08F1DF16:
    JAPANESE_TEXT("◆よわむし{0x03}{0x11}のやつを{BREAK}いじめてたんだけど{BREAK}にげられちまった。{BREAK}\0")
    ENGLISH_TEXT("@I was teasing that wimp{BREAK}{0x03}{0x11} just now, but he got{BREAK}away.{BREAK}\0")

    .global gUnknown_08F1DF37
gUnknown_08F1DF37:
    JAPANESE_TEXT("◆おい {0x03}{0x11}……{BREAK}よわむしけむし!{BREAK}\0")
    ENGLISH_TEXT("@Hey, you weakling,{BREAK}stinkling {0x03}{0x11}!{BREAK}\0")

    .global gUnknown_08F1DF4A
gUnknown_08F1DF4A:
    JAPANESE_TEXT("◆よわむし{0x03}{0x11}のやつを{BREAK}いじめてたんですよね せんぱい。{BREAK}\0")
    ENGLISH_TEXT("@You've been picking on that{BREAK}weakling {0x03}{0x11}, haven't{BREAK}you?{BREAK}\0")

    .global gUnknown_08F1DF68
gUnknown_08F1DF68:
    JAPANESE_TEXT("◆なんだ ひやかしか!{BREAK}\0")
    ENGLISH_TEXT("@What?! That was just a{BREAK}joke?!{BREAK}\0")

    .global gUnknown_08F1DF75
gUnknown_08F1DF75:
    JAPANESE_TEXT("◆{0x03}{0x11}ったら ばくやくを{BREAK}もちだしちゃったらしいの。{BREAK}{WAIT}◆せんせいに みつかったら{BREAK}たいへんだわ。{BREAK}\0")
    ENGLISH_TEXT("@I heard that {0x03}{0x11} ran off{BREAK}with some explosives.{BREAK}{WAIT}@He's in big trouble if a{BREAK}teacher finds him...{BREAK}\0")

    .global gUnknown_08F1DFA9
gUnknown_08F1DFA9:
    JAPANESE_TEXT("◆{0x03}{0x11}{BREAK}めがねが ずれてるわよ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x11}. Your glasses are{BREAK}slipping.{BREAK}\0")

    .global gUnknown_08F1DFBB
gUnknown_08F1DFBB:
    JAPANESE_TEXT("◆あたし ス-ジ-。{BREAK}ミス・いなかまちにえらばれたのよ。{BREAK}きれい?{BREAK}\0")
    ENGLISH_TEXT("@I'm Suzy. I won the Miss{BREAK}Middle of Nowhere pageant.{BREAK}Do you think I'm pretty?{BREAK}\0")

    .global gUnknown_08F1DFDE
gUnknown_08F1DFDE:
    JAPANESE_TEXT("◆あなたも すてきよ。{BREAK}\0")
    ENGLISH_TEXT("@You're really cute, too.{BREAK}\0")

    .global gUnknown_08F1DFEB
gUnknown_08F1DFEB:
    JAPANESE_TEXT("◆あなたのほうが ブス!{BREAK}うすのろぶたって かんじよ!{BREAK}\0")
    ENGLISH_TEXT("@You're way uglier than me!{BREAK}{WAIT}@Stupid Face is what they{BREAK}should call you!{BREAK}\0")

    .global gUnknown_08F1E008
gUnknown_08F1E008:
    JAPANESE_TEXT("◆おくじょうのドアが{BREAK}しまっててよぉ。{BREAK}{WAIT}◆トランジスタラジオでも{BREAK}ききながら{BREAK}{WAIT}◆サボろうと{BREAK}おもってたのによぉ なっ?!{BREAK}\0")
    ENGLISH_TEXT("@The door to the roof is{BREAK}locked.{BREAK}{WAIT}@I was plannin' to ditch{BREAK}class and listen to the{BREAK}radio on the roof, too!{BREAK}{WAIT}Weren't you?!{BREAK}\0")

    .global gUnknown_08F1E04A
gUnknown_08F1E04A:
    JAPANESE_TEXT("◆むくちな やつ。{BREAK}\0")
    ENGLISH_TEXT("@Geez, you don't talk much,{BREAK}do you?{BREAK}\0")

    .global gUnknown_08F1E055
gUnknown_08F1E055:
    JAPANESE_TEXT("◆たいいくの せんこうに{BREAK}たたかれた。{BREAK}{WAIT}◆ふりょうに なっちまおうかなぁ{BREAK}……おれ。{BREAK}\0")
    ENGLISH_TEXT("@The gym teacher hit me.{BREAK}{WAIT}@Maybe I should drop out and{BREAK}become a thug...{BREAK}\0")

    .global gUnknown_08F1E083
gUnknown_08F1E083:
    JAPANESE_TEXT("◆じぶんのがっこうで{BREAK}まいごになるなんて{BREAK}……ほんとに もうっ!{BREAK}\0")
    ENGLISH_TEXT("@Getting lost in your own{BREAK}school...{BREAK}{WAIT}@Can you get any more lame?!{BREAK}\0")

    .global gUnknown_08F1E0A5
gUnknown_08F1E0A5:
    JAPANESE_TEXT("◆おくじょうのドアが{BREAK}あかないって いうのか。{BREAK}\0")
    ENGLISH_TEXT("@Oh, the door to the roof is{BREAK}locked?{BREAK}\0")

    .global gUnknown_08F1E0BE
gUnknown_08F1E0BE:
    JAPANESE_TEXT("◆ぶくぶくふとるばっかしでよ。{BREAK}ひでぇおんなだろ?{BREAK}\0")
    ENGLISH_TEXT("@All she does is get fatter{BREAK}and fatter.{BREAK}{WAIT}@Isn't she a terrible woman?{BREAK}\0")

    .global gUnknown_08F1E0D9
gUnknown_08F1E0D9:
    JAPANESE_TEXT("◆こどもにゃ わからねぇ。{BREAK}じんせいのかなしみは……{BREAK}\0")
    ENGLISH_TEXT("@A kid like you wouldn't{BREAK}understand the sorrows of{BREAK}life...{BREAK}\0")

    .global gUnknown_08F1E0F5
gUnknown_08F1E0F5:
    JAPANESE_TEXT("◆おまえに うちのにょうぼうのことを{BREAK}そんなふうにいわれる すじあいは{BREAK}ないね。 でてってくれ。{BREAK}\0")
    ENGLISH_TEXT("@How dare you talk about my{BREAK}wife like that!{BREAK}{WAIT}@Get out!{BREAK}\0")

    .global gUnknown_08F1E127
gUnknown_08F1E127:
    JAPANESE_TEXT("◆わかいときゃ かわいかったんだ。{BREAK}そうさ いいところもあるんだよ。{BREAK}{WAIT}◆ま おちゃでものんでくかい?{BREAK}\0")
    ENGLISH_TEXT("@She was pretty when she was{BREAK}young.{BREAK}{WAIT}@Yeah, come to think of it,{BREAK}she has her good points,{BREAK}too.{BREAK}{WAIT}@Say, how about some tea?{BREAK}\0")

    .global gUnknown_08F1E15D
gUnknown_08F1E15D:
    JAPANESE_TEXT("◆はなしのわかるこどもだな。{BREAK}あ おくじょうに{BREAK}いきたいんだっけな。{BREAK}{WAIT}◆じゃ ついておいで。{BREAK}\0")
    ENGLISH_TEXT("@You're a pretty smart kid.{BREAK}{WAIT}@Oh, that's right, you want{BREAK}to go up to the roof.{BREAK}{WAIT}@All right, then. Follow me.{BREAK}\0")

    .global gUnknown_08F1E18F
gUnknown_08F1E18F:
    JAPANESE_TEXT("◆としよりを だいじにしないと{BREAK}おとなになって なきをみるぞ。{BREAK}\0")
    ENGLISH_TEXT("@Cherish your elders or{BREAK}you'll be sorry when YOU{BREAK}grow old!{BREAK}\0")

    .global gUnknown_08F1E1B0
gUnknown_08F1E1B0:
    JAPANESE_TEXT("◆なんだ{BREAK}こんなあぶないものを もって。{BREAK}これは あずかっておくぞ。{BREAK}\0")
    ENGLISH_TEXT("@Hold on. What are you doing{BREAK}with something as dangerous{BREAK}as that?{BREAK}{WAIT}@I think I'LL hold on to{BREAK}this for you.{BREAK}\0")

    .global gUnknown_08F1E1D4
gUnknown_08F1E1D4:
    JAPANESE_TEXT("◆ま おちゃを のみなって。{BREAK}なッ。{BREAK}\0")
    ENGLISH_TEXT("@Say, you should stay a{BREAK}while and have some tea.{BREAK}\0")

    .global gUnknown_08F1E1E8
gUnknown_08F1E1E8:
    JAPANESE_TEXT("◆ろうかを はしるんじゃ{BREAK}ありませんよ!{BREAK}\0")
    ENGLISH_TEXT("@No running in the halls!{BREAK}\0")

    .global gUnknown_08F1E1FE
gUnknown_08F1E1FE:
    JAPANESE_TEXT("◆コラッ みかけないこどもだな。{BREAK}このがっこうの せいとか?{BREAK}\0")
    ENGLISH_TEXT("@Hey! I haven't seen you{BREAK}before, kid!{BREAK}{WAIT}@Do you even go to this{BREAK}school?{BREAK}\0")

    .global gUnknown_08F1E21E
gUnknown_08F1E21E:
    JAPANESE_TEXT("◆そうか ろうかをはしるなよ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, okay. Just don't run in{BREAK}the halls.{BREAK}\0")

    .global gUnknown_08F1E22F
gUnknown_08F1E22F:
    JAPANESE_TEXT("◆もちものを みせてみろ。{BREAK}{WAIT}◆あぶないものは{BREAK}もっていないだろうな。{BREAK}\0")
    ENGLISH_TEXT("@Show me what you have.{BREAK}{WAIT}@You better not be carrying{BREAK}anything dangerous...{BREAK}\0")

    .global gUnknown_08F1E255
gUnknown_08F1E255:
    JAPANESE_TEXT("◆きみは だれだ!{BREAK}ぼくは ここからでないぞ。{BREAK}{WAIT}◆でたら きっと{BREAK}いじめられるんだから。{BREAK}\0")
    ENGLISH_TEXT("@Who's there?!{BREAK}{WAIT}@I'm not coming out!{BREAK}{WAIT}@You're just gonna pick on{BREAK}me if I do!{BREAK}\0")

    .global gUnknown_08F1E285
gUnknown_08F1E285:
    JAPANESE_TEXT("◆ぼくが{BREAK}だいじなともだちだって!?{BREAK}{WAIT}◆じゃあ りかしつから ばくやくを{BREAK}もちだしたことを{BREAK}だまっててくれるか?{BREAK}\0")
    ENGLISH_TEXT("@You want to be my friend?!{BREAK}{WAIT}@Then do you promise not to{BREAK}tell that I took explosives{BREAK}from the science lab?{BREAK}\0")

    .global gUnknown_08F1E2C1
gUnknown_08F1E2C1:
    JAPANESE_TEXT("◆いま でる。{BREAK}\0")
    ENGLISH_TEXT("@I'm coming out now.{BREAK}\0")

    .global gUnknown_08F1E2CA
gUnknown_08F1E2CA:
    JAPANESE_TEXT("◆ぼく {0x03}{0x11}。{BREAK}スイ-トリトルこうじょうで{BREAK}つくってたっていう{BREAK}{WAIT}ペンシルロケットを{BREAK}とばして みたくてさ。{BREAK}\0")
    ENGLISH_TEXT("@I'm {0x03}{0x11}.{BREAK}{WAIT}@I heard they make Bottle{BREAK}Rockets at the Sweet Little{BREAK}Factory south of here...{BREAK}{WAIT}I wanna launch one really{BREAK}bad!{BREAK}\0")

    .global gUnknown_08F1E303
gUnknown_08F1E303:
    JAPANESE_TEXT("◆つかれてるでしょ。{BREAK}とまっていけば?{BREAK}\0")
    ENGLISH_TEXT("@You must be exhausted.{BREAK}You should stay the night!{BREAK}\0")

    .global gUnknown_08F1E318
gUnknown_08F1E318:
    JAPANESE_TEXT("◆わぁっ{BREAK}これが あの うわさの{BREAK}ペンシルロケットか。{BREAK}{WAIT}◆これなら おなじものを{BREAK}つくれるかもしれないぞ。{BREAK}{WAIT}◆りかしつに きてくれ。{BREAK}\0")
    ENGLISH_TEXT("@Wow!{BREAK}{WAIT}@So this is a Bottle Rocket!{BREAK}I heard so much about them!{BREAK}{WAIT}@I should be able to make{BREAK}more of these now.{BREAK}{WAIT}@Come with me to the science{BREAK}lab.{BREAK}\0")

    .global gUnknown_08F1E360
gUnknown_08F1E360:
    JAPANESE_TEXT("◆{0x03}{0x11}{BREAK}「いいぞ!{BREAK}よし このスイッチを オンだな。{BREAK}{WAIT}……きっと。 あっ。」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x11}: OK! Now I just flip{BREAK}this switch and... Oh!\0")

    .global gUnknown_08F1E38A
gUnknown_08F1E38A:
    JAPANESE_TEXT("◆{0x03}{0x11}{BREAK}「こんどこそ よわむしのぼくが{BREAK}たたかう ばんだ。{BREAK}{WAIT}{0x03}{0x13}! きみは{BREAK}ここで やすんでいてくれ。」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x11}: I may be a wimp,{BREAK}but now it's my turn to{BREAK}fight!{BREAK}{WAIT}@{0x03}{0x13}! You can take it{BREAK}easy in here.{BREAK}\0")

    .global gUnknown_08F1E3C2
gUnknown_08F1E3C2:
    JAPANESE_TEXT("◆わしは じぶんでもわかっておるが{BREAK}このがっこうに かくれすんでいる{BREAK}かわりもののせんせいだ。{BREAK}{WAIT}◆けんきゅうひが ほしい。{BREAK}わしの はつめいを{BREAK}かってくれんか?{BREAK}\0")
    ENGLISH_TEXT("@I'm a weird teacher who{BREAK}secretly lives in this{BREAK}school.{BREAK}{WAIT}Yes, I admit I'm weird.{BREAK}{WAIT}@I need funding for my{BREAK}research.{BREAK}{WAIT}@Would you be willing to buy{BREAK}one of my inventions?{BREAK}\0")

    .global gUnknown_08F1E416
gUnknown_08F1E416:
    JAPANESE_TEXT("◆じゃ メニュ-をみてくれ。{BREAK}\0")
    ENGLISH_TEXT("@Then have a look at my{BREAK}goods.{BREAK}\0")

    .global gUnknown_08F1E426
gUnknown_08F1E426:
    JAPANESE_TEXT("◆おとしだまくらい もってるだろう。{BREAK}\0")
    ENGLISH_TEXT("@Come on, you gotta have{BREAK}at least SOME allowance{BREAK}money...{BREAK}\0")

    .global gUnknown_08F1E43A
gUnknown_08F1E43A:
    JAPANESE_TEXT("◆また いつでも きてくれ。{BREAK}いいものをつくっておくからな。{BREAK}\0")
    ENGLISH_TEXT("@Come back anytime.{BREAK}{WAIT}@I'll have some more nice{BREAK}stuff ready for you.{BREAK}\0")

    .global gUnknown_08F1E45A
gUnknown_08F1E45A:
    JAPANESE_TEXT("◆あれから はつめいが{BREAK}すすんどらんのだよ。{BREAK}むかしの メニュ-をみるか?{BREAK}\0")
    ENGLISH_TEXT("@I haven't made any progress{BREAK}with my inventions since{BREAK}your last visit.{BREAK}{WAIT}@Would you like to see my{BREAK}older items?{BREAK}\0")

    .global gUnknown_08F1E481
gUnknown_08F1E481:
    JAPANESE_TEXT("◆さっき ラジオで きいたんだけど{BREAK}あっちもこっちも パニックらしい。{BREAK}このえきだけは おいらがまもるぞ。{BREAK}\0")
    ENGLISH_TEXT("@I heard on the radio just{BREAK}now that major panics are{BREAK}breaking out everywhere.{BREAK}{WAIT}@I WILL protect this train{BREAK}station, no matter what!{BREAK}\0")

    .global gUnknown_08F1E4B8
gUnknown_08F1E4B8:
    JAPANESE_TEXT("◆きしゃが どこまで はしれるかは{BREAK}ほしょうできないけど うんちんは{BREAK}とるよ。{BREAK}{WAIT}◆きしゃにのるかい?{BREAK}\0")
    ENGLISH_TEXT("@I can't guarantee this{BREAK}train'll go very far, but{BREAK}you'll still need to pay.{BREAK}{WAIT}@Are you gonna ride the{BREAK}train?{BREAK}\0")

    .global gUnknown_08F1E4EE
gUnknown_08F1E4EE:
    JAPANESE_TEXT("◆({0x03}{0x16}は{BREAK}ぶきを とりあげられた。){BREAK}\0")
    ENGLISH_TEXT("@({0x03}{0x16}'s weapon was{BREAK}confiscated.){BREAK}\0")

    .global gUnknown_08F1E503
gUnknown_08F1E503:
    JAPANESE_TEXT("◆じゃ {0x03}{0x1E}ドルになります。{BREAK}\0")
    ENGLISH_TEXT("@That'll be ${0x03}{0x1E}, then.{BREAK}\0")

    .global gUnknown_08F1E513
gUnknown_08F1E513:
    JAPANESE_TEXT("◆きみの もってる ぼうしは{BREAK}{WAIT}スノ-マンのまちの{BREAK}{0x03}{0x12}ちゃんの{BREAK}わすれものらしいね。{BREAK}{WAIT}◆とどけてあげたまえ。{BREAK}\0")
    ENGLISH_TEXT("@It looks like that hat you{BREAK}have belongs to a girl{BREAK}named {0x03}{0x12} in Snowman.{BREAK}{WAIT}@You should go and return it{BREAK}to her.{BREAK}\0")

    .global gUnknown_08F1E54F
gUnknown_08F1E54F:
    JAPANESE_TEXT("◆ながいき しなされ。{BREAK}\0")
    ENGLISH_TEXT("@May you live a long life.\0")

    .global gUnknown_08F1E55C
gUnknown_08F1E55C:
    JAPANESE_TEXT("◆にょうぼうを さがしに{BREAK}イ-スタ-の まちに いく{BREAK}ところだよ{BREAK}{WAIT}◆でも せんろが こわれたとかで{BREAK}おてあげなんだ。{BREAK}\0")
    ENGLISH_TEXT("@I was on my way to the town{BREAK}of Easter to find my wife.{BREAK}{WAIT}@But with the train tracks{BREAK}busted, I have no way to{BREAK}get there now...{BREAK}\0")

    .global gUnknown_08F1E59A
gUnknown_08F1E59A:
    JAPANESE_TEXT("◆ちいさなおせっかいが ゲ-ムを{BREAK}おもしろくするコツですな。{BREAK}\0")
    ENGLISH_TEXT("@Poking your nose into other{BREAK}people's business is what{BREAK}makes playing games so fun!{BREAK}\0")

    .global gUnknown_08F1E5BA
gUnknown_08F1E5BA:
    JAPANESE_TEXT("◆はい あげる。{BREAK}\0")
    ENGLISH_TEXT("@Here you go.{BREAK}\0")

    .global gUnknown_08F1E5C4
gUnknown_08F1E5C4:
    JAPANESE_TEXT("◆ペテンひげをはやしたおとこを{BREAK}みかけたか?{BREAK}\0")
    ENGLISH_TEXT("@Have you seen a man with a{BREAK}sinister mustache?{BREAK}\0")

    .global gUnknown_08F1E5DC
gUnknown_08F1E5DC:
    JAPANESE_TEXT("◆にげられたようだな。{BREAK}あきらめて ちゅうしゃいはんでも{BREAK}つかまえよう。{BREAK}\0")
    ENGLISH_TEXT("@Sounds like he got away.{BREAK}{WAIT}@Guess I'll just go and{BREAK}catch me some more parking{BREAK}violators then.{BREAK}\0")

    .global gUnknown_08F1E602
gUnknown_08F1E602:
    JAPANESE_TEXT("◆とんでもない サギしなんだ。{BREAK}みかけたらおしえてくれ。{BREAK}\0")
    ENGLISH_TEXT("@He's a big-time scam{BREAK}artist.{BREAK}{WAIT}@If you see him, let me know{BREAK}immediately!{BREAK}\0")

    .global gUnknown_08F1E620
gUnknown_08F1E620:
    JAPANESE_TEXT("◆おっと ぼうず このかねを{BREAK}あずかってくれ。{BREAK}{WAIT}◆けいかんに あってもしらんぷり{BREAK}するんだぞ。{BREAK}\0")
    ENGLISH_TEXT("@Whoa, hey, kid!{BREAK}{WAIT}Hold on to this money for{BREAK}me, will ya?{BREAK}{WAIT}@If you run into any cops,{BREAK}act like you never saw me.{BREAK}\0")

    .global gUnknown_08F1E653
gUnknown_08F1E653:
    JAPANESE_TEXT("◆もちにげするなよ!{BREAK}\0")
    ENGLISH_TEXT("@Don't run off with it, now!{BREAK}\0")

    .global gUnknown_08F1E65F
gUnknown_08F1E65F:
    JAPANESE_TEXT("◆さからうんじゃねえ!{BREAK}\0")
    ENGLISH_TEXT("@You'll do what I say!{BREAK}\0")

    .global gUnknown_08F1E66C
gUnknown_08F1E66C:
    JAPANESE_TEXT("◆ひとが ひっしでにげてるときに{BREAK}はなしかけるんじゃないよッ!{BREAK}\0")
    ENGLISH_TEXT("@Quit bugging me!{BREAK}{WAIT}I'm trying to make a{BREAK}getaway here!{BREAK}\0")

    .global gUnknown_08F1E68D
gUnknown_08F1E68D:
    JAPANESE_TEXT("◆すごく はらのでた おとこを{BREAK}みたか?{BREAK}\0")
    ENGLISH_TEXT("@Have you seen a man with a{BREAK}huge gut?{BREAK}\0")

    .global gUnknown_08F1E6A3
gUnknown_08F1E6A3:
    JAPANESE_TEXT("◆にげられたようだな。{BREAK}あきらめてスピ-ドいはんでも{BREAK}つかまえよう。{BREAK}\0")
    ENGLISH_TEXT("@Looks like he got away.{BREAK}{WAIT}@Guess I'll just go and{BREAK}catch some speeders then...{BREAK}\0")

    .global gUnknown_08F1E6C7
gUnknown_08F1E6C7:
    JAPANESE_TEXT("◆{0x03}{0x15}を 5にんまえも{BREAK}くいにげしたんだ。{BREAK}みかけたらおしえてくれ。{BREAK}\0")
    ENGLISH_TEXT("@He ate five orders of{BREAK}{0x03}{0x15} and then ran off{BREAK}without paying.{BREAK}{WAIT}@If you see him, let me know{BREAK}immediately!{BREAK}\0")

    .global gUnknown_08F1E6EB
gUnknown_08F1E6EB:
    JAPANESE_TEXT("◆ああ はらがきつい。 ゲ-ップ。{BREAK}\0")
    ENGLISH_TEXT("@Oof, my stomach's so full.{BREAK}(belch)\0")

    .global gUnknown_08F1E6FE
gUnknown_08F1E6FE:
    JAPANESE_TEXT("◆このまちも{BREAK}ぶっそうになったもんだ。{BREAK}{WAIT}◆だけど バレンタインのまちよりは{BREAK}ましだよ。{BREAK}\0")
    ENGLISH_TEXT("@Things've gotten mighty{BREAK}dangerous in this town.{BREAK}{WAIT}@But it's still a whole lot{BREAK}better than the city of{BREAK}Valentine, that's for sure.{BREAK}\0")

    .global gUnknown_08F1E72D
gUnknown_08F1E72D:
    JAPANESE_TEXT("◆オ- イエ-ッ! のってるかい?{BREAK}\0")
    ENGLISH_TEXT("@Oh, yeah!! You feelin' it?!{BREAK}\0")

    .global gUnknown_08F1E740
gUnknown_08F1E740:
    JAPANESE_TEXT("◆イエイッ! おいらのうたを{BREAK}ききたいかい?{BREAK}\0")
    ENGLISH_TEXT("@Right on!{BREAK}{WAIT}You wanna hear me sing?!{BREAK}\0")

    .global gUnknown_08F1E758
gUnknown_08F1E758:
    JAPANESE_TEXT("◆おいらは じてんしゃにのってるぜ。{BREAK}\0")
    ENGLISH_TEXT("@I'm feelin' glum.{BREAK}\0")

    .global gUnknown_08F1E76C
gUnknown_08F1E76C:
    JAPANESE_TEXT("◆もう おわかれのじかんに{BREAK}なっちまうのかい……{BREAK}\0")
    ENGLISH_TEXT("@It's time to say goodbye{BREAK}already?{BREAK}\0")

    .global gUnknown_08F1E786
gUnknown_08F1E786:
    JAPANESE_TEXT("◆ドラゴンの こもりうた きいた?{BREAK}\0")
    ENGLISH_TEXT("@Have you heard the dragon's{BREAK}lullaby?{BREAK}\0")

    .global gUnknown_08F1E799
gUnknown_08F1E799:
    JAPANESE_TEXT("◆ハロウィ-ンのまちのどこかに……{BREAK}{WAIT}◆ゆ{BREAK}{WAIT}◆ゆっ{BREAK}{WAIT}◆ゆゆゆゆ{BREAK}{WAIT}◆ゆうれいやしきが あるそうよ。{BREAK}ぜったいに いかないほうがいいわ。{BREAK}\0")
    ENGLISH_TEXT("@I heard that there's a{BREAK}h-h-haunted house in the{BREAK}town of Halloween.{BREAK}{WAIT}@I dunno about you, but I'd{BREAK}never go anywhere near that{BREAK}place!{BREAK}\0")

    .global gUnknown_08F1E7E4
gUnknown_08F1E7E4:
    JAPANESE_TEXT("◆なんでもいいから ものをくれ。{BREAK}{WAIT}◆くれ。{BREAK}{WAIT}◆ください。{BREAK}{WAIT}◆くれますか?{BREAK}\0")
    ENGLISH_TEXT("@Give me something.{BREAK}Anything.{BREAK}{WAIT}@Gimme.{BREAK}{WAIT}@Please.{BREAK}{WAIT}@Pretty please?{BREAK}\0")

    .global gUnknown_08F1E810
gUnknown_08F1E810:
    JAPANESE_TEXT("◆おれいは ぜひ させてもらうよ。{BREAK}\0")
    ENGLISH_TEXT("@I'll give you something in{BREAK}return, of course.{BREAK}\0")

    .global gUnknown_08F1E823
gUnknown_08F1E823:
    JAPANESE_TEXT("◆いいものを あげるんだけどなぁ。{BREAK}\0")
    ENGLISH_TEXT("@I was gonna give you{BREAK}something good in return,{BREAK}too...{BREAK}\0")

    .global gUnknown_08F1E836
gUnknown_08F1E836:
    JAPANESE_TEXT("◆なにをくれるね?{BREAK}\0")
    ENGLISH_TEXT("@What will you give me?{BREAK}\0")

    .global gUnknown_08F1E841
gUnknown_08F1E841:
    JAPANESE_TEXT("◆ありがとうよ。 これはおれいの{BREAK}ノミとシラミだ。{BREAK}もっていってくれ。{BREAK}\0")
    ENGLISH_TEXT("@Thanks. In return, here are{BREAK}some fleas and lice.{BREAK}{WAIT}@Take them with you.{BREAK}\0")

    .global gUnknown_08F1E866
gUnknown_08F1E866:
    JAPANESE_TEXT("◆カゼが はやってて……{BREAK}ハ-ックショ-イ!{BREAK}んちくしょおっ!{BREAK}\0")
    ENGLISH_TEXT("@A cold's been going around{BREAK}lately...{BREAK}{WAIT}@Achoo!{BREAK}{WAIT}@Argh! This sucks!{BREAK}\0")

    .global gUnknown_08F1E887
gUnknown_08F1E887:
    JAPANESE_TEXT("◆やまのなかに……{BREAK}{WAIT}◆かぜひとつひかずに{BREAK}300ねん いきてるっていう{BREAK}よげんしゃのじいさんがいるらしい。{BREAK}\0")
    ENGLISH_TEXT("@I heard there's a prophetic{BREAK}old man in the mountains{BREAK}{WAIT}who's lived for 300 years{BREAK}without ever catching a{BREAK}cold.{BREAK}\0")

    .global gUnknown_08F1E8C0
gUnknown_08F1E8C0:
    JAPANESE_TEXT("◆ひひぇひゃひょ ひょひょひへ{BREAK}ふはく ひゃひぇひぇひゃひんひゃ。{BREAK}\0")
    ENGLISH_TEXT("@A aann aak eey ell iiow ma{BREAK}ennas.{BREAK}\0")

    .global gUnknown_08F1E8E3
gUnknown_08F1E8E3:
    JAPANESE_TEXT("◆いまの せんせいと{BREAK}ふつうに しゃべるのは{BREAK}わたしでも むりです。{BREAK}\0")
    ENGLISH_TEXT("@Not even I can hold a{BREAK}normal conversation with{BREAK}him like this...{BREAK}\0")

    .global gUnknown_08F1E907
gUnknown_08F1E907:
    JAPANESE_TEXT("◆おお{BREAK}いればを さがしてくれたおれいに{BREAK}ながいきのひけつをおしえてやろう。{BREAK}{WAIT}◆うがいを よく することじゃ。{BREAK}{WAIT}◆カゼをひいたら うがいでなおせ。{BREAK}{WAIT}◆わしの とくせいの{BREAK}うがいぐすりを もっていきなさい。{BREAK}ホレ。{BREAK}\0")
    ENGLISH_TEXT("@Oh! In exchange for finding{BREAK}my dentures,{BREAK}{WAIT}I'll share with you my{BREAK}secret to living a long{BREAK}life.{BREAK}{WAIT}@And that secret is...{BREAK}{WAIT}...to gargle all the time.{BREAK}{WAIT}@If you catch a cold, go and{BREAK}gargle until it's gone.{BREAK}{WAIT}@Here. Take some of my{BREAK}special mouthwash with you.{BREAK}\0")

    .global gUnknown_08F1E979
gUnknown_08F1E979:
    JAPANESE_TEXT("◆また うがいぐすりですか?{BREAK}さぁ もっていきなさい。{BREAK}{WAIT}◆こんどは{0x03}{0x1E}ドル{BREAK}いただきますよ。{BREAK}ガラガラッ ペッ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you want more{BREAK}mouthwash?{BREAK}{WAIT}@All right, here you go.{BREAK}{WAIT}@From now on, it'll cost you{BREAK}${0x03}{0x1E}, though.{BREAK}{WAIT}(gargle gargle spit){BREAK}\0")

    .global gUnknown_08F1E9B5
gUnknown_08F1E9B5:
    JAPANESE_TEXT("◆カゼがげんいんで{BREAK}しんじゃったやつも いるらしいぜ。{BREAK}\0")
    ENGLISH_TEXT("@I've heard that some people{BREAK}have died from catching a{BREAK}cold.{BREAK}{WAIT}Just a cold!{BREAK}\0")

    .global gUnknown_08F1E9D2
gUnknown_08F1E9D2:
    JAPANESE_TEXT("◆ハロウィ-ンのまちの{BREAK}ゆうれいやしきの はなしは{BREAK}きいたかい?{BREAK}\0")
    ENGLISH_TEXT("@Have you heard about{BREAK}Halloween's haunted house?{BREAK}\0")

    .global gUnknown_08F1E9F4
gUnknown_08F1E9F4:
    JAPANESE_TEXT("◆だれもいないやしきから{BREAK}ピアノの メロディ-が{BREAK}きこえてくるんだってな。{BREAK}\0")
    ENGLISH_TEXT("@They say you can hear a{BREAK}piano melody coming from{BREAK}inside,{BREAK}{WAIT}even though the house is{BREAK}empty.{BREAK}\0")

    .global gUnknown_08F1EA1B
gUnknown_08F1EA1B:
    JAPANESE_TEXT("◆しらなきゃ しらないほうがいい。{BREAK}\0")
    ENGLISH_TEXT("@In that case, it's best{BREAK}that you don't know.{BREAK}\0")

    .global gUnknown_08F1EA2E
gUnknown_08F1EA2E:
    JAPANESE_TEXT("◆ふっふっふっふふふ。{BREAK}\0")
    ENGLISH_TEXT("@Heh heh heh heh.{BREAK}\0")

    .global gUnknown_08F1EA3B
gUnknown_08F1EA3B:
    JAPANESE_TEXT("◆だれも いないよ。 くっくっく。{BREAK}\0")
    ENGLISH_TEXT("@No one's home.{BREAK}Keeheehee...{BREAK}\0")

    .global gUnknown_08F1EA4E
gUnknown_08F1EA4E:
    JAPANESE_TEXT("◆これは あくむ。{BREAK}さめることのない わるいゆめ……{BREAK}ひっひっひ。{BREAK}\0")
    ENGLISH_TEXT("@This is a nightmare.{BREAK}{WAIT}@A bad dream you'll never,{BREAK}ever wake from...{BREAK}{WAIT}@Hee hee hee...\0")

    .global gUnknown_08F1EA71
gUnknown_08F1EA71:
    JAPANESE_TEXT("◆か  え  れ{BREAK}\0")
    ENGLISH_TEXT("@G O  B A C K{BREAK}\0")

    .global gUnknown_08F1EA7B
gUnknown_08F1EA7B:
    JAPANESE_TEXT("◆ギャ-----ッ!{BREAK}\0")
    ENGLISH_TEXT("@Gyaaaa!{BREAK}\0")

    .global gUnknown_08F1EA87
gUnknown_08F1EA87:
    JAPANESE_TEXT("◆{0x03}{0x16}! しぬぞ。{BREAK}ひっひっひっひっひっひっひっひっ{BREAK}……くくくくく。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16}.{BREAK}{WAIT}@You're going to die.{BREAK}{WAIT}@Heeheehee hehehe!{BREAK}{WAIT}...Keeheeheehee!{BREAK}\0")

    .global gUnknown_08F1EAAC
gUnknown_08F1EAAC:
    JAPANESE_TEXT("◆あっしは{BREAK}あやしい ねずみじゃありやせん。{BREAK}{WAIT}◆ピアノのあるへや……{BREAK}へっへっへ。{BREAK}\0")
    ENGLISH_TEXT("@A suspicious rat... I am{BREAK}not.{BREAK}{WAIT}@The room with the piano...{BREAK}{WAIT}@Heheheh...!{BREAK}\0")

    .global gUnknown_08F1EAD9
gUnknown_08F1EAD9:
    JAPANESE_TEXT("◆ゆうれいやしきは{BREAK}ロ-ズマリ-さんの ものだ。{BREAK}\0")
    ENGLISH_TEXT("@The haunted house belongs{BREAK}to the Rosemarys.{BREAK}\0")

    .global gUnknown_08F1EAF3
gUnknown_08F1EAF3:
    JAPANESE_TEXT("◆おれのうちも{BREAK}ゆうれいがでるように{BREAK}なったんだけどさ。{BREAK}{WAIT}◆うさぎごやみたいに せまいから{BREAK}イヤだって でてったよ。{BREAK}\0")
    ENGLISH_TEXT("@A ghost started showing up{BREAK}at my house, too.{BREAK}{WAIT}@It finally left 'cause it{BREAK}hated how cramped it was.{BREAK}\0")

    .global gUnknown_08F1EB31
gUnknown_08F1EB31:
    JAPANESE_TEXT("◆わたしは{BREAK}このまちの にんげんというよりは{BREAK}ゲ-ムのアシスタントなの。{BREAK}{WAIT}◆あなた メモしわすれていること{BREAK}あるんじゃない?{BREAK}{WAIT}◆ひとつのヒントを{BREAK}{0x03}{0x1E}ドルで おしえるけど{BREAK}かう?{BREAK}\0")
    ENGLISH_TEXT("@I'm more like a game{BREAK}assistant than a citizen of{BREAK}this town.{BREAK}{WAIT}@Surely there are things{BREAK}you've forgotten to jot{BREAK}down notes about, right?{BREAK}{WAIT}@I can give you a hint for{BREAK}${0x03}{0x1E}. What do you say?{BREAK}\0")

    .global gUnknown_08F1EB90
gUnknown_08F1EB90:
    JAPANESE_TEXT("◆あら ずいぶん じしんがあるのね。{BREAK}じゃ もう あわないようにするわ。{BREAK}\0")
    ENGLISH_TEXT("@Oh. You're really confident{BREAK}about yourself.{BREAK}{WAIT}@Then I'll make sure we{BREAK}never meet again.\0")

    .global gUnknown_08F1EBB6
gUnknown_08F1EBB6:
    JAPANESE_TEXT("◆ヒントは3つまでよ。{BREAK}あとは……  ひ・み・つ。{BREAK}\0")
    ENGLISH_TEXT("@I can give you up to three{BREAK}hints.{BREAK}{WAIT}@Everything else is a{BREAK}S-E-C-R-E-T.{BREAK}\0")

    .global gUnknown_08F1EBD1
gUnknown_08F1EBD1:
    JAPANESE_TEXT("◆このハロウィ-ンのまちで{BREAK}いちばんの ひょうきんものが{BREAK}おれさ。{BREAK}{WAIT}◆ほかのやつらって{BREAK}なんか インキだろ?{BREAK}\0")
    ENGLISH_TEXT("@I'm the most upbeat person{BREAK}here in Halloween.{BREAK}{WAIT}@Everyone else seems so{BREAK}gloomy, wouldn't you say?{BREAK}\0")

    .global gUnknown_08F1EC0B
gUnknown_08F1EC0B:
    JAPANESE_TEXT("◆そうなんだよな。{BREAK}おれも ほんとは あかるいほうでも{BREAK}ないんだ……{BREAK}\0")
    ENGLISH_TEXT("@Yeah, huh.{BREAK}{WAIT}@To be honest, I'm not that{BREAK}cheerful a person either...{BREAK}\0")

    .global gUnknown_08F1EC2F
gUnknown_08F1EC2F:
    JAPANESE_TEXT("◆そうかなぁ。{BREAK}{WAIT}◆おれ{BREAK}じぶんが くらいのかも{BREAK}しれないな。{BREAK}\0")
    ENGLISH_TEXT("@I dunno.{BREAK}{WAIT}@Maybe I'M actually the{BREAK}gloomy one.{BREAK}\0")

    .global gUnknown_08F1EC51
gUnknown_08F1EC51:
    JAPANESE_TEXT("◆うちのやしきが{BREAK}ばけもののすみかに{BREAK}なってしまって……{BREAK}{WAIT}◆わしらは こんなところでくらして{BREAK}いるですよ。{BREAK}\0")
    ENGLISH_TEXT("@Our home turned into a hive{BREAK}for ghosts and monsters...{BREAK}{WAIT}@So now we live out here.{BREAK}\0")

    .global gUnknown_08F1EC8A
gUnknown_08F1EC8A:
    JAPANESE_TEXT("◆{0x03}{0x11}{BREAK}「きみの もってる{BREAK}ロケットの ねんりょうは{BREAK}{WAIT}ほらっ ぼくのもってる この……{BREAK}{WAIT}◆すっごいだろ。 あっ!」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x11}: I can use the fuel{BREAK}from your rocket and...{BREAK}{WAIT}Then, if I use it with{BREAK}this...{BREAK}{WAIT}@Pretty cool, huh?{BREAK}{WAIT}Ahh!{BREAK}\0")

    .global gUnknown_08F1ECC9
gUnknown_08F1ECC9:
    JAPANESE_TEXT("◆くらくて よくみえないが{BREAK}あんた{0x03}{0x17}は もしかすると{BREAK}{WAIT}◆スノ-マンまちの きょうかいの{BREAK}むすめさん{0x03}{0x17}だな…… たしか{BREAK}{0x03}{0x12}ちゃん…… とかいう。{BREAK}{WAIT}◆おかあさんは ずっとおくのへやに{BREAK}とじこめられて いるはずだ。{BREAK}{WAIT}◆しかし わたしたちを{BREAK}いま たすけるのは むりだ。{BREAK}{WAIT}◆とにかく あの マザ-シップを{BREAK}なんとか できなければ……{BREAK}\0")
    ENGLISH_TEXT("@It's too dark to see much,{BREAK}but aren't you that girl{BREAK}from the church in Snowman?{BREAK}{WAIT}@{0x03}{0x12}, was it?{BREAK}{WAIT}@Your mom is being held in a{BREAK}room in the back.{BREAK}{WAIT}@But you can't save us right{BREAK}now.{BREAK}{WAIT}@You gotta find a way to{BREAK}deal with the mothership{BREAK}first...{BREAK}\0")

    .global gUnknown_08F1ED78
gUnknown_08F1ED78:
    JAPANESE_TEXT("◆おお!{BREAK}うちゅうくうかんへと とびさった。{BREAK}あるいみで だいせいこうだ。{BREAK}\0")
    ENGLISH_TEXT("@Oh! It flew off into outer{BREAK}space.{BREAK}{WAIT}@A great success... sort of.{BREAK}\0")

    .global gUnknown_08F1ED9F
gUnknown_08F1ED9F:
    JAPANESE_TEXT("◆まぁ あなたって ほんとうに{BREAK}すてきなかた……{BREAK}{WAIT}◆いつまでも{BREAK}みつめていたいくらい……{BREAK}{WAIT}◆あなたなら きっと あのやしきを{BREAK}とりもどして くれるわね……{BREAK}{WAIT}◆ハイ これが あのいえのカギよ。{BREAK}うふっ。{BREAK}\0")
    ENGLISH_TEXT("@Oh! You're such a charming{BREAK}boy!{BREAK}{WAIT}@Why, I could just gaze at{BREAK}you forever...{BREAK}{WAIT}@If anyone can turn our{BREAK}mansion back to normal, I'm{BREAK}sure it's you.{BREAK}{WAIT}@Here. This is the key to{BREAK}get in.{BREAK}{WAIT}(giggle){BREAK}\0")

    .global gUnknown_08F1EE0B
gUnknown_08F1EE0B:
    JAPANESE_TEXT("◆ぼくちゃん{BREAK}{0x03}{0x10}っていうの。{BREAK}{WAIT}◆もとの なまえは{BREAK}バグエラ-・ロ-ズマリ-{BREAK}っていうんだ。{BREAK}\0")
    ENGLISH_TEXT("@My name is {0x03}{0x10}.{BREAK}{WAIT}@It used to be Bugerror{BREAK}Rosemary, though.{BREAK}\0")

    .global gUnknown_08F1EE3D
gUnknown_08F1EE3D:
    JAPANESE_TEXT("◆{0x03}{0x10}のバカ!{BREAK}{WAIT}◆いえ{BREAK}うちのこに いったんですのよ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10}! You big dummy!{BREAK}{WAIT}@Oh, sorry, I was talking to{BREAK}my son, not you.\0")

    .global gUnknown_08F1EE5C
gUnknown_08F1EE5C:
    JAPANESE_TEXT("◆ゆうれいは{BREAK}まだ でるみたいだけど{BREAK}{WAIT}あなたって ほんとうに{BREAK}ゆうかんなかた!{BREAK}{WAIT}◆わたし……{BREAK}むすこに あなた{0x03}{0x17}の なまえを{BREAK}いただきましたのよ。{BREAK}\0")
    ENGLISH_TEXT("@The ghosts haven't quite{BREAK}left yet, but you're such a{BREAK}brave boy!{BREAK}{WAIT}@In fact, I even renamed my{BREAK}son after you.{BREAK}\0")

    .global gUnknown_08F1EEAC
gUnknown_08F1EEAC:
    JAPANESE_TEXT("◆しゅうてんの スノ-マンえきだ。{BREAK}\0")
    ENGLISH_TEXT("@This is Snowman Station,{BREAK}the last stop.{BREAK}\0")

    .global gUnknown_08F1EEBF
gUnknown_08F1EEBF:
    JAPANESE_TEXT("◆イ-スタ-のまちでは{BREAK}じゅうみんが ぜんぶ{BREAK}かみかくしにあっちまったらしいよ。{BREAK}\0")
    ENGLISH_TEXT("@I heard all the citizens of{BREAK}Easter were spirited away.{BREAK}\0")

    .global gUnknown_08F1EEE9
gUnknown_08F1EEE9:
    JAPANESE_TEXT("◆ママが イ-スタ-のまちに{BREAK}いってるの。{BREAK}{WAIT}◆なんにちも れんらくがないから{BREAK}パパとさがしにいくのよ。{BREAK}\0")
    ENGLISH_TEXT("@My mommy's in the town of{BREAK}Easter.{BREAK}{WAIT}@We haven't heard from her{BREAK}in days,{BREAK}{WAIT}so Daddy and I are going{BREAK}there to look for her.{BREAK}\0")

    .global gUnknown_08F1EF20
gUnknown_08F1EF20:
    JAPANESE_TEXT("◆ハロウィ-ンのまちの{BREAK}ゆうれいやしきには いったか?{BREAK}\0")
    ENGLISH_TEXT("@Have you been to the{BREAK}haunted house in Halloween?{BREAK}\0")

    .global gUnknown_08F1EF3D
gUnknown_08F1EF3D:
    JAPANESE_TEXT("◆こんど ゆっくり{BREAK}はなしを きかせてくれ。{BREAK}{WAIT}◆おれは コワイはなしが{BREAK}だいすきなんだ。{BREAK}\0")
    ENGLISH_TEXT("@You HAVE to tell me all{BREAK}about it sometime.{BREAK}{WAIT}@I just love scary stories!\0")

    .global gUnknown_08F1EF6D
gUnknown_08F1EF6D:
    JAPANESE_TEXT("◆おれは いきたくないけど{BREAK}おまえ いくといいぞ。{BREAK}\0")
    ENGLISH_TEXT("@I don't wanna visit it,{BREAK}but you probably should.{BREAK}\0")

    .global gUnknown_08F1EF88
gUnknown_08F1EF88:
    JAPANESE_TEXT("◆このスノ-マンのまちは{BREAK}さむいから カゼひくなよ。{BREAK}{WAIT}◆はみがきも しろよ。{BREAK}{WAIT}◆ゴホッ ゴホッ……{BREAK}\0")
    ENGLISH_TEXT("@It's freezing here in{BREAK}Snowman. Be careful not to{BREAK}catch a cold.{BREAK}{WAIT}@And be sure to brush your{BREAK}teeth, too.{BREAK}{WAIT}@(cough cough){BREAK}\0")

    .global gUnknown_08F1EFBF
gUnknown_08F1EFBF:
    JAPANESE_TEXT("◆じんせいは ゲ-ムよ。{BREAK}やすんだり もどったりも{BREAK}だいじなのよ。{BREAK}\0")
    ENGLISH_TEXT("@Life is a game.{BREAK}{WAIT}@Sometimes it's important to{BREAK}rest and pick up where you{BREAK}left off later.{BREAK}\0")

    .global gUnknown_08F1EFE2
gUnknown_08F1EFE2:
    JAPANESE_TEXT("◆{0x03}{0x12}が{BREAK}がっこうやすんでるから{BREAK}しんぱいでよう。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x12} hasn't been at{BREAK}school lately.{BREAK}{WAIT}I'm really worried.{BREAK}\0")

    .global gUnknown_08F1EFFD
gUnknown_08F1EFFD:
    JAPANESE_TEXT("◆おれ {0x03}{0x12}のことが{BREAK}しんぱいで しんぱいで{BREAK}よるも ねられねぇ。{BREAK}\0")
    ENGLISH_TEXT("@I'm so worried about {0x03}{0x12}{BREAK}that I can't sleep at{BREAK}night.{BREAK}\0")

    .global gUnknown_08F1F020
gUnknown_08F1F020:
    JAPANESE_TEXT("◆かねが たりないぜ。{BREAK}\0")
    ENGLISH_TEXT("@You don't have enough{BREAK}money.{BREAK}\0")

    .global gUnknown_08F1F02D
gUnknown_08F1F02D:
    JAPANESE_TEXT("◆あれあれ ハナミズがたれてるよ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, my! Your nose is{BREAK}running!{BREAK}\0")

    .global gUnknown_08F1F040
gUnknown_08F1F040:
    JAPANESE_TEXT("◆ちょっと このゲ-ムをしている{BREAK}プレイヤ- のかたに{BREAK}かわってくれないか。{BREAK}\0")
    ENGLISH_TEXT("@Say, could I speak to the{BREAK}person playing this game?{BREAK}\0")

    .global gUnknown_08F1F068
gUnknown_08F1F068:
    JAPANESE_TEXT("◆だいじな ようじが あるんだ。{BREAK}\0")
    ENGLISH_TEXT("@It's really important.{BREAK}\0")

    .global gUnknown_08F1F07A
gUnknown_08F1F07A:
    JAPANESE_TEXT("◆もしもし いつも {0x03}{0x10}が{BREAK}おせわになっております。{BREAK}{WAIT}◆わたくし そのこのちちで{BREAK}ございますが{BREAK}{WAIT}◆あなたさまの おなまえを{BREAK}きかせて いただこうと{BREAK}ぞんじまして……{BREAK}{WAIT}◆よろしくおねがい いたします。{BREAK}\0")
    ENGLISH_TEXT("@Hello, this is {0x03}{0x10}'s{BREAK}father. Thank you for{BREAK}always looking after him.{BREAK}{WAIT}@I thought it would be nice{BREAK}to at least know your name.{BREAK}{WAIT}@So, if you could tell me,{BREAK}that'd be great.{BREAK}\0")

    .global gUnknown_08F1F0E5
gUnknown_08F1F0E5:
    JAPANESE_TEXT("◆どうも おいそがしいところを{BREAK}ありがとうございました。{BREAK}{WAIT}◆わたくしも いそがしいので{BREAK}では これでしつれいいたします。{BREAK}\0")
    ENGLISH_TEXT("@Thank you for your time.{BREAK}{WAIT}@I'm a busy man myself, so I{BREAK}must be going now. Goodbye!{BREAK}\0")

    .global gUnknown_08F1F125
gUnknown_08F1F125:
    JAPANESE_TEXT("◆{0x03}{0x16}……でしょ?{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16}... right?{BREAK}\0")

    .global gUnknown_08F1F130
gUnknown_08F1F130:
    JAPANESE_TEXT("◆ふざけないでね。{BREAK}\0")
    ENGLISH_TEXT("@Come on, quit joking{BREAK}around.{BREAK}\0")

    .global gUnknown_08F1F13B
gUnknown_08F1F13B:
    JAPANESE_TEXT("◆わたしが{BREAK}ママを さがしにいくために{BREAK}{WAIT}あなた{0x03}{0x17}の たすけが{BREAK}ひつようだったの。{BREAK}まっていたわ……{0x03}{0x16}。{BREAK}{WAIT}◆まず イ-スタ-のまちへ{BREAK}いってみましょう。{BREAK}\0")
    ENGLISH_TEXT("@I've been waiting for you.{BREAK}{WAIT}@I need your help to find my{BREAK}mom.{BREAK}{WAIT}@Let's start by seeing{BREAK}what's happening in the{BREAK}town of Easter.{BREAK}\0")

    .global gUnknown_08F1F18E
gUnknown_08F1F18E:
    JAPANESE_TEXT("◆あなたに とってもよくにたひとを{BREAK}ゆめで みたことがあるわ。{BREAK}\0")
    ENGLISH_TEXT("@You know, I had a dream{BREAK}about someone who looked{BREAK}just like you...{BREAK}\0")

    .global gUnknown_08F1F1AF
gUnknown_08F1F1AF:
    JAPANESE_TEXT("◆{0x03}{0x10}……そばにいて?{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10}...{BREAK}Please stay with me.{BREAK}\0")

    .global gUnknown_08F1F1BC
gUnknown_08F1F1BC:
    JAPANESE_TEXT("◆いやっ!{BREAK}そばにいて……おねがい。{BREAK}\0")
    ENGLISH_TEXT("@No! Stay with me...{BREAK}{WAIT}Please...{BREAK}\0")

    .global gUnknown_08F1F1D0
gUnknown_08F1F1D0:
    JAPANESE_TEXT("◆しずかね。 おどりましょ?{BREAK}\0")
    ENGLISH_TEXT("@It's so quiet here.{BREAK}{WAIT}@Would you like to dance?{BREAK}\0")

    .global gUnknown_08F1F1E0
gUnknown_08F1F1E0:
    JAPANESE_TEXT("◆……そうね。{BREAK}こんなことしてるときじゃないわね。{BREAK}ごめんなさい。{BREAK}\0")
    ENGLISH_TEXT("@...You're right. This isn't{BREAK}the time for that.{BREAK}{WAIT}I'm sorry for asking.{BREAK}\0")

    .global gUnknown_08F1F203
gUnknown_08F1F203:
    JAPANESE_TEXT("◆{0x03}{0x10}……{BREAK}わたしのこと すき?{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10}...{BREAK}{WAIT}@Do you like me?{BREAK}\0")

    .global gUnknown_08F1F215
gUnknown_08F1F215:
    JAPANESE_TEXT("◆{0x03}{0x11}ったら どうしたの。{BREAK}\0")
    ENGLISH_TEXT("@What's wrong, {0x03}{0x11}?{BREAK}\0")

    .global gUnknown_08F1F224
gUnknown_08F1F224:
    JAPANESE_TEXT("◆ドラゴンは ねむっている。{BREAK}{WAIT}◆いまの {0x03}{0x16}には{BREAK}まだ ドラゴンを{BREAK}おこすことは できない。{BREAK}\0")
    ENGLISH_TEXT("@The dragon is asleep.{BREAK}{WAIT}@{0x03}{0x16} can't wake it up{BREAK}just yet.{BREAK}\0")

    .global gUnknown_08F1F256
gUnknown_08F1F256:
    JAPANESE_TEXT("◆{0x03}{0x16}のけはいを かんじて{BREAK}ドラゴンが めをさました。{BREAK}{WAIT}「ワタシヨリ ヨワイモノニ{BREAK}コノ ガクフヲ ワタスコトハ{BREAK}デキナイ。」{BREAK}\0")
    ENGLISH_TEXT("@The dragon sensed {0x03}{0x16}'s{BREAK}presence and awoke.{BREAK}{WAIT}@…NO ONE WEAKER THAN ME CAN{BREAK}HAVE THIS SHEET MUSIC.”{BREAK}\0")

    .global gUnknown_08F1F299
gUnknown_08F1F299:
    JAPANESE_TEXT("◆むすめの{0x03}{0x12}は{BREAK}おくびょうだけれど{BREAK}{WAIT}やさしいこころと ふしぎなちからを{BREAK}もっている。{BREAK}\0")
    ENGLISH_TEXT("@My daughter {0x03}{0x12} is{BREAK}timid, but she has a kind{BREAK}heart and mysterious power.{BREAK}\0")

    .global gUnknown_08F1F2C8
gUnknown_08F1F2C8:
    JAPANESE_TEXT("◆あなたがたは{BREAK}かならず しょうりする。{BREAK}{WAIT}◆わたしたちのいのりが{BREAK}きっと ちかいうちに{BREAK}ききとどけられるだろう。{BREAK}{WAIT}◆いまは おやすみ。{BREAK}\0")
    ENGLISH_TEXT("@You children WILL be{BREAK}victorious.{BREAK}{WAIT}@I have faith that our{BREAK}prayers will be heard soon.{BREAK}{WAIT}@For now, get some rest.{BREAK}\0")

    .global gUnknown_08F1F311
gUnknown_08F1F311:
    JAPANESE_TEXT("◆{0x03}{0x3E}は おとしものの{BREAK}つうこうきょかしょうを みつけた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} found a pass that{BREAK}someone dropped.{BREAK}\0")

    .global gUnknown_08F1F330
gUnknown_08F1F330:
    JAPANESE_TEXT("◆{0x03}{0x16}{0x03}{0x17}は{BREAK}ロケットに のりこんだ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16}{0x03}{0x17} climbed{BREAK}into the rocket.{BREAK}\0")

    .global gUnknown_08F1F345
gUnknown_08F1F345:
    JAPANESE_TEXT("◆アドベントのさばくに{BREAK}おじいちゃんがいるの。{BREAK}もしあったら よろしくね。{BREAK}\0")
    ENGLISH_TEXT("@My grandpa lives in the{BREAK}Advent Desert.{BREAK}{WAIT}@If you see him, tell him I{BREAK}say hi.{BREAK}\0")

    .global gUnknown_08F1F36C
gUnknown_08F1F36C:
    JAPANESE_TEXT("◆わたしは{BREAK}よいひとの しかばねです。{BREAK}{WAIT}◆だから おそいかかったり{BREAK}しませんよ。{BREAK}\0")
    ENGLISH_TEXT("@I'm a nice guy's corpse.{BREAK}{WAIT}@So don't worry, I won't{BREAK}attack you or anything like{BREAK}that.{BREAK}\0")

    .global gUnknown_08F1F398
gUnknown_08F1F398:
    JAPANESE_TEXT("◆わたし めじるしとして{BREAK}べんりでしょ。{BREAK}\0")
    ENGLISH_TEXT("@I make a useful signpost,{BREAK}wouldn't you say?{BREAK}\0")

    .global gUnknown_08F1F3AE
gUnknown_08F1F3AE:
    JAPANESE_TEXT("◆したいに はなしかけるなんて{BREAK}どきょうのあるこどもだなぁ。{BREAK}\0")
    ENGLISH_TEXT("@You're one gutsy kid,{BREAK}talking to dead bodies...{BREAK}\0")

    .global gUnknown_08F1F3CE
gUnknown_08F1F3CE:
    JAPANESE_TEXT("◆わたしゃ ラクダのホネですが{BREAK}さばくでの あるきかたを{BREAK}しりたいですか?{BREAK}\0")
    ENGLISH_TEXT("@I'm a camel's bones.{BREAK}{WAIT}@Would you like some tips{BREAK}for walking through the{BREAK}desert?{BREAK}\0")

    .global gUnknown_08F1F3F5
gUnknown_08F1F3F5:
    JAPANESE_TEXT("◆みぎあしが しずみこむまえに{BREAK}ひだりあしを だす。{BREAK}{WAIT}◆ひだりあしが しずむまえに{BREAK}みぎあしを だす。{BREAK}{WAIT}◆これが わかるのに ひゃくねんも{BREAK}かかったです。{BREAK}\0")
    ENGLISH_TEXT("@Move your left foot before{BREAK}your right foot sinks.{BREAK}{WAIT}@Move your right foot before{BREAK}your left foot sinks.{BREAK}{WAIT}@It took me 100 years to{BREAK}figure this out.{BREAK}\0")

    .global gUnknown_08F1F448
gUnknown_08F1F448:
    JAPANESE_TEXT("◆おしえたいなぁ。 しりたいですか?{BREAK}\0")
    ENGLISH_TEXT("@Oh, but I wanna tell you.{BREAK}{WAIT}@Wouldn't you like to know?{BREAK}\0")

    .global gUnknown_08F1F45C
gUnknown_08F1F45C:
    JAPANESE_TEXT("◆このゲ-ムのなかで{BREAK}いちばん たいくつなのは{BREAK}このアドベントのさばくなんです。{BREAK}{WAIT}◆でも ほんとに ぢらいには{BREAK}きをつけてね。{BREAK}\0")
    ENGLISH_TEXT("@Advent Desert is the most{BREAK}boring part of this game.{BREAK}{WAIT}@But watch out for land{BREAK}mines...{BREAK}\0")

    .global gUnknown_08F1F49F
gUnknown_08F1F49F:
    JAPANESE_TEXT("「アドベントさばく{BREAK}ゆうらんひこうは いかがかね?」{BREAK}\0")
    ENGLISH_TEXT("…Advent Desert”{BREAK}Why not take a sightseeing{BREAK}flight?{BREAK}\0")

    .global gUnknown_08F1F4BB
gUnknown_08F1F4BB:
    JAPANESE_TEXT("◆わしは まえのまえの{BREAK}せんそうのときに このさばくに{BREAK}ぢらいをうめたんじゃ。{BREAK}{WAIT}◆ぜんぶ ほりおこしたつもりだったが{BREAK}どうしても ひとつだけみつからん。{BREAK}きをつけてくれよ。{BREAK}\0")
    ENGLISH_TEXT("@I laid land mines in this{BREAK}desert during the war{BREAK}before last.{BREAK}{WAIT}@I thought I dug 'em all up,{BREAK}but I just can't seem to{BREAK}find the last one.{BREAK}{WAIT}@Best be careful out there.{BREAK}\0")

    .global gUnknown_08F1F515
gUnknown_08F1F515:
    JAPANESE_TEXT("◆おお ひこうきにのるか?{BREAK}\0")
    ENGLISH_TEXT("@Oh, do you want to ride in{BREAK}my plane?{BREAK}\0")

    .global gUnknown_08F1F524
gUnknown_08F1F524:
    JAPANESE_TEXT("◆では みんなのぶんで{BREAK}{0x03}{0x1E}ドルいただこうか。{BREAK}{WAIT}◆チケットの はんけんは{BREAK}なくさないようにな。{BREAK}{WAIT}◆すごいぞ。 このはんけんを{BREAK}10まいためると せんしゃに{BREAK}のれるのじゃ。{BREAK}{WAIT}◆うれしそうじゃな ハハハ。{BREAK}\0")
    ENGLISH_TEXT("@Then it'll cost ${0x03}{0x1E} for{BREAK}the lot of ya.{BREAK}{WAIT}@Be sure to hang on to your{BREAK}ticket stubs.{BREAK}{WAIT}@Collect ten of 'em and{BREAK}you'll earn a ride in my{BREAK}tank!{BREAK}{WAIT}@Hahaha! You sure seem happy{BREAK}to hear that!{BREAK}\0")

    .global gUnknown_08F1F590
gUnknown_08F1F590:
    JAPANESE_TEXT("◆ねだんがたかいから むりもないか。{BREAK}\0")
    ENGLISH_TEXT("@It IS rather pricey, so I{BREAK}can't say I blame ya.{BREAK}\0")

    .global gUnknown_08F1F5A4
gUnknown_08F1F5A4:
    JAPANESE_TEXT("◆おお! 10まい たまったのか。{BREAK}よしよし せんしゃをかしてやろう。{BREAK}{WAIT}◆うれしそうじゃな ハハハ。{BREAK}\0")
    ENGLISH_TEXT("@Oh! You collected ten{BREAK}ticket stubs!{BREAK}{WAIT}@All right, then! I'll lend{BREAK}you my tank!{BREAK}{WAIT}@Hahaha! You sure seem happy{BREAK}to hear that!{BREAK}\0")

    .global gUnknown_08F1F5DA
gUnknown_08F1F5DA:
    JAPANESE_TEXT("◆せんしゃを こわしたな。{BREAK}わしのだいじな せんしゃを……{BREAK}オロオロ。{BREAK}{WAIT}◆せんしゃの しゅうりひを{BREAK}べんしょうしてくれ。{BREAK}{0x03}{0x1E}ドルだぞ。{BREAK}{WAIT}◆いますぐはらうか?{BREAK}\0")
    ENGLISH_TEXT("@You wrecked my tank. My{BREAK}precious, precious tank...{BREAK}(weep){BREAK}{WAIT}@You better pay me the money{BREAK}to have it fixed.{BREAK}{WAIT}@It comes to ${0x03}{0x1E}.{BREAK}{WAIT}@Will you pay right now?{BREAK}\0")

    .global gUnknown_08F1F62F
gUnknown_08F1F62F:
    JAPANESE_TEXT("◆ああよかった。 いざ さらば。{BREAK}\0")
    ENGLISH_TEXT("@Oh, that's great.{BREAK}Well, be seein' ya!{BREAK}\0")

    .global gUnknown_08F1F641
gUnknown_08F1F641:
    JAPANESE_TEXT("◆わしは おこったぞ。{BREAK}うっうっうううう……{BREAK}\0")
    ENGLISH_TEXT("@Now I'm mad!{BREAK}Grrrrrrr...{BREAK}\0")

    .global gUnknown_08F1F659
gUnknown_08F1F659:
    JAPANESE_TEXT("◆パパいない。 ママいない。{BREAK}\0")
    ENGLISH_TEXT("@Mommy and Daddy are gone.{BREAK}\0")

    .global gUnknown_08F1F669
gUnknown_08F1F669:
    JAPANESE_TEXT("◆ぼくわ もんばんだ。{BREAK}おまえわ だれだ。{BREAK}\0")
    ENGLISH_TEXT("@I gard this gate.{BREAK}{WAIT}Hoo goes there?!{BREAK}\0")

    .global gUnknown_08F1F680
gUnknown_08F1F680:
    JAPANESE_TEXT("◆あ あやしいやつわ{BREAK}やっつけるぞ……ブルブル。{BREAK}\0")
    ENGLISH_TEXT("@Y-you're suspishus!{BREAK}{WAIT}D-don't make me beet you{BREAK}up...!{BREAK}(shiver shiver){BREAK}\0")

    .global gUnknown_08F1F69A
gUnknown_08F1F69A:
    JAPANESE_TEXT("◆ガリクソンさんちの あかちゃんは{BREAK}なんかへん。 ぜったいへん。{BREAK}なんか すごいきがするわ。{BREAK}\0")
    ENGLISH_TEXT("@The Garricksons' baby is{BREAK}weird. Like, REALLY weird.{BREAK}\0")

    .global gUnknown_08F1F6CA
gUnknown_08F1F6CA:
    JAPANESE_TEXT("◆え-と 2たす3は5。{BREAK}8ひく4は4…… おれは{BREAK}いつも べんきょうしてるんだ。{BREAK}\0")
    ENGLISH_TEXT("@Let's see...{BREAK}Two plus three is five.{BREAK}{WAIT}Eight minus four is four...{BREAK}{WAIT}I study all the time.{BREAK}\0")

    .global gUnknown_08F1F6F5
gUnknown_08F1F6F5:
    JAPANESE_TEXT("◆ママ-! さみしいよ-{BREAK}\0")
    ENGLISH_TEXT("@Mommy! I miss you!{BREAK}\0")

    .global gUnknown_08F1F703
gUnknown_08F1F703:
    JAPANESE_TEXT("◆パパ-! さみしいよ-{BREAK}\0")
    ENGLISH_TEXT("@Daddy! I miss you!{BREAK}\0")

    .global gUnknown_08F1F711
gUnknown_08F1F711:
    JAPANESE_TEXT("◆でっかい そらとぶふねが{BREAK}おとなたちを みんな{BREAK}つれてっちゃったの。{BREAK}\0")
    ENGLISH_TEXT("@A big flying ship took all{BREAK}the grownups away.{BREAK}\0")

    .global gUnknown_08F1F736
gUnknown_08F1F736:
    JAPANESE_TEXT("◆おとなたちが いなくて{BREAK}せいせいしたぜ グスン。{BREAK}\0")
    ENGLISH_TEXT("@It's great having no{BREAK}grownups around!{BREAK}{WAIT}(sniffle sob){BREAK}\0")

    .global gUnknown_08F1F751
gUnknown_08F1F751:
    JAPANESE_TEXT("◆おねえちゃん オッパイ!{BREAK}\0")
    ENGLISH_TEXT("@I want milk!{BREAK}\0")

    .global gUnknown_08F1F760
gUnknown_08F1F760:
    JAPANESE_TEXT("◆ぼくも オッパイ!{BREAK}\0")
    ENGLISH_TEXT("@I want milk, too!{BREAK}\0")

    .global gUnknown_08F1F76C
gUnknown_08F1F76C:
    JAPANESE_TEXT("◆オッパイ!{BREAK}\0")
    ENGLISH_TEXT("@Milk!{BREAK}\0")

    .global gUnknown_08F1F774
gUnknown_08F1F774:
    JAPANESE_TEXT("◆パパや ママを つれもどして。{BREAK}おねがいします。{BREAK}\0")
    ENGLISH_TEXT("@Bring my mommy and daddy{BREAK}back. Please.{BREAK}\0")

    .global gUnknown_08F1F78F
gUnknown_08F1F78F:
    JAPANESE_TEXT("◆あ どうも。 ぼく{BREAK}トム・ガリクソンっていいます。{BREAK}しゅみは じこしょうかいです。{BREAK}\0")
    ENGLISH_TEXT("@Oh, hello there.{BREAK}My name is Tom Garrickson.{BREAK}{WAIT}@Introducing myself is my{BREAK}hobby.{BREAK}\0")

    .global gUnknown_08F1F7BB
gUnknown_08F1F7BB:
    JAPANESE_TEXT("◆このベビ-は ふしぎなちからを{BREAK}もっているって{BREAK}いつかママがいってたわ。{BREAK}\0")
    ENGLISH_TEXT("@Mommy told me this baby has{BREAK}a special power.{BREAK}\0")

    .global gUnknown_08F1F7E2
gUnknown_08F1F7E2:
    JAPANESE_TEXT("◆アプ- アプ- バブバブ。{BREAK}\0")
    ENGLISH_TEXT("@Gaga googoo.{BREAK}\0")

    .global gUnknown_08F1F7F2
gUnknown_08F1F7F2:
    JAPANESE_TEXT("◆わたしは このベビ-の いしき。{BREAK}わたしも あなたたちと おなじ{BREAK}エスパ-だ。{BREAK}{WAIT}◆テレポ-トの ちからを{BREAK}もっている。{BREAK}{WAIT}◆あなたの しっている ところなら{BREAK}どこにでもいける。{BREAK}{WAIT}◆({0x03}{0x10}{0x03}{0x17}は{BREAK}ベビ-の いしきから{BREAK}{WAIT}テレポ-テ-ションの PSIを{BREAK}うけついだ。){BREAK}\0")
    ENGLISH_TEXT("@I am this baby's{BREAK}consciousness.{BREAK}{WAIT}@I have psychic powers, just{BREAK}as you do.{BREAK}{WAIT}@I possess the ability to{BREAK}teleport.{BREAK}{WAIT}@With it, you can return to{BREAK}anywhere you've been{BREAK}before.{BREAK}{WAIT}@(The baby's mind taught{BREAK}{0x03}{0x10} how to use{BREAK}teleportation PSI.){BREAK}\0")

    .global gUnknown_08F1F87F
gUnknown_08F1F87F:
    JAPANESE_TEXT("◆とうちゃんたちの こえが{BREAK}やまのほうで きこえたような{BREAK}きがするんだ。{BREAK}{WAIT}◆でも やまは バレンタインのまちの{BREAK}むこうなんだ。{BREAK}とおすぎて ぼくには いけない。{BREAK}\0")
    ENGLISH_TEXT("@I think I heard the voices{BREAK}of my dad and the others{BREAK}coming from the mountains.{BREAK}{WAIT}@But the mountains are way{BREAK}past the town of Valentine.{BREAK}{WAIT}@It's too far away for me to{BREAK}go there.{BREAK}\0")

    .global gUnknown_08F1F8D3
gUnknown_08F1F8D3:
    JAPANESE_TEXT("◆なんだよ。 もちきれないんじゃ{BREAK}やれないよ。{BREAK}\0")
    ENGLISH_TEXT("@Aww, man. I can't give it{BREAK}to you. You're holding too{BREAK}much stuff.{BREAK}\0")

    .global gUnknown_08F1F8EC
gUnknown_08F1F8EC:
    JAPANESE_TEXT("◆つきひは たったが{BREAK}おまえは まだ みせいねんだな。{BREAK}\0")
    ENGLISH_TEXT("@Time has passed, but you're{BREAK}still underage.{BREAK}\0")

    .global gUnknown_08F1F909
gUnknown_08F1F909:
    JAPANESE_TEXT("◆きをつけて あるきなよ{BREAK}おまえたち。{BREAK}へっへっへ……{BREAK}\0")
    ENGLISH_TEXT("@You really oughtta watch{BREAK}where you're walking.{BREAK}{WAIT}@Heheheh...{BREAK}\0")

    .global gUnknown_08F1F926
gUnknown_08F1F926:
    JAPANESE_TEXT("◆まったく ブラックブラッドだんの{BREAK}やつらときたひにゃ……{BREAK}\0")
    ENGLISH_TEXT("@Oh, that blasted Black{BREAK}Blood Gang...\0")

    .global gUnknown_08F1F945
gUnknown_08F1F945:
    JAPANESE_TEXT("◆ブラックブラッドだんってなまえは{BREAK}ながいから みんなブラブラだんと{BREAK}よんでいるのよ。{BREAK}\0")
    ENGLISH_TEXT("@…Black Blood Gang” is a{BREAK}long name, so everyone just{BREAK}calls it the BB Gang.{BREAK}\0")

    .global gUnknown_08F1F972
gUnknown_08F1F972:
    JAPANESE_TEXT("◆おまえ{0x03}{0x17}{BREAK}ブラブラだんの なかまじゃ{BREAK}ないだろうね。{BREAK}\0")
    ENGLISH_TEXT("@You're not with the{BREAK}BB Gang, I hope...{BREAK}\0")

    .global gUnknown_08F1F990
gUnknown_08F1F990:
    JAPANESE_TEXT("◆やまのうえに くろいくもが{BREAK}かかってからというものは{BREAK}{WAIT}ひとも まちも{BREAK}おかしくなっちまったよ。{BREAK}\0")
    ENGLISH_TEXT("@Everything's been nuts ever{BREAK}since black clouds appeared{BREAK}over the mountains.{BREAK}{WAIT}The town and its people{BREAK}have all started to go{BREAK}crazy.{BREAK}\0")

    .global gUnknown_08F1F9C4
gUnknown_08F1F9C4:
    JAPANESE_TEXT("◆よっ! よっ!{BREAK}そっちのおふたりさんは{BREAK}こいびとどうしかね?{BREAK}\0")
    ENGLISH_TEXT("@Hey! You!{BREAK}{WAIT}@You two, there!{BREAK}Are you two sweethearts?{BREAK}\0")

    .global gUnknown_08F1F9E5
gUnknown_08F1F9E5:
    JAPANESE_TEXT("◆あいしあってるかい。 イエ-。{BREAK}\0")
    ENGLISH_TEXT("@You love each other?{BREAK}Hurray!{BREAK}\0")

    .global gUnknown_08F1F9F7
gUnknown_08F1F9F7:
    JAPANESE_TEXT("◆いいや こころのおくには{BREAK}あいが めばえちゃってるんじゃ{BREAK}ないの。{BREAK}\0")
    ENGLISH_TEXT("@I dunno, are you sure love{BREAK}isn't budding deep inside{BREAK}your hearts?{BREAK}\0")

    .global gUnknown_08F1FA1B
gUnknown_08F1FA1B:
    JAPANESE_TEXT("◆ライブハウスのチケットあるよ。{BREAK}{0x03}{0x1E}ドルで かうかね?{BREAK}\0")
    ENGLISH_TEXT("@Hey, I got concert tickets.{BREAK}{WAIT}@They cost ${0x03}{0x1E}. Want some?{BREAK}\0")

    .global gUnknown_08F1FA39
gUnknown_08F1FA39:
    JAPANESE_TEXT("◆ほれよ!{BREAK}デパ-トじゃ うりきれだもんな。{BREAK}\0")
    ENGLISH_TEXT("@Here you go!{BREAK}{WAIT}@You're lucky. They're all{BREAK}sold out at the department{BREAK}store.{BREAK}\0")

    .global gUnknown_08F1FA51
gUnknown_08F1FA51:
    JAPANESE_TEXT("◆ケチンボなガキどもだぜ。{BREAK}\0")
    ENGLISH_TEXT("@Geez, you kids are cheap.{BREAK}\0")

    .global gUnknown_08F1FA60
gUnknown_08F1FA60:
    JAPANESE_TEXT("◆いいことおしえてあげるわよ。{BREAK}しりたい?{BREAK}\0")
    ENGLISH_TEXT("@I have some secret info you{BREAK}might find interesting.{BREAK}{WAIT}@Want to hear it?{BREAK}\0")

    .global gUnknown_08F1FA77
gUnknown_08F1FA77:
    JAPANESE_TEXT("◆ブラブラだんのボスの{BREAK}{0x03}{0x13}って ほんみょうは{BREAK}{0x03}{0x13}ざえもんっていうのよ。{BREAK}{WAIT}◆うわさだけどね。{BREAK}\0")
    ENGLISH_TEXT("@The BB Gang's boss's full{BREAK}name is {0x03}{0x13} Junior the{BREAK}3rd.{BREAK}{WAIT}@It's only a rumor, though.{BREAK}\0")

    .global gUnknown_08F1FAAA
gUnknown_08F1FAAA:
    JAPANESE_TEXT("◆きっと こうかいするわよ。{BREAK}\0")
    ENGLISH_TEXT("@I'm sure you'll regret it{BREAK}later.{BREAK}\0")

    .global gUnknown_08F1FABA
gUnknown_08F1FABA:
    JAPANESE_TEXT("◆がくやを のぞいちゃダメよ。{BREAK}どえらいめに あうからね。{BREAK}\0")
    ENGLISH_TEXT("@No peeking in the dressing{BREAK}room.{BREAK}{WAIT}@You'll wind up in a world{BREAK}of trouble if you do.{BREAK}\0")

    .global gUnknown_08F1FAD9
gUnknown_08F1FAD9:
    JAPANESE_TEXT("◆すいたらしい ひと。{BREAK}ふ-ん {0x03}{0x16}っていうの。{BREAK}ビ-ルをおごるわ。 のんで。{BREAK}\0")
    ENGLISH_TEXT("@You're so cute.{BREAK}{WAIT}@Oh, your name is {0x03}{0x16}?{BREAK}{WAIT}@Here, this beer's on me.{BREAK}Drink up!{BREAK}\0")

    .global gUnknown_08F1FB02
gUnknown_08F1FB02:
    JAPANESE_TEXT("◆あら まだこどもだったのね。{BREAK}おとなになったら またおいで。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you're still a kid?{BREAK}{WAIT}@Come back when you're{BREAK}older, then.{BREAK}\0")

    .global gUnknown_08F1FB23
gUnknown_08F1FB23:
    JAPANESE_TEXT("◆もうビ-ルは おごらないわ。{BREAK}\0")
    ENGLISH_TEXT("@Forget it. No more drinks{BREAK}from me.{BREAK}\0")

    .global gUnknown_08F1FB34
gUnknown_08F1FB34:
    JAPANESE_TEXT("◆はんせいしたか?{BREAK}\0")
    ENGLISH_TEXT("@Now do you regret what you{BREAK}did?{BREAK}\0")

    .global gUnknown_08F1FB3F
gUnknown_08F1FB3F:
    JAPANESE_TEXT("◆もう にどとしないなら{BREAK}かえってよろしい。{BREAK}{WAIT}◆あぶないものは{BREAK}あずかっておくからな。{BREAK}\0")
    ENGLISH_TEXT("@If you promise not to do it{BREAK}again, then you can go.{BREAK}{WAIT}@But I think I'll hold on to{BREAK}your dangerous items.{BREAK}\0")

    .global gUnknown_08F1FB6E
gUnknown_08F1FB6E:
    JAPANESE_TEXT("◆じゃ もういちにち{BREAK}あたまをひやしていろ。{BREAK}\0")
    ENGLISH_TEXT("@Then you can spend another{BREAK}day in there to cool off.{BREAK}\0")

    .global gUnknown_08F1FB86
gUnknown_08F1FB86:
    JAPANESE_TEXT("◆へっへっへ{BREAK}このあいだ {0x03}{0x1D}が{BREAK}てに はいったんだよ。{BREAK}{WAIT}◆{0x03}{0x1E}ドルで かわないか?{BREAK}\0")
    ENGLISH_TEXT("@Heheheh.{BREAK}{WAIT}@I got my hands on some{BREAK}{0x03}{0x1D}s the other day.{BREAK}{WAIT}@Want one for ${0x03}{0x1E}?{BREAK}\0")

    .global gUnknown_08F1FBB4
gUnknown_08F1FBB4:
    JAPANESE_TEXT("◆おかねが たりないぞ。{BREAK}うっうっううう……{BREAK}\0")
    ENGLISH_TEXT("@You don't got enough money.{BREAK}{WAIT}@Grrrr...{BREAK}\0")

    .global gUnknown_08F1FBCC
gUnknown_08F1FBCC:
    JAPANESE_TEXT("◆{0x03}{0x13}は{BREAK}やまのばけものに りょうしんを{BREAK}ころされてしまったの。{BREAK}{WAIT}◆それまではやさしくて{BREAK}ひょうきんなこだったのよ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x13}'s parents were{BREAK}killed by monsters in the{BREAK}mountains.{BREAK}{WAIT}@He had always been such a{BREAK}nice boy before then.{BREAK}\0")

    .global gUnknown_08F1FC0A
gUnknown_08F1FC0A:
    JAPANESE_TEXT("◆{0x03}{0x13}が むかしのように{BREAK}やさしくなってくれたら{BREAK}うれしいな。{BREAK}\0")
    ENGLISH_TEXT("@I wish {0x03}{0x13} would go back{BREAK}to his old, gentle self.{BREAK}\0")

    .global gUnknown_08F1FC2B
gUnknown_08F1FC2B:
    JAPANESE_TEXT("◆あんた{0x03}{0x17}も うたうかね。{BREAK}\0")
    ENGLISH_TEXT("@You gonna sing too?{BREAK}\0")

    .global gUnknown_08F1FC3B
gUnknown_08F1FC3B:
    JAPANESE_TEXT("◆じゃあ けいきのいいやつを{BREAK}やってくれ。{BREAK}\0")
    ENGLISH_TEXT("@All right! Do something{BREAK}with lots of pizzazz!{BREAK}\0")

    .global gUnknown_08F1FC52
gUnknown_08F1FC52:
    JAPANESE_TEXT("◆シャイな こだね。{BREAK}\0")
    ENGLISH_TEXT("@I guess you're a shy kid,{BREAK}huh?{BREAK}\0")

    .global gUnknown_08F1FC5E
gUnknown_08F1FC5E:
    JAPANESE_TEXT("◆{0x03}{0x12}ちゃんっ!{BREAK}いやなに ぼうしに なまえが{BREAK}かいてあったからさ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x12}!{BREAK}{WAIT}@Oh, nothing. I saw your{BREAK}name written on your hat,{BREAK}that's all.{BREAK}\0")

    .global gUnknown_08F1FC82
gUnknown_08F1FC82:
    JAPANESE_TEXT("◆おまえのつれてた おんなのこ{BREAK}かわいかったなぁ。{BREAK}\0")
    ENGLISH_TEXT("@That girl you brought with{BREAK}you sure was cute.{BREAK}\0")

    .global gUnknown_08F1FC9D
gUnknown_08F1FC9D:
    JAPANESE_TEXT("◆いいうたを きかせてくれたな。{BREAK}サンキュ-。{BREAK}{WAIT}◆おまえたちか?{BREAK}おれの なかまを{BREAK}かわいがってくれたのは。{BREAK}\0")
    ENGLISH_TEXT("@Thanks, that was a great{BREAK}song.{BREAK}{WAIT}@Say, are you the guys{BREAK}who've been messin' with my{BREAK}buddies?{BREAK}\0")

    .global gUnknown_08F1FCD7
gUnknown_08F1FCD7:
    JAPANESE_TEXT("◆ゆるさねぇ!{BREAK}\0")
    ENGLISH_TEXT("@You're goin' down!{BREAK}\0")

    .global gUnknown_08F1FCE0
gUnknown_08F1FCE0:
    JAPANESE_TEXT("◆わかっているんだ!{BREAK}\0")
    ENGLISH_TEXT("@I know it was you!{BREAK}\0")

    .global gUnknown_08F1FCEC
gUnknown_08F1FCEC:
    JAPANESE_TEXT("◆アハハハ たいしたやつだ。{BREAK}{0x03}{0x10}って いったっけな。{BREAK}ドロウにしねぇか…… ハアハア{BREAK}{WAIT}◆おやじと おふくろの かたきを{BREAK}とりてぇ。 いっしょに やまへ{BREAK}いこうじゃないか?{BREAK}\0")
    ENGLISH_TEXT("@Ahahaha, you're really{BREAK}somethin'!{BREAK}{WAIT}@{0x03}{0x10}, was it?{BREAK}{WAIT}@Whadya say we call it a{BREAK}draw?{BREAK}{WAIT}@I really wanna avenge my{BREAK}parents.{BREAK}{WAIT}@How about we go to the{BREAK}mountains together?{BREAK}\0")

    .global gUnknown_08F1FD46
gUnknown_08F1FD46:
    JAPANESE_TEXT("◆どうか うちの {0x03}{0x10}の{BREAK}ちからになって あげてください。{BREAK}\0")
    ENGLISH_TEXT("@Please give my {0x03}{0x10} all{BREAK}the help you can.\0")

    .global gUnknown_08F1FD65
gUnknown_08F1FD65:
    JAPANESE_TEXT("◆{0x03}{0x3E}は テレホンカ-ドを{BREAK}つかった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} used the Phone Card.{BREAK}\0")

    .global gUnknown_08F1FD7A
gUnknown_08F1FD7A:
    JAPANESE_TEXT("◆そうか{BREAK}きっと いいふりょうチ-ムが{BREAK}できるぜ。 カンパイ!{BREAK}\0")
    ENGLISH_TEXT("@Great! I'm sure we'll make{BREAK}a great team of punks!{BREAK}Cheers!{BREAK}\0")

    .global gUnknown_08F1FD9B
gUnknown_08F1FD9B:
    JAPANESE_TEXT("◆たのむ おれは きっと{BREAK}おまえらの やくにたつから。{BREAK}\0")
    ENGLISH_TEXT("@Please! I know I can help{BREAK}you guys!{BREAK}\0")

    .global gUnknown_08F1FDB8
gUnknown_08F1FDB8:
    JAPANESE_TEXT("◆もしもし あ パパだ。{BREAK}こんなところにでてくるつもりじゃ{BREAK}なかったんだが……{BREAK}{WAIT}◆いいかげんにしなさい!{BREAK}はやく Aボタンをおすんだ。{BREAK}\0")
    ENGLISH_TEXT("@Hello, this is your dad.{BREAK}{WAIT}@I don't mean to butt in or{BREAK}anything...{BREAK}{WAIT}But what's your problem?!{BREAK}{WAIT}@Just press the A Button{BREAK}already!{BREAK}\0")

    .global gUnknown_08F1FDFF
gUnknown_08F1FDFF:
    JAPANESE_TEXT("◆おい そこのメガネやろう。{BREAK}おまえはたたかいには むいてねぇ。{BREAK}{WAIT}◆しばらくここで{BREAK}からだを やすめてな。{BREAK}にもつは おれが かりていくぜ。{BREAK}\0")
    ENGLISH_TEXT("@Hey, you. Four-eyes.{BREAK}{WAIT}@You're not cut out for{BREAK}fightin'.{BREAK}{WAIT}@Rest here and take it easy.{BREAK}{WAIT}@I'll take your stuff, too.{BREAK}\0")

    .global gUnknown_08F1FE49
gUnknown_08F1FE49:
    JAPANESE_TEXT("◆ちからだけじゃ やつらには{BREAK}かてねぇ。{BREAK}{WAIT}◆でも おれたちは かならず{BREAK}へいわを とりもどせる。{BREAK}しんじてるぜ。{BREAK}\0")
    ENGLISH_TEXT("@There's no way we can beat{BREAK}'em with brute strength{BREAK}alone.{BREAK}{WAIT}@But we CAN bring peace back{BREAK}to the world.{BREAK}{WAIT}@I just know it.{BREAK}\0")

    .global gUnknown_08F1FE85
gUnknown_08F1FE85:
    JAPANESE_TEXT("◆{0x03}{0x13}{BREAK}「ふたりとも{BREAK}なに あかくなってんだよ。{BREAK}{WAIT}さっさと いこうぜ!」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x13}: What're you two{BREAK}blushin' for?{BREAK}{WAIT}@Let's get goin' already!\0")

    .global gUnknown_08F1FEAD
gUnknown_08F1FEAD:
    JAPANESE_TEXT("◆きがえちゅうだよォ。 エッチ!{BREAK}\0")
    ENGLISH_TEXT("@I'm changing my clothes!{BREAK}You pervert!{BREAK}\0")

    .global gUnknown_08F1FEBF
gUnknown_08F1FEBF:
    JAPANESE_TEXT("◆わたしは {0x03}{0x11}のちちです。{BREAK}{WAIT}◆{0x03}{0x10}のパパのいうとおり{BREAK}ちゃんと プレイヤ-のなまえは{BREAK}いいましたか?{BREAK}\0")
    ENGLISH_TEXT("@I'm {0x03}{0x11}'s father.{BREAK}{WAIT}@{0x03}{0x10}'s dad asked for your{BREAK}name earlier. Did you give{BREAK}him the right name?{BREAK}\0")

    .global gUnknown_08F1FEF6
gUnknown_08F1FEF6:
    JAPANESE_TEXT("◆じゃ いいんです。{BREAK}{WAIT}◆{0x03}{0x11}を かばってあげて{BREAK}くださいね。{BREAK}よわむしなんだから……{BREAK}\0")
    ENGLISH_TEXT("@Okay, great.{BREAK}{WAIT}@Please keep {0x03}{0x11} safe,{BREAK}okay?{BREAK}{WAIT}@He IS a weakling, after{BREAK}all...{BREAK}\0")

    .global gUnknown_08F1FF24
gUnknown_08F1FF24:
    JAPANESE_TEXT("◆じゃ もういっかい{BREAK}てつづき しましょうね。{BREAK}\0")
    ENGLISH_TEXT("@Then let's go through the{BREAK}process again.{BREAK}\0")

    .global gUnknown_08F1FF3D
gUnknown_08F1FF3D:
    JAPANESE_TEXT("◆ホ-リ-ロ-リ-マウンテンに{BREAK}ゆくまえに みなとにいくべきじゃ。{BREAK}これ ほんと。{BREAK}\0")
    ENGLISH_TEXT("@You should visit the harbor{BREAK}before you go to Holy Loly{BREAK}Mountain.{BREAK}{WAIT}@I really mean it.{BREAK}\0")

    .global gUnknown_08F1FF68
gUnknown_08F1FF68:
    JAPANESE_TEXT("◆……いちごあじの{BREAK}とうふをたべたことがあるかな?{BREAK}\0")
    ENGLISH_TEXT("@...Have you ever had{BREAK}strawberry-flavored tofu{BREAK}before?{BREAK}\0")

    .global gUnknown_08F1FF83
gUnknown_08F1FF83:
    JAPANESE_TEXT("◆こんどみつけたら{BREAK}もってきてくれないか。{BREAK}おれいに いいものをやるから。{BREAK}\0")
    ENGLISH_TEXT("@If you ever find any more,{BREAK}could you bring it to me?{BREAK}{WAIT}I'll give you something{BREAK}nice in return.{BREAK}\0")

    .global gUnknown_08F1FFAA
gUnknown_08F1FFAA:
    JAPANESE_TEXT("◆そうか。 こんな いなかじゃ{BREAK}まだ うっていないのかなぁ。{BREAK}\0")
    ENGLISH_TEXT("@Oh. I wish they'd start{BREAK}selling it out here...{BREAK}\0")

    .global gUnknown_08F1FFCA
gUnknown_08F1FFCA:
    JAPANESE_TEXT("◆おお いちごあじのとうふだ。{BREAK}ありがとう。{BREAK}{WAIT}◆では おみやげに{BREAK}いいものを あげよう。{BREAK}\0")
    ENGLISH_TEXT("@Oh, strawberry-flavored{BREAK}tofu! Thank you!{BREAK}{WAIT}@Now let me give you a nice{BREAK}gift in return.{BREAK}\0")

    .global gUnknown_08F1FFFA
gUnknown_08F1FFFA:
    JAPANESE_TEXT("◆きずを おったら ここへおいで。{BREAK}{WAIT}◆すこしばかりの たべものも{BREAK}ちりょうのくすりも{BREAK}そまつだがベッドもある。{BREAK}\0")
    ENGLISH_TEXT("@Stop by if you ever get{BREAK}hurt.{BREAK}{WAIT}@It's not much, but I have{BREAK}food, medicine, and some{BREAK}plain beds here.{BREAK}\0")

    .global gUnknown_08F20035
gUnknown_08F20035:
    JAPANESE_TEXT("◆おい {0x03}{0x11}くん。{BREAK}きみの なけなしのゆうきを{BREAK}つかうときが きたようだぞ。{BREAK}\0")
    ENGLISH_TEXT("@Say, {0x03}{0x11}.{BREAK}{WAIT}@Looks like it's finally{BREAK}time to use what little{BREAK}courage you have.{BREAK}\0")

    .global gUnknown_08F2005D
gUnknown_08F2005D:
    JAPANESE_TEXT("◆おいで こどもたち。{BREAK}なにが ひつようなんだい?{BREAK}\0")
    ENGLISH_TEXT("@Hello, kids.{BREAK}{WAIT}@What do you need?{BREAK}\0")

    .global gUnknown_08F20078
gUnknown_08F20078:
    JAPANESE_TEXT("◆ワタシノ ナハ イヴ。{BREAK}アナタヲ マッテイタ。{BREAK}{WAIT}◆ワタシノ チチハ じょ-じ。{BREAK}ウチュウノ ハテニ ツレテイカレ{BREAK}モドッテキタ ヒト。{BREAK}{WAIT}◆アナタヲ マモル{BREAK}ワタシノ ツトメ。{BREAK}\0")
    ENGLISH_TEXT("@MY NAME IS EVE.{BREAK}{WAIT}I HAVE BEEN WAITING FOR{BREAK}YOU.{BREAK}{WAIT}@MY FATHER WAS GEORGE.{BREAK}{WAIT}HE WAS TAKEN TO THE ENDS OF{BREAK}THE UNIVERSE,{BREAK}{WAIT}AND THEN HE RETURNED HERE.{BREAK}{WAIT}@MY DUTY IS TO PROTECT YOU.{BREAK}\0")

    .global gUnknown_08F200D6
gUnknown_08F200D6:
    JAPANESE_TEXT("◆にもつを もって{BREAK}くろうしてるんでしょ。{BREAK}\0")
    ENGLISH_TEXT("@Surely it must be{BREAK}hard carrying so{BREAK}much stuff...{BREAK}\0")

    .global gUnknown_08F200ED
gUnknown_08F200ED:
    JAPANESE_TEXT("◆{0x03}{0x10}! {0x03}{0x10}!{BREAK}{WAIT}◆たたかいに つかれたようだな。{BREAK}もういちど チャレンジするか?{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10}! {0x03}{0x10}!{BREAK}{WAIT}@It looks like you got your{BREAK}head handed to you.{BREAK}{WAIT}@So, how about giving it{BREAK}another shot?{BREAK}\0")

    .global gUnknown_08F2011A
gUnknown_08F2011A:
    JAPANESE_TEXT("◆{0x03}{0x10}は{BREAK}さいごのきりょくを ふりしぼって{BREAK}たたかいのばに ふっかつした。{BREAK}{WAIT}◆がんばってくれ {0x03}{0x10}!{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10} decided to return{BREAK}after summoning all the{BREAK}courage and energy he had.{BREAK}{WAIT}@Good luck, {0x03}{0x10}!\0")

    .global gUnknown_08F20150
gUnknown_08F20150:
    JAPANESE_TEXT("◆{0x03}{0x10}は{BREAK}わるいゆめを みたのだ。{BREAK}{WAIT}◆がんばれ! {0x03}{0x10}!{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10} realized it had only{BREAK}been a bad dream.{BREAK}{WAIT}@Good luck, {0x03}{0x10}!\0")

    .global gUnknown_08F20170
gUnknown_08F20170:
    JAPANESE_TEXT("◆だれに わたす?{BREAK}\0")
    ENGLISH_TEXT("@Give to who?{BREAK}\0")

    .global gUnknown_08F2017B
gUnknown_08F2017B:
    JAPANESE_TEXT("◆もちきれない みたいだけど{BREAK}ほかの ひとに わたす?{BREAK}\0")
    ENGLISH_TEXT("@That person can't{BREAK}carry any more{BREAK}stuff.{BREAK}{WAIT}@Give it to someone{BREAK}else?{BREAK}\0")

    .global gUnknown_08F20198
gUnknown_08F20198:
    JAPANESE_TEXT("◆まだ グッズがのこっているから{BREAK}とりにきてね。{BREAK}\0")
    ENGLISH_TEXT("@You still have some{BREAK}stuff left here, so{BREAK}come get it later.{BREAK}\0")

    .global gUnknown_08F201B2
gUnknown_08F201B2:
    JAPANESE_TEXT("◆{0x03}{0x10}ちゃんの{BREAK}おともだちなの?{BREAK}{WAIT}◆ふう-ん。 でも このグッズは{BREAK}{0x03}{0x10}ちゃんの だから{BREAK}わたすわけには いかないわ。{BREAK}\0")
    ENGLISH_TEXT("@Are you a friend of{BREAK}{0x03}{0x10}?{BREAK}{WAIT}@Really? I see.{BREAK}{WAIT}@But these items{BREAK}belong to {0x03}{0x10},{BREAK}{WAIT}so I can't give{BREAK}them to anyone{BREAK}else.{BREAK}\0")

    .global gUnknown_08F201F1
gUnknown_08F201F1:
    JAPANESE_TEXT("◆よわむし{0x03}{0x11}は{BREAK}くたばっちまったのかい。{BREAK}\0")
    ENGLISH_TEXT("@Has that weakling {0x03}{0x11}{BREAK}kicked the bucket?{BREAK}\0")

    .global gUnknown_08F20208
gUnknown_08F20208:
    JAPANESE_TEXT("「ウェルカム トゥ マザ-ズデイ」{BREAK}\0")
    ENGLISH_TEXT("Welcome to Mother's Day{BREAK}\0")

    .global gUnknown_08F2021B
gUnknown_08F2021B:
    JAPANESE_TEXT("「シュ-クリ-ムどうぶつえん{BREAK}        かんりじむしょ」{BREAK}\0")
    ENGLISH_TEXT("Cream Puff Zoo{BREAK}  Manager's Office{BREAK}\0")

    .global gUnknown_08F2023C
gUnknown_08F2023C:
    JAPANESE_TEXT("「うみの てんぼうだい」{BREAK}\0")
    ENGLISH_TEXT("Ocean Overlook{BREAK}\0")

    .global gUnknown_08F2024A
gUnknown_08F2024A:
    JAPANESE_TEXT("◆そんなひとは いないみたいだけど{BREAK}わたしの おもいちがいかなぁ……{BREAK}\0")
    ENGLISH_TEXT("@I don't think{BREAK}there's anyone here{BREAK}by that name,{BREAK}{WAIT}but perhaps I'm{BREAK}mistaken...{BREAK}\0")

    .global gUnknown_08F2026E
gUnknown_08F2026E:
    JAPANESE_TEXT("◆あかいくさは いずみのみずに{BREAK}つけると すっごくげんきな{BREAK}マジックハ-ブに なりました。{BREAK}\0")
    ENGLISH_TEXT("@After being placed in the{BREAK}fountain,{BREAK}{WAIT}the Red Weed turned into a{BREAK}very energizing Magic Herb.{BREAK}\0")

    .global gUnknown_08F2029D
gUnknown_08F2029D:
    JAPANESE_TEXT("◆そんなやつが どこにおるのだ!{BREAK}\0")
    ENGLISH_TEXT("@There's no one like{BREAK}that here!{BREAK}\0")

    .global gUnknown_08F202AF
gUnknown_08F202AF:
    JAPANESE_TEXT("◆{0x03}{0x1D}だね。{BREAK}ありがとう たすかるよ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1D}, right?{BREAK}{WAIT}Thanks! I really appreciate{BREAK}it!{BREAK}\0")

    .global gUnknown_08F202C4
gUnknown_08F202C4:
    JAPANESE_TEXT("「このカンバンの あたり{BREAK}おとしものを しやすいので{BREAK}ちゅうい してください。」{BREAK}\0")
    ENGLISH_TEXT("@It is easy to lose items in{BREAK}the vicinity of this sign,{BREAK}so please be careful.{BREAK}\0")

    .global gUnknown_08F202EE
gUnknown_08F202EE:
    JAPANESE_TEXT("◆カンバンのしたに なんと{BREAK}いればが おちていた。{BREAK}\0")
    ENGLISH_TEXT("@Incredibly enough, you{BREAK}found dentures under the{BREAK}sign!{BREAK}\0")

    .global gUnknown_08F20309
gUnknown_08F20309:
    JAPANESE_TEXT("◆はいはい{BREAK}どこか ぐあいが わるいわけね。{BREAK}いっぱつで なおしてあげるからね。{BREAK}\0")
    ENGLISH_TEXT("@Hi there! Not{BREAK}feeling well, are{BREAK}we?{BREAK}{WAIT}@Then I can heal you{BREAK}up in a jiffy!{BREAK}\0")

    .global gUnknown_08F20333
gUnknown_08F20333:
    JAPANESE_TEXT("◆りかしつにきてくれ。{BREAK}\0")
    ENGLISH_TEXT("@Come to the science lab.{BREAK}\0")

    .global gUnknown_08F20340
gUnknown_08F20340:
    JAPANESE_TEXT("◆ふしぎな げんしょうは{BREAK}ひとまず おさまった。{BREAK}\0")
    ENGLISH_TEXT("@The mysterious phenomenon{BREAK}has stopped, for now...{BREAK}\0")

    .global gUnknown_08F2035A
gUnknown_08F2035A:
    JAPANESE_TEXT("◆つかいかたを せつめいするから{BREAK}よくみておくんだよ。{BREAK}いいか このスイッチを……{BREAK}{WAIT}◆あっ しまった おしちゃった。{BREAK}\0")
    ENGLISH_TEXT("@Listen closely, now. I'm{BREAK}going to explain how to use{BREAK}this.{BREAK}{WAIT}@All right. Whatever you do,{BREAK}don't press...{BREAK}{WAIT}@Oh, crap! I pressed it!{BREAK}\0")

    .global gUnknown_08F20398
gUnknown_08F20398:
    JAPANESE_TEXT("◆{0x03}{0x10}のすきな{BREAK}{0x03}{0x15}を つくるわ。{BREAK}{WAIT}◆それをたべて ゆっくりおやすみ。{BREAK}\0")
    ENGLISH_TEXT("@I'll make you some {0x03}{0x15},{BREAK}{0x03}{0x10}.{BREAK}{WAIT}@Eat some and scoot up to{BREAK}bed.{BREAK}\0")

    .global gUnknown_08F203BF
gUnknown_08F203BF:
    JAPANESE_TEXT("◆どうしましょ{BREAK} どうしましょ{BREAK}  どうしましょ{BREAK}{WAIT}◆どうしましょ{BREAK} どうしましょ{BREAK}{WAIT}◆どうしましょ{BREAK}{WAIT}◆うちのピッピが まいごになったの。{BREAK}{WAIT}◆マザ-ズデイの まちにいくなら{BREAK}ちょうちょうさんに{BREAK}れんらくしてくださいな。{BREAK}{WAIT}◆オロオロ  ウロウロ。{BREAK}\0")
    ENGLISH_TEXT("@Oh me, oh my!{BREAK} Oh me, oh my!{BREAK}  Oh me, oh my!{BREAK}{WAIT}@My dear Pippi's gotten{BREAK}lost.{BREAK}{WAIT}@If you're going into town,{BREAK}please tell the mayor for{BREAK}me, okay?{BREAK}{WAIT}(sniffle sniffle sob sob){BREAK}\0")

    .global gUnknown_08F20443
gUnknown_08F20443:
    JAPANESE_TEXT("◆どれを おひきとりしましょう?{BREAK}\0")
    ENGLISH_TEXT("@What would you like to{BREAK}sell?{BREAK}\0")

    .global gUnknown_08F20455
gUnknown_08F20455:
    JAPANESE_TEXT("◆{0x03}{0x1D}は{BREAK}{0x03}{0x1E}ドルで{BREAK}おひきとりしますが{BREAK}{WAIT}それで よろしいですか?{BREAK}\0")
    ENGLISH_TEXT("@I can buy your {0x03}{0x1D}{BREAK}for ${0x03}{0x1E}.{BREAK}{WAIT}@Is that okay with you?{BREAK}\0")

    .global gUnknown_08F2047A
gUnknown_08F2047A:
    JAPANESE_TEXT("◆{0x03}{0x3E}は{BREAK}そうそふのにっきの なかから{BREAK}つづきのことばをみつけ{BREAK}{WAIT}よみあげた。{BREAK}{WAIT}◆「あまかけるふねの わすれもの」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} took out his{BREAK}great-grandfather's diary{BREAK}and read these words aloud:{BREAK}{WAIT}…...That which was left{BREAK}behind by the ship that{BREAK}soars the heavens.”{BREAK}\0")

    .global gUnknown_08F204B8
gUnknown_08F204B8:
    JAPANESE_TEXT("◆うそ ついてるだろう。{BREAK}おれには おみとおしさ。{BREAK}\0")
    ENGLISH_TEXT("@You're lying.{BREAK}{WAIT}@I can see right through{BREAK}your tricks.{BREAK}\0")

    .global gUnknown_08F204D3
gUnknown_08F204D3:
    JAPANESE_TEXT("◆(おきゃくは さわいだ。){BREAK}{WAIT}◆3にんの グル-プって{BREAK}いったくせに{BREAK}3にん いないじゃないか!{BREAK}{WAIT}ブ-ブ-{BREAK}\0")
    ENGLISH_TEXT("@(The audience is unhappy.){BREAK}{WAIT}@You said there'd be a trio!{BREAK}There ain't three people{BREAK}here!{BREAK}{WAIT}Boo! Boo!{BREAK}\0")

    .global gUnknown_08F2050E
gUnknown_08F2050E:
    JAPANESE_TEXT("◆どれを あずけるの?{BREAK}\0")
    ENGLISH_TEXT("@Which item will you{BREAK}leave with me?{BREAK}\0")

    .global gUnknown_08F2051B
gUnknown_08F2051B:
    JAPANESE_TEXT("◆ドラゴンは ながい ながい{BREAK}ねむりの ときに はいっていた。{BREAK}\0")
    ENGLISH_TEXT("@The dragon was in a very{BREAK}deep sleep.{BREAK}\0")

    .global gUnknown_08F2053C
gUnknown_08F2053C:
    JAPANESE_TEXT("◆なにか ごよう?{BREAK}\0")
    ENGLISH_TEXT("@Can I help you?{BREAK}\0")

    .global gUnknown_08F20547
gUnknown_08F20547:
    JAPANESE_TEXT("◆{0x03}{0x1D}ね。{BREAK}だいじに しまっとくね。{BREAK}ほかに あずかるものは ある?{BREAK}\0")
    ENGLISH_TEXT("@Your {0x03}{0x1D}?{BREAK}{WAIT}@I'll take good{BREAK}care of it.{BREAK}{WAIT}@Do you want me to{BREAK}hold on to anything{BREAK}else?{BREAK}\0")

    .global gUnknown_08F2056B
gUnknown_08F2056B:
    JAPANESE_TEXT("◆じゃあ きをつけてね。{BREAK}\0")
    ENGLISH_TEXT("@Okay, then. Be{BREAK}careful out there.{BREAK}\0")

    .global gUnknown_08F20579
gUnknown_08F20579:
    JAPANESE_TEXT("◆{0x03}{0x1D}ね。{BREAK}だいじにしてね。{BREAK}ほかに もっていくものは ある?{BREAK}\0")
    ENGLISH_TEXT("@Your {0x03}{0x1D}?{BREAK}{WAIT}@Sure thing. Take{BREAK}good care of it,{BREAK}okay?{BREAK}{WAIT}@Is there anything{BREAK}else you want to{BREAK}take with you?{BREAK}\0")

    .global gUnknown_08F2059A
gUnknown_08F2059A:
    JAPANESE_TEXT("◆サンタクロ-スの えきの ちかくで{BREAK}がけくずれが あって{BREAK}きしゃが はしれないんだ。{BREAK}\0")
    ENGLISH_TEXT("@There was a landslide up by{BREAK}Santa Claus Station, so the{BREAK}train can't get through.{BREAK}\0")

    .global gUnknown_08F205C7
gUnknown_08F205C7:
    JAPANESE_TEXT("◆{0x03}{0x1D}で{BREAK}ございますね?{BREAK}\0")
    ENGLISH_TEXT("@The {0x03}{0x1D}, yes?{BREAK}\0")

    .global gUnknown_08F205D5
gUnknown_08F205D5:
    JAPANESE_TEXT("◆おきゃくさま{0x03}{0x17}{BREAK}それいじょう{BREAK}おもちになれないようですよ。{BREAK}\0")
    ENGLISH_TEXT("@It looks you can't hold any{BREAK}more items.{BREAK}\0")

    .global gUnknown_08F205F6
gUnknown_08F205F6:
    JAPANESE_TEXT("◆おや かねが たりないようだな。{BREAK}\0")
    ENGLISH_TEXT("@Oh. You don't seem{BREAK}to have enough{BREAK}money.{BREAK}\0")

    .global gUnknown_08F20609
gUnknown_08F20609:
    JAPANESE_TEXT("◆おや もちきれないようだな。{BREAK}\0")
    ENGLISH_TEXT("@Oh, my. It looks like you{BREAK}can't hold any more items.{BREAK}\0")

    .global gUnknown_08F2061A
gUnknown_08F2061A:
    JAPANESE_TEXT("◆これじゃあ おかねが たりないよ。{BREAK}でなおしておいで。{BREAK}\0")
    ENGLISH_TEXT("@You don't have{BREAK}enough money.{BREAK}{WAIT}@Come back again{BREAK}when you do.{BREAK}\0")

    .global gUnknown_08F20638
gUnknown_08F20638:
    JAPANESE_TEXT("◆きをつけて いってらっしゃい。{BREAK}\0")
    ENGLISH_TEXT("@Bye! Take care!{BREAK}\0")

    .global gUnknown_08F2064A
gUnknown_08F2064A:
    JAPANESE_TEXT("◆あら もてないの。{BREAK}それじゃあ こんど{BREAK}おあいした ときにね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, my. You can't carry any{BREAK}more things.{BREAK}{WAIT}@In that case, I'll give it{BREAK}to you the next time I see{BREAK}you.{BREAK}\0")

    .global gUnknown_08F2066C
gUnknown_08F2066C:
    JAPANESE_TEXT("◆ほらっ くすりだ。{BREAK}\0")
    ENGLISH_TEXT("@Here you go! Medicine!{BREAK}\0")

    .global gUnknown_08F20678
gUnknown_08F20678:
    JAPANESE_TEXT("◆じゃあ ゆっくり おやすみ。{BREAK}\0")
    ENGLISH_TEXT("@Okey-doke! Good night!{BREAK}\0")

    .global gUnknown_08F20689
gUnknown_08F20689:
    JAPANESE_TEXT("◆イクラ ヒキダシマスカ?{BREAK}\0")
    ENGLISH_TEXT("@WITHDRAW HOW MUCH?{BREAK}\0")

    .global gUnknown_08F20698
gUnknown_08F20698:
    JAPANESE_TEXT("◆イクラ アズケマスカ?{BREAK}\0")
    ENGLISH_TEXT("@DEPOSIT HOW MUCH?{BREAK}\0")

    .global gUnknown_08F206A6
gUnknown_08F206A6:
    JAPANESE_TEXT("◆さ まちにかえりましょ!{BREAK}\0")
    ENGLISH_TEXT("@Okay! Let's go back to town{BREAK}now!{BREAK}\0")

    .global gUnknown_08F206B5
gUnknown_08F206B5:
    JAPANESE_TEXT("◆あら もちきれないみたい。{BREAK}ざんねんだったわね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, no. Looks like{BREAK}you can't carry any{BREAK}more items.{BREAK}{WAIT}@That's too bad.{BREAK}\0")

    .global gUnknown_08F206D0
gUnknown_08F206D0:
    JAPANESE_TEXT("◆もてないのか? ざんねんだな。{BREAK}\0")
    ENGLISH_TEXT("@You can't carry any{BREAK}more stuff?{BREAK}{WAIT}@That's too bad.{BREAK}\0")

    .global gUnknown_08F206E2
gUnknown_08F206E2:
    JAPANESE_TEXT("◆もてないのなら またおいで。{BREAK}\0")
    ENGLISH_TEXT("@Looks like you can't carry{BREAK}any more stuff. Come by{BREAK}later when you can.{BREAK}\0")

    .global gUnknown_08F206F3
gUnknown_08F206F3:
    JAPANESE_TEXT("◆どのコ-スが いいかね?{BREAK}\0")
    ENGLISH_TEXT("@Which course would you{BREAK}like?{BREAK}\0")

    .global gUnknown_08F20702
gUnknown_08F20702:
    JAPANESE_TEXT("◆いればが ないと{BREAK}うまく しゃべれんのじゃ。{BREAK}\0")
    ENGLISH_TEXT("@I can't talk very well{BREAK}without my dentures.{BREAK}\0")

    .global gUnknown_08F2071B
gUnknown_08F2071B:
    JAPANESE_TEXT("◆まだ たりないようじゃな。{BREAK}\0")
    ENGLISH_TEXT("@Looks like you still don't{BREAK}have enough.{BREAK}\0")

    .global gUnknown_08F2072B
gUnknown_08F2072B:
    JAPANESE_TEXT("◆くせんしている ごようすね……{BREAK}し・ん・ぱ・い。{BREAK}\0")
    ENGLISH_TEXT("@You seem to be having a{BREAK}tough time...{BREAK}{WAIT}I'm so worried...{BREAK}\0")

    .global gUnknown_08F20746
gUnknown_08F20746:
    JAPANESE_TEXT("◆がんばってね。{BREAK}\0")
    ENGLISH_TEXT("@Good luck!{BREAK}\0")

    .global gUnknown_08F20750
gUnknown_08F20750:
    JAPANESE_TEXT("◆リ-ダ-は どいつだ。{BREAK}おもいしらせてやる!!{BREAK}\0")
    ENGLISH_TEXT("@Who's your leader?!{BREAK}{WAIT}I'm gonna teach 'im a{BREAK}lesson!!{BREAK}\0")

    .global gUnknown_08F2076A
gUnknown_08F2076A:
    JAPANESE_TEXT("◆ブラブラだんは あいかわらずよ。{BREAK}\0")
    ENGLISH_TEXT("@The BB Gang members are{BREAK}doing just fine.{BREAK}\0")

    .global gUnknown_08F2077D
gUnknown_08F2077D:
    JAPANESE_TEXT("◆おれを おこらせないでくれ。{BREAK}\0")
    ENGLISH_TEXT("@Please don't make me angry.{BREAK}\0")

    .global gUnknown_08F2078E
gUnknown_08F2078E:
    JAPANESE_TEXT("◆{0x03}{0x3E}は{BREAK}つうこうきょかしょうを{BREAK}こっそり てにいれた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} secretly pocketed{BREAK}it.{BREAK}\0")

    .global gUnknown_08F207AC
gUnknown_08F207AC:
    JAPANESE_TEXT("◆おや おかねがたりないようですね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you don't seem to have{BREAK}enough money.{BREAK}\0")

    .global gUnknown_08F207C0
gUnknown_08F207C0:
    JAPANESE_TEXT("◆おや{BREAK}それいじょう もてないようですね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, it looks like you can't{BREAK}carry any more things.{BREAK}\0")

    .global gUnknown_08F207D7
gUnknown_08F207D7:
    JAPANESE_TEXT("◆わたしは{BREAK}はかせの じょしゅAであります。{BREAK}{WAIT}◆わたくしも いちごあじのとうふが{BREAK}たべたいであります。{BREAK}\0")
    ENGLISH_TEXT("@I am the professor's{BREAK}Assistant A.{BREAK}{WAIT}@I, too, would love to try{BREAK}some strawberry-flavored{BREAK}tofu.{BREAK}\0")

    .global gUnknown_08F2080E
gUnknown_08F2080E:
    JAPANESE_TEXT("◆おっいしそう!{BREAK}{WAIT}◆ありがとう。 おれいに{BREAK}みみよりの じょうほうを{BREAK}あげようね。{BREAK}{WAIT}◆ホ-リ-ロ-リ-マウンテンの{BREAK}みずうみに すっごいロボットが{BREAK}しずんでるんだ。{BREAK}{WAIT}◆たぶん まだ うごくはずだぞ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, it looks so good!{BREAK}{WAIT}@Thanks, I appreciate it.{BREAK}{WAIT}As a token of my gratitude,{BREAK}I'll share some information{BREAK}I heard.{BREAK}{WAIT}@There's an amazing robot at{BREAK}the bottom of a lake on{BREAK}Holy Loly Mountain.{BREAK}{WAIT}@I bet it still works, too!{BREAK}\0")

    .global gUnknown_08F20879
gUnknown_08F20879:
    JAPANESE_TEXT("◆わしは じょしゅAににていますが{BREAK}じょしゅBでございます。{BREAK}{WAIT}◆わしも{BREAK}おおいに いちごあじのとうふを{BREAK}ほっしております。{BREAK}\0")
    ENGLISH_TEXT("@I realize I look like{BREAK}Assistant A, but I'm{BREAK}actually Assistant B.{BREAK}{WAIT}@I really, truly want to try{BREAK}strawberry-flavored tofu{BREAK}too.{BREAK}\0")

    .global gUnknown_08F208BA
gUnknown_08F208BA:
    JAPANESE_TEXT("◆おお! おお! うれしゅうござる。{BREAK}この のろいのことばを{BREAK}おもちかえりくだされ。{BREAK}\0")
    ENGLISH_TEXT("@Oh! Oh! I'm so happy!{BREAK}{WAIT}@Please, take these Curse{BREAK}Words with you.{BREAK}\0")

    .global gUnknown_08F208E6
gUnknown_08F208E6:
    JAPANESE_TEXT("  きずぐすり  ねむり\0")
    ENGLISH_TEXT("  Medicine  Sleep\0")

    .global gUnknown_08F208F3
gUnknown_08F208F3:
    JAPANESE_TEXT("◆もちきれないのか……{BREAK}あとで わすれずに とりにおいで。{BREAK}\0")
    ENGLISH_TEXT("@You can't hold any more{BREAK}stuff...{BREAK}{WAIT}@Come get it later, then.{BREAK}Don't forget!{BREAK}\0")

    .global gUnknown_08F20912
gUnknown_08F20912:
    JAPANESE_TEXT("◆でかぶくろを とりにきたんだね。{BREAK}まっていたよ。{BREAK}\0")
    ENGLISH_TEXT("@You're here for your{BREAK}Big Bag, right?{BREAK}{WAIT}I've been expecting you.{BREAK}\0")

    .global gUnknown_08F2092D
gUnknown_08F2092D:
    JAPANESE_TEXT("◆でかぶくろは{BREAK}あんたに プレゼントするよ。{BREAK}\0")
    ENGLISH_TEXT("@Here, this is for you.{BREAK}It's a Big Bag.{BREAK}\0")

    .global gUnknown_08F20945
gUnknown_08F20945:
    JAPANESE_TEXT("◆たいしたもんだいじゃねぇな。{BREAK}{WAIT}◆そんなことより{BREAK}うちのにょうぼうだよ。{BREAK}{WAIT}◆まいあさ ひるまで{BREAK}ねむってやがって{BREAK}べんとうも つくらねぇ。{BREAK}{WAIT}◆ひでぇはなしだろ?{BREAK}\0")
    ENGLISH_TEXT("@It's no big deal.{BREAK}{WAIT}@The real problem is my{BREAK}wife.{BREAK}{WAIT}@She sleeps until noon every{BREAK}day and she never packs me{BREAK}a lunch.{BREAK}{WAIT}@Isn't that just terrible?{BREAK}\0")

    .global gUnknown_08F2099D
gUnknown_08F2099D:
    JAPANESE_TEXT("◆あっ {0x03}{0x12}が{BREAK}しんでる。{BREAK}\0")
    ENGLISH_TEXT("@Oh! {0x03}{0x12} is dead!{BREAK}\0")

    .global gUnknown_08F209AC
gUnknown_08F209AC:
    JAPANESE_TEXT("◆いつも ありがとう。{BREAK}おれいに……{BREAK}{WAIT}◆せいこうを いのっているよ。{BREAK}\0")
    ENGLISH_TEXT("@Thank you for everything.{BREAK}{WAIT}@As a token of my{BREAK}gratitude...{BREAK}{WAIT}I'll be praying for your{BREAK}success.{BREAK}\0")

    .global gUnknown_08F209D2
gUnknown_08F209D2:
    JAPANESE_TEXT("◆わたしは ロ-ラよ。{BREAK}\0")
    ENGLISH_TEXT("@I'm Laura.{BREAK}\0")

    .global gUnknown_08F209DF
gUnknown_08F209DF:
    JAPANESE_TEXT("◆あらま{BREAK}えいゆうの {0x03}{0x10}くん。{BREAK}ひとりでかえってくるとは……{BREAK}{WAIT}……きゅうけいですかな?{BREAK}\0")
    ENGLISH_TEXT("@Oh, my! It's {0x03}{0x10}, the{BREAK}hero!{BREAK}{WAIT}I never expected you to{BREAK}return all alone...{BREAK}{WAIT}@Are you taking a break?{BREAK}\0")

    .global gUnknown_08F20A0F
gUnknown_08F20A0F:
    JAPANESE_TEXT("◆ちいさいおじょうちゃん。{BREAK}ここは きみみたいなこどもが{BREAK}ひとりでくるところじゃないのよ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, little girl.{BREAK}{WAIT}@This is no place for a{BREAK}child like you.{BREAK}\0")

    .global gUnknown_08F20A3E
gUnknown_08F20A3E:
    JAPANESE_TEXT("◆やあ {0x03}{0x16}くん!{BREAK}げんきで やっているかね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, {0x03}{0x16}!{BREAK}How are you doing?{BREAK}\0")

    .global gUnknown_08F20A57
gUnknown_08F20A57:
    JAPANESE_TEXT("◆おはよう おにいちゃん。{BREAK}よく ねむれたみたいね。{BREAK}\0")
    ENGLISH_TEXT("@Good morning. It looks like{BREAK}you slept well.{BREAK}\0")

    .global gUnknown_08F20A73
gUnknown_08F20A73:
    JAPANESE_TEXT("◆またきてね。 きっとだよ。{BREAK}\0")
    ENGLISH_TEXT("@Please come again, okay?{BREAK}Promise?{BREAK}\0")

    .global gUnknown_08F20A83
gUnknown_08F20A83:
    JAPANESE_TEXT("◆おはよう!{BREAK}\0")
    ENGLISH_TEXT("@Good morning!{BREAK}\0")

    .global gUnknown_08F20A8B
gUnknown_08F20A8B:
    JAPANESE_TEXT("◆ここにいる サルは{BREAK}うそつきが おおいから{BREAK}きをつけなよ。{BREAK}\0")
    ENGLISH_TEXT("@Be careful. A lot of the{BREAK}monkeys here like to lie.{BREAK}\0")

    .global gUnknown_08F20AAB
gUnknown_08F20AAB:
    JAPANESE_TEXT("◆うふふっ おれって{BREAK}サルにみえるかな?{BREAK}\0")
    ENGLISH_TEXT("@Heheh. Do I look like a{BREAK}monkey?{BREAK}\0")

    .global gUnknown_08F20AC1
gUnknown_08F20AC1:
    JAPANESE_TEXT("◆……じつはタヌキなんだ。{BREAK}ばけてるのさ。{BREAK}\0")
    ENGLISH_TEXT("@...I'm actually a tanuki,{BREAK}also known as a raccoon{BREAK}dog.{BREAK}{WAIT}@I'm in disguise.{BREAK}\0")

    .global gUnknown_08F20AD8
gUnknown_08F20AD8:
    JAPANESE_TEXT("◆おまえ めがいいなぁ。{BREAK}まいった。{BREAK}\0")
    ENGLISH_TEXT("@Darn.{BREAK}{WAIT}@You have really good eyes,{BREAK}you know that?{BREAK}\0")

    .global gUnknown_08F20AEC
gUnknown_08F20AEC:
    JAPANESE_TEXT("◆ゲ-ムなんか やめちまおうぜ。{BREAK}\0")
    ENGLISH_TEXT("@You should quit playing.{BREAK}\0")

    .global gUnknown_08F20AFE
gUnknown_08F20AFE:
    JAPANESE_TEXT("◆おまえ ほんとうにいいのか。{BREAK}\0")
    ENGLISH_TEXT("@Are you really sure about{BREAK}that?{BREAK}\0")

    .global gUnknown_08F20B0F
gUnknown_08F20B0F:
    JAPANESE_TEXT("◆ま しょうがねえな。{BREAK}\0")
    ENGLISH_TEXT("@Oh. Oh, well, then.{BREAK}\0")

    .global gUnknown_08F20B1C
gUnknown_08F20B1C:
    JAPANESE_TEXT("◆おれのスピ-ドに おいつけたな。{BREAK}たいしたもんだ。{BREAK}ほれっ いいものをやるぜ。{BREAK}\0")
    ENGLISH_TEXT("@You managed to catch me.{BREAK}{WAIT}You're really something.{BREAK}{WAIT}@Here's something nice for{BREAK}you.{BREAK}\0")

    .global gUnknown_08F20B46
gUnknown_08F20B46:
    JAPANESE_TEXT("◆みぎにまがって ひだりにまがると{BREAK}いいものがあるよ。{BREAK}\0")
    ENGLISH_TEXT("@Turn right and then left to{BREAK}find something nice.{BREAK}\0")

    .global gUnknown_08F20B63
gUnknown_08F20B63:
    JAPANESE_TEXT("◆へいわそうにみえるけど{BREAK}ここは くらくていけないよね。{BREAK}\0")
    ENGLISH_TEXT("@It seems peaceful in here,{BREAK}but it's also way too dark.{BREAK}\0")

    .global gUnknown_08F20B81
gUnknown_08F20B81:
    JAPANESE_TEXT("◆とにかく まっすぐあるけ!{BREAK}しんじつってのは{BREAK}まっすぐゆくところにある。{BREAK}\0")
    ENGLISH_TEXT("@Straight!{BREAK}Just walk straight!{BREAK}{WAIT}The truth is somewhere{BREAK}straight ahead.{BREAK}\0")

    .global gUnknown_08F20BA8
gUnknown_08F20BA8:
    JAPANESE_TEXT("あたしは レディよ。{BREAK}きやすく はなしかけないでね。{BREAK}\0")
    ENGLISH_TEXT("@I'm a lady, you know.{BREAK}{WAIT}@You shouldn't walk up to a{BREAK}lady so casually and start{BREAK}talking.{BREAK}{WAIT}Don't you agree?{BREAK}\0")

    .global gUnknown_08F20BC4
gUnknown_08F20BC4:
    JAPANESE_TEXT("◆おれ ほんとは おとこだよ。{BREAK}\0")
    ENGLISH_TEXT("@Actually, I'm a man.{BREAK}\0")

    .global gUnknown_08F20BD5
gUnknown_08F20BD5:
    JAPANESE_TEXT("◆ランララランラ ラララララ。{BREAK}あ このメロディ-のことは{BREAK}きにかけないでくれ。{BREAK}\0")
    ENGLISH_TEXT("@La-la la la-la, la la la la{BREAK}la...{BREAK}{WAIT}@Oh, don't pay any attention{BREAK}to this melody.{BREAK}\0")

    .global gUnknown_08F20BFF
gUnknown_08F20BFF:
    JAPANESE_TEXT("◆おまえ ここにたどりつくまでに{BREAK}どれくらいのじかんを かけた?{BREAK}{WAIT}◆いや ただきいてみただけさ。{BREAK}\0")
    ENGLISH_TEXT("@How long has it taken you{BREAK}to get this far?{BREAK}{WAIT}@Oh, I just thought I'd ask.{BREAK}\0")

    .global gUnknown_08F20C33
gUnknown_08F20C33:
    JAPANESE_TEXT("◆いいはなしがあるんだけど{BREAK}きくか?{BREAK}\0")
    ENGLISH_TEXT("@I got some good information{BREAK}for you. You interested?{BREAK}\0")

    .global gUnknown_08F20C47
gUnknown_08F20C47:
    JAPANESE_TEXT("◆……あのな{BREAK}ともだちは たいせつにしろよ。{BREAK}そういうことだ。{BREAK}\0")
    ENGLISH_TEXT("@Well, basically...{BREAK}Treasure your friends.{BREAK}{WAIT}@That's all I have to say.{BREAK}\0")

    .global gUnknown_08F20C68
gUnknown_08F20C68:
    JAPANESE_TEXT("◆ちてきこうきしんの ないやつめ!{BREAK}\0")
    ENGLISH_TEXT("@Fine, then!{BREAK}{WAIT}@You have no intellectual{BREAK}curiosity at all!{BREAK}\0")

    .global gUnknown_08F20C7B
gUnknown_08F20C7B:
    JAPANESE_TEXT("◆このおくに いってはならん!{BREAK}\0")
    ENGLISH_TEXT("@Stop! You must not go this{BREAK}way!{BREAK}\0")

    .global gUnknown_08F20C8C
gUnknown_08F20C8C:
    JAPANESE_TEXT("◆おれは ここのサルどもは{BREAK}しんようしていない。{BREAK}うそつきばかりだからな。{BREAK}{WAIT}◆みぎ ひだり ひだり{BREAK}そして みぎだ。{BREAK}\0")
    ENGLISH_TEXT("@I don't trust any of the{BREAK}monkeys here.{BREAK}{WAIT}All they ever do is lie.{BREAK}{WAIT}@Go right, left, left, and{BREAK}then right.{BREAK}\0")

    .global gUnknown_08F20CCA
gUnknown_08F20CCA:
    JAPANESE_TEXT("◆ひきかえせ!{BREAK}そして つまり{BREAK}{WAIT}ひきかえしたく なかったら{BREAK}そのままゆけ!{BREAK}\0")
    ENGLISH_TEXT("@Turn back!{BREAK}{WAIT}@Or, if you don't feel like{BREAK}turning back, then just{BREAK}keep going!{BREAK}\0")

    .global gUnknown_08F20CF3
gUnknown_08F20CF3:
    JAPANESE_TEXT("◆うみのみえるまちでは{BREAK}あたらしい なかまに{BREAK}であうであろうぞ。{BREAK}\0")
    ENGLISH_TEXT("@I think you'll meet a new{BREAK}friend in a city with an{BREAK}ocean view.{BREAK}\0")

    .global gUnknown_08F20D15
gUnknown_08F20D15:
    JAPANESE_TEXT("◆おら むくちな サルだ。{BREAK}{WAIT}◆おらは おしゃべりは にがてだ。{BREAK}{WAIT}◆………な。{BREAK}{WAIT}◆………。{BREAK}\0")
    ENGLISH_TEXT("@I'm a shy monkey.{BREAK}{WAIT}@Talking isn't really my{BREAK}thing.{BREAK}{WAIT}@......Okay?{BREAK}{WAIT}@......{BREAK}\0")

    .global gUnknown_08F20D49
gUnknown_08F20D49:
    JAPANESE_TEXT("◆このあたりには{BREAK}めがみさまが いるんだぞ。{BREAK}\0")
    ENGLISH_TEXT("@Hubba hubba. Heaven must be{BREAK}missing an angel.{BREAK}\0")

    .global gUnknown_08F20D61
gUnknown_08F20D61:
    JAPANESE_TEXT("◆サルのいうことは{BREAK}うそばっかりだと おもうなよ。{BREAK}\0")
    ENGLISH_TEXT("@Don't assume that all{BREAK}monkeys are liars.{BREAK}\0")

    .global gUnknown_08F20D7C
gUnknown_08F20D7C:
    JAPANESE_TEXT("◆わたしが サルのボスだが{BREAK}ほかのサルたちのウソつきぶりには{BREAK}あたまを なやませておる。{BREAK}{WAIT}◆まっすぐ すすんで{BREAK}みぎに でぐちがある。{BREAK}\0")
    ENGLISH_TEXT("@I'm the boss monkey. It{BREAK}annoys me how the others{BREAK}lie all the time.{BREAK}{WAIT}@Go straight ahead and{BREAK}you'll find the exit to{BREAK}your right.{BREAK}\0")

    .global gUnknown_08F20DC3
gUnknown_08F20DC3:
    JAPANESE_TEXT("◆しっぱいしたなぁ…… ほんと。{BREAK}こんなとこにきちゃってさ{BREAK}しっぱいだったよ。{BREAK}\0")
    ENGLISH_TEXT("@Boy, did I mess up...{BREAK}{WAIT}@I must've made a serious{BREAK}mistake to wind up here.{BREAK}\0")

    .global gUnknown_08F20DEC
gUnknown_08F20DEC:
    JAPANESE_TEXT("◆たすけて おにいちゃん!{BREAK}\0")
    ENGLISH_TEXT("@Help!{BREAK}\0")

    .global gUnknown_08F20DFB
gUnknown_08F20DFB:
    JAPANESE_TEXT("◆あっ でんわだ!{BREAK}{0x03}{0x10} おねがい。{BREAK}\0")
    ENGLISH_TEXT("@Oh, the phone!{BREAK}Could you get it, {0x03}{0x10}?{BREAK}\0")

    .global gUnknown_08F20E0F
gUnknown_08F20E0F:
    JAPANESE_TEXT("◆わたくしが ちょうちょう……{BREAK}じゃなくて{BREAK}じょやくの アボットです。{BREAK}{WAIT}◆ちょうちょうさんは あちらです。{BREAK}\0")
    ENGLISH_TEXT("@I'm Abbot, the mayor...'s{BREAK}assistant.{BREAK}{WAIT}@The mayor is right over{BREAK}there.{BREAK}\0")

    .global gUnknown_08F20E48
gUnknown_08F20E48:
    JAPANESE_TEXT("◆あとでいいこと おしえてあげる。{BREAK}\0")
    ENGLISH_TEXT("@I have a secret to share{BREAK}with you later.{BREAK}\0")

    .global gUnknown_08F20E5B
gUnknown_08F20E5B:
    JAPANESE_TEXT("◆あ また とまりにきたんだね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you came to stay the{BREAK}night again?{BREAK}\0")

    .global gUnknown_08F20E6D
gUnknown_08F20E6D:
    JAPANESE_TEXT("◆まあ たびのおかた。{BREAK}\0")
    ENGLISH_TEXT("@Oh, a traveler!{BREAK}\0")

    .global gUnknown_08F20E7A
gUnknown_08F20E7A:
    JAPANESE_TEXT("◆ゆうれいやしきが{BREAK}ばけものたいじ だとおもったら{BREAK}おおまちがい。{BREAK}{WAIT}メロディ-が あるのよ。{BREAK}\0")
    ENGLISH_TEXT("@If you think you're{BREAK}supposed to bust the ghosts{BREAK}in the haunted house...{BREAK}{WAIT}you're gravely mistaken.{BREAK}{WAIT}@No, there's actually a{BREAK}melody there.{BREAK}\0")

    .global gUnknown_08F20EAC
gUnknown_08F20EAC:
    JAPANESE_TEXT("◆{0x03}{0x12}は きっとどこかで{BREAK}げんきでいると しんじています。{BREAK}\0")
    ENGLISH_TEXT("@I have faith that {0x03}{0x12} is{BREAK}doing well somewhere out{BREAK}there.\0")

    .global gUnknown_08F20ECB
gUnknown_08F20ECB:
    JAPANESE_TEXT("◆みせいねんだな。 ほどうする。{BREAK}\0")
    ENGLISH_TEXT("@Hey, you're underage. I'm{BREAK}taking you into custody.{BREAK}\0")

    .global gUnknown_08F20EDD
gUnknown_08F20EDD:
    JAPANESE_TEXT("◆おまえ{BREAK}ぢらい ふんだんだってな。{BREAK}{WAIT}◆おれは{BREAK}いぬのくそ ふんだことあるぜ。{BREAK}\0")
    ENGLISH_TEXT("@Say, I heard you stepped on{BREAK}a land mine.{BREAK}{WAIT}@I stepped in dog crap once{BREAK}myself.{BREAK}\0")

    .global gUnknown_08F20F08
gUnknown_08F20F08:
    JAPANESE_TEXT("◆おまえ{BREAK}アドベントさばくとかってところで{BREAK}うんこ ふんだんだってな。{BREAK}{WAIT}だっせぇ!{BREAK}\0")
    ENGLISH_TEXT("@I heard you stepped in dog{BREAK}crap in some place called{BREAK}the Advent Desert.{BREAK}{WAIT}@Could you get any lamer?!{BREAK}\0")

    .global gUnknown_08F20F35
gUnknown_08F20F35:
    JAPANESE_TEXT("   「にんていしょう」{BREAK}{0x03}{0x14}{BREAK}どの{BREAK}{WAIT}◆あなたは アドベントさばくにおいて{BREAK}たしかに ぢらいを ふんだことを{BREAK}みとめます。{BREAK}{WAIT}◆このばしょは{BREAK}ほかの プレイヤ-には{BREAK}ひみつにしておいてください。{BREAK}{WAIT}        いとい しげさと{BREAK}\0")
    ENGLISH_TEXT("Certificate{BREAK}{WAIT}This hereby certifies that:{BREAK}   {0x03}{0x14}{BREAK}{WAIT}has stepped on the land{BREAK}mine in the Advent Desert.{BREAK}{WAIT}Please keep this location a{BREAK}secret from other players.{BREAK}{WAIT}   -Shigesato Itoi{BREAK}{BREAK}\0")

    .global gUnknown_08F20FAE
gUnknown_08F20FAE:
    JAPANESE_TEXT("◆よくねてたようね。{BREAK}きょうは どちらにおでかけかしら。{BREAK}いってらっしゃ-い。{BREAK}\0")
    ENGLISH_TEXT("@It looks like you slept{BREAK}well.{BREAK}{WAIT}@Where are you off to today?{BREAK}{WAIT}@Well, take care!{BREAK}\0")

    .global gUnknown_08F20FD7
gUnknown_08F20FD7:
    JAPANESE_TEXT("◆あら ごめんかいじゃないんですか?{BREAK}かんじゃさんなら{BREAK}おくのへやへどうぞ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you're not here{BREAK}to visit someone?{BREAK}{WAIT}@If you are the{BREAK}patient, come into{BREAK}the back room.{BREAK}\0")

    .global gUnknown_08F20FFF
gUnknown_08F20FFF:
    JAPANESE_TEXT("◆そういうかたは{BREAK}にゅういんしていらっしゃいません。{BREAK}\0")
    ENGLISH_TEXT("@We don't have{BREAK}anyone named that{BREAK}in our hospital.{BREAK}\0")

    .global gUnknown_08F2101B
gUnknown_08F2101B:
    JAPANESE_TEXT("◆ことしのカゼは{BREAK}なかなかひどいよ。{BREAK}げっそり やせちまった。{BREAK}\0")
    ENGLISH_TEXT("@The cold this year is{BREAK}especially bad.{BREAK}{WAIT}@It's made me so scrawny...{BREAK}\0")

    .global gUnknown_08F2103C
gUnknown_08F2103C:
    JAPANESE_TEXT("◆わたしは カゼひいてないの。{BREAK}ゴホン ゴホン。{BREAK}{WAIT}◆あ これは セキじゃなくて{BREAK}くちぐせよ。 ゴホン ゴホン。{BREAK}\0")
    ENGLISH_TEXT("@I don't have a cold.{BREAK}{WAIT}Cough cough.{BREAK}{WAIT}@Oh, that wasn't a cough.{BREAK}{WAIT}it's just something I say{BREAK}out of habit.{BREAK}{WAIT}@Cough cough.{BREAK}\0")

    .global gUnknown_08F21077
gUnknown_08F21077:
    JAPANESE_TEXT("◆つかれたら ホテル。{BREAK}ねむくなったら ホテル。{BREAK}ま そういうことだね。{BREAK}\0")
    ENGLISH_TEXT("@Exhausted? Go to the hotel.{BREAK}{WAIT}@Sleepy? Go to the hotel.{BREAK}{WAIT}@That's all there is to say,{BREAK}really.{BREAK}\0")

    .global gUnknown_08F2109D
gUnknown_08F2109D:
    JAPANESE_TEXT("◆あ どうも。 へへへへ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, hi. Heh heh.{BREAK}\0")

    .global gUnknown_08F210AC
gUnknown_08F210AC:
    JAPANESE_TEXT("◆ここは レストラン ランラン{BREAK}たのしい レストラン ランラン{BREAK}たのしい?{BREAK}\0")
    ENGLISH_TEXT("@This is a restaurant,{BREAK}tra-la-la!{BREAK}{WAIT}@A happy restaurant,{BREAK}ha-ha-ha!{BREAK}{WAIT}@Are you feeling happy?{BREAK}\0")

    .global gUnknown_08F210D3
gUnknown_08F210D3:
    JAPANESE_TEXT("◆どこのまちでも{BREAK}レストランの しはいにんって{BREAK}ミュ-ジカルっぽいのかしら。{BREAK}\0")
    ENGLISH_TEXT("@Are restaurant owners{BREAK}everywhere so musical, I{BREAK}wonder?{BREAK}\0")

    .global gUnknown_08F210FB
gUnknown_08F210FB:
    JAPANESE_TEXT("◆ぼくも {0x03}{0x15}は{BREAK}おいしいとおもうなぁ。{BREAK}\0")
    ENGLISH_TEXT("@I just love {0x03}{0x15}, too.{BREAK}\0")

    .global gUnknown_08F21111
gUnknown_08F21111:
    JAPANESE_TEXT("◆ここらのホテルは{BREAK}マザ-ズデイ あたりと{BREAK}せつびは おなじなのに{BREAK}{WAIT}りょうきんが たかいね。{BREAK}ブツブツ……{BREAK}\0")
    ENGLISH_TEXT("@The hotels around here are{BREAK}really no different from{BREAK}the ones in Mother's Day,{BREAK}{WAIT}yet they cost so much more.{BREAK}{WAIT}(mutter grumble){BREAK}\0")

    .global gUnknown_08F2114A
gUnknown_08F2114A:
    JAPANESE_TEXT("◆この ホテルは やすいね。{BREAK}やすいってだけが とりえだね。{BREAK}\0")
    ENGLISH_TEXT("@This hotel is cheap.{BREAK}{WAIT}@But that's about the only{BREAK}thing it has going for it.{BREAK}\0")

    .global gUnknown_08F2116A
gUnknown_08F2116A:
    JAPANESE_TEXT("◆がけくずれで おおいわが{BREAK}せんろをふさいでしまってねぇ。{BREAK}きしゃが とおれないのよ。{BREAK}\0")
    ENGLISH_TEXT("@There was a landslide and{BREAK}now big rocks are blocking{BREAK}the railroad tracks.{BREAK}{WAIT}@The train can't get{BREAK}through.{BREAK}\0")

    .global gUnknown_08F21197
gUnknown_08F21197:
    JAPANESE_TEXT("◆きみって どうぶつのことばが{BREAK}わかるんだね。{BREAK}{WAIT}◆じゃ おしえてあげるけど{BREAK}ぼくを チェックしてごらん。{BREAK}{WAIT}◆ワンッ。{BREAK}\0")
    ENGLISH_TEXT("@You understand animal talk,{BREAK}right?{BREAK}{WAIT}@Then I'll give you a hint:{BREAK}try checking me.{BREAK}{WAIT}@Woof!{BREAK}\0")

    .global gUnknown_08F211D7
gUnknown_08F211D7:
    JAPANESE_TEXT("◆おかねが たりないわ。{BREAK}ざんねんね。{BREAK}また ききにいらっしゃいよ。{BREAK}\0")
    ENGLISH_TEXT("@You don't have enough{BREAK}money. That's too bad.{BREAK}{WAIT}@Please come again some{BREAK}other time.{BREAK}\0")

    .global gUnknown_08F211FB
gUnknown_08F211FB:
    JAPANESE_TEXT("◆いらっしゃいませ。{BREAK}こちらのメニュ-をごらんください。{BREAK}\0")
    ENGLISH_TEXT("@Welcome!{BREAK}{WAIT}Please have a look at our{BREAK}menu.{BREAK}\0")

    .global gUnknown_08F21219
gUnknown_08F21219:
    JAPANESE_TEXT("◆ありがとうございます。{BREAK}{0x03}{0x1D} ワン{BREAK}テイクアウト プリ-ズ!{BREAK}\0")
    ENGLISH_TEXT("@Thank you.{BREAK}{WAIT}One order of {0x03}{0x1D} to{BREAK}go!{BREAK}\0")

    .global gUnknown_08F2123A
gUnknown_08F2123A:
    JAPANESE_TEXT("◆かれ……もう……{BREAK}こないかもしれない。{BREAK}\0")
    ENGLISH_TEXT("@He...{BREAK}{WAIT}...might never come again.{BREAK}\0")

    .global gUnknown_08F21250
gUnknown_08F21250:
    JAPANESE_TEXT("◆たのしんでってね。{BREAK}\0")
    ENGLISH_TEXT("@Have fun!{BREAK}\0")

    .global gUnknown_08F2125C
gUnknown_08F2125C:
    JAPANESE_TEXT("◆ボ-イさん ワインリストまだぁ?{BREAK}\0")
    ENGLISH_TEXT("@Hey, waiter!{BREAK}Where's the wine list I{BREAK}asked for?{BREAK}\0")

    .global gUnknown_08F2126F
gUnknown_08F2126F:
    JAPANESE_TEXT("◆{0x03}{0x15}が たべてみたいわ。{BREAK}\0")
    ENGLISH_TEXT("@I want to try some {0x03}{0x15}.{BREAK}\0")

    .global gUnknown_08F2127E
gUnknown_08F2127E:
    JAPANESE_TEXT("◆ゾンビたちに{BREAK}かみのこころを つたえて{BREAK}{WAIT}いいひとに なってほしいと{BREAK}ねがっている。{BREAK}{WAIT}◆でも ゾンビは……コワイ!{BREAK}\0")
    ENGLISH_TEXT("@I'd like to help the{BREAK}zombies become friendly by{BREAK}teaching them about God.{BREAK}{WAIT}@But...{BREAK}Zombies freak me out!{BREAK}\0")

    .global gUnknown_08F212BD
gUnknown_08F212BD:
    JAPANESE_TEXT("◆ピッピだよ!{BREAK}ほんとに あえたね{BREAK}{0x03}{0x16}ちゃん。{BREAK}{WAIT}◆わたしも ママに ないしょで{BREAK}こんなところまで{BREAK}あそびにきてるのよ。{BREAK}\0")
    ENGLISH_TEXT("@It's me, Pippi!{BREAK}{WAIT}@We really did meet again,{BREAK}{0x03}{0x16}!{BREAK}{WAIT}@I went out to play again.{BREAK}That's why I'm here.{BREAK}{WAIT}Don't tell my mom, though.{BREAK}\0")

    .global gUnknown_08F212FD
gUnknown_08F212FD:
    JAPANESE_TEXT("◆あら{BREAK}ようちえんで となりのせきだった{BREAK}{WAIT}はなたらしの{BREAK}{0x03}{0x16}ちゃんじゃない?{BREAK}{WAIT}◆ひとまちがいかしら?{BREAK}\0")
    ENGLISH_TEXT("@Oh, aren't you {0x03}{0x16}, that{BREAK}snot-nose kid who sat next{BREAK}to me in kindergarten?{BREAK}{WAIT}@Or are you someone else?{BREAK}\0")

    .global gUnknown_08F21335
gUnknown_08F21335:
    JAPANESE_TEXT("◆くいにげしないでね。{BREAK}……しつれいだけど。{BREAK}\0")
    ENGLISH_TEXT("@Please don't dine-and-dash.{BREAK}{WAIT}Sorry if that comes off as{BREAK}distrustful...{BREAK}\0")

    .global gUnknown_08F2134D
gUnknown_08F2134D:
    JAPANESE_TEXT("◆あなた{BREAK}しょくよくおうせい みたいね。{BREAK}\0")
    ENGLISH_TEXT("@You know, you look like you{BREAK}have a big appetite.{BREAK}\0")

    .global gUnknown_08F21363
gUnknown_08F21363:
    JAPANESE_TEXT("◆きしゃは うごいてないよ。{BREAK}せんろを こわされちまったからね。{BREAK}{WAIT}◆あんまり{BREAK}つっこんだ しつもんをするな。{BREAK}{WAIT}◆しつこいなぁ{BREAK}ないちゃうぞ オレだって。{BREAK}\0")
    ENGLISH_TEXT("@With the tracks ruined, the{BREAK}train has stopped running.{BREAK}{WAIT}@Quit with all the pesky{BREAK}questions, will ya?{BREAK}{WAIT}@Geez, you're persistent.{BREAK}{WAIT}@You're gonna make me cry{BREAK}with all your questions.{BREAK}\0")

    .global gUnknown_08F213B5
gUnknown_08F213B5:
    JAPANESE_TEXT("◆たちどまらないで さっさとあるけ!{BREAK}\0")
    ENGLISH_TEXT("@Don't just stand there!{BREAK}Get moving!{BREAK}\0")

    .global gUnknown_08F213C9
gUnknown_08F213C9:
    JAPANESE_TEXT("◆けっこう{BREAK}くろうしたかおしてるなあ おまえ。{BREAK}ま ゆっくり はんせいしろよ。{BREAK}\0")
    ENGLISH_TEXT("@You look like you've been{BREAK}through a lot.{BREAK}{WAIT}@Well, now you can sit back,{BREAK}relax, and regret it all.{BREAK}\0")

    .global gUnknown_08F213F2
gUnknown_08F213F2:
    JAPANESE_TEXT("◆だいかつやくの うわさは{BREAK}きいてるわ。{BREAK}{WAIT}◆あなたって{BREAK}やっぱり ゆうきあるのね。{BREAK}\0")
    ENGLISH_TEXT("@I've heard about all the{BREAK}great things you've been up{BREAK}to.{BREAK}{WAIT}@You must really be brave,{BREAK}huh?{BREAK}\0")

    .global gUnknown_08F2141F
gUnknown_08F2141F:
    JAPANESE_TEXT("◆カナリアむらは{BREAK}きたにのぼって にしのほうがくだ。{BREAK}{WAIT}◆あそこは{BREAK}にゅうえんりょうも タダだし{BREAK}いくといいぞ。{BREAK}\0")
    ENGLISH_TEXT("@Canary Village is north and{BREAK}west of here.{BREAK}{WAIT}@You should definitely go{BREAK}visit it - admission is{BREAK}free!{BREAK}\0")

    .global gUnknown_08F2145A
gUnknown_08F2145A:
    JAPANESE_TEXT("◆まちやくばに{BREAK}びじんのひしょが いるんだよな。{BREAK}1かいの うけつけさ。{BREAK}\0")
    ENGLISH_TEXT("@There's this really pretty{BREAK}secretary at the town hall.{BREAK}{WAIT}@She's the first floor{BREAK}receptionist.{BREAK}\0")

    .global gUnknown_08F21480
gUnknown_08F21480:
    JAPANESE_TEXT("◆は-ら へった-。{BREAK}\0")
    ENGLISH_TEXT("@I'm starving.{BREAK}\0")

    .global gUnknown_08F2148C
gUnknown_08F2148C:
    JAPANESE_TEXT("◆ファミコンしてるじかんがあったら{BREAK}べんきょうしなさいって{BREAK}むすこに いってやったわよ。{BREAK}\0")
    ENGLISH_TEXT("@It's like I told my son,{BREAK}…If you have time to play{BREAK}Nintendo games...{BREAK}{WAIT}then you should be studying{BREAK}instead!”{BREAK}\0")

    .global gUnknown_08F214BA
gUnknown_08F214BA:
    JAPANESE_TEXT("◆おまえって{BREAK}あかるいかおしてるなぁ。{BREAK}\0")
    ENGLISH_TEXT("@You have a really cheerful{BREAK}look on your face.{BREAK}\0")

    .global gUnknown_08F214CF
gUnknown_08F214CF:
    JAPANESE_TEXT("◆このまちに ダンカンが{BREAK}れいのみせを{BREAK}つくろうとしているの。{BREAK}{WAIT}◆わたしは だいはんたい!{BREAK}\0")
    ENGLISH_TEXT("@Duncan is trying to open a{BREAK}strip club in this town.{BREAK}{WAIT}@I'm absolutely against it!{BREAK}\0")

    .global gUnknown_08F21500
gUnknown_08F21500:
    JAPANESE_TEXT("◆ぼくも おいしゃさんになって{BREAK}けがにんを たすけて{BREAK}{WAIT}おおもうけ したいな。{BREAK}\0")
    ENGLISH_TEXT("@Someday I wanna be a doctor{BREAK}so I can help people.{BREAK}{WAIT}@And so I can make loads of{BREAK}money.{BREAK}\0")

    .global gUnknown_08F2152A
gUnknown_08F2152A:
    JAPANESE_TEXT("◆えっ ほんとに?{BREAK}あやしいアンケ-トじゃ{BREAK}ないのになぁ。{BREAK}\0")
    ENGLISH_TEXT("@Huh? Really?{BREAK}{WAIT}This is a respectable{BREAK}survey, though...{BREAK}\0")

    .global gUnknown_08F21549
gUnknown_08F21549:
    JAPANESE_TEXT("◆がっこういけよ がっこう!{BREAK}がくせいさんだろ?{BREAK}\0")
    ENGLISH_TEXT("@Go to school, you!{BREAK}{WAIT}@You're a student, aren't{BREAK}you?!{BREAK}\0")

    .global gUnknown_08F21563
gUnknown_08F21563:
    JAPANESE_TEXT("◆せんろの うえの おおいわは{BREAK}どうやって どかすんだろうねぇ。{BREAK}{WAIT}◆やくしょに まかせておいたら{BREAK}らいねんになっちまうぜ。{BREAK}\0")
    ENGLISH_TEXT("@How are we going to get the{BREAK}rocks off the train tracks?{BREAK}{WAIT}@If we let city hall take{BREAK}care of it, they'll be{BREAK}there well into next year!{BREAK}\0")

    .global gUnknown_08F215A4
gUnknown_08F215A4:
    JAPANESE_TEXT("◆ずうっと きたの{BREAK}ダンカンさんの だいこうじょうには{BREAK}{WAIT}とてつもなく でかいロケットが{BREAK}あるんだよな。{BREAK}\0")
    ENGLISH_TEXT("@I heard there's a gigantic{BREAK}rocket in the Duncan{BREAK}Factory way up north.{BREAK}\0")

    .global gUnknown_08F215DB
gUnknown_08F215DB:
    JAPANESE_TEXT("◆おれを ただのおじさんと{BREAK}おもうなよ。{BREAK}{WAIT}◆じっさい そうなんだけどさ。{BREAK}\0")
    ENGLISH_TEXT("@Don't assume I'm just an{BREAK}ordinary old guy.{BREAK}{WAIT}@Although I actually am.{BREAK}\0")

    .global gUnknown_08F21603
gUnknown_08F21603:
    JAPANESE_TEXT("◆おれさぁ……{BREAK}せんろの おおいわなんてさ……{BREAK}{WAIT}◆ダンカンこうじょうの ロケットで{BREAK}ぶっとばしちまえば{BREAK}いいと おもうんだよね。{BREAK}\0")
    ENGLISH_TEXT("@You know...{BREAK}{WAIT}@If it were up to me...{BREAK}{WAIT}@I'd probably use a Duncan{BREAK}Factory rocket to blow up{BREAK}the rocks on the tracks.{BREAK}\0")

    .global gUnknown_08F21647
gUnknown_08F21647:
    JAPANESE_TEXT("◆わたしのしゅじんは{BREAK}ティンクルしょうがっこうの{BREAK}えらいひとなのよ。{BREAK}{WAIT}◆おひるの おべんとうは{BREAK}たべないひとなの。{BREAK}\0")
    ENGLISH_TEXT("@My husband is an important{BREAK}man at Twinkle Elementary{BREAK}School.{BREAK}{WAIT}@He's so important that he{BREAK}doesn't eat packed lunches{BREAK}from home.{BREAK}\0")

    .global gUnknown_08F21684
gUnknown_08F21684:
    JAPANESE_TEXT("◆スイ-トリトルこうじょうには{BREAK}いったか?{BREAK}\0")
    ENGLISH_TEXT("@Have you been to the Sweet{BREAK}Little Factory?{BREAK}\0")

    .global gUnknown_08F2169B
gUnknown_08F2169B:
    JAPANESE_TEXT("◆まちのそとには コワイばけものが{BREAK}うようよしてるんだろ。{BREAK}{WAIT}◆おれ かねとられるんじゃないかと{BREAK}おもってさ。 しんぱい!{BREAK}\0")
    ENGLISH_TEXT("@You know how there are{BREAK}scary monsters all outside{BREAK}town?{BREAK}{WAIT}@I'm worried to death that{BREAK}they'll steal my money.{BREAK}\0")

    .global gUnknown_08F216DB
gUnknown_08F216DB:
    JAPANESE_TEXT("◆ラララ たんぽぽの わたげを{BREAK}そ-ら-に ラララ{BREAK}{WAIT}◆わたしは{BREAK}おんがくが いちばんすき。{BREAK}\0")
    ENGLISH_TEXT("@La-la-laaa...{BREAK}{WAIT}Into the wide blue sky...{BREAK}{WAIT}dandelion fuzz does fly...{BREAK}{WAIT}La-la-laaa!{BREAK}{WAIT}@I love music more than{BREAK}anything else!{BREAK}\0")

    .global gUnknown_08F2170C
gUnknown_08F2170C:
    JAPANESE_TEXT("◆おくじょうのカギを{BREAK}ようむいんさんが もってるんだけど{BREAK}{WAIT}かしてくれないのよ。{BREAK}\0")
    ENGLISH_TEXT("@The school janitor has the{BREAK}key to the roof,{BREAK}{WAIT}but he won't give it to{BREAK}anyone.{BREAK}\0")

    .global gUnknown_08F21737
gUnknown_08F21737:
    JAPANESE_TEXT("◆やまのうえの{BREAK}よげんしゃの おじいさんは{BREAK}{WAIT}きまえがいいから もちきれないほど{BREAK}ものをくれるの。{BREAK}\0")
    ENGLISH_TEXT("@The old fortunetelling man{BREAK}on top of the mountain is{BREAK}really friendly.{BREAK}{WAIT}@He'll give you as much{BREAK}stuff as you can possibly{BREAK}carry!{BREAK}\0")

    .global gUnknown_08F2176B
gUnknown_08F2176B:
    JAPANESE_TEXT("◆ちいさいころに{BREAK}トンネルを あるいて{BREAK}とおったことが あるんだ。{BREAK}{WAIT}◆したいを みにいったんだ。{BREAK}\0")
    ENGLISH_TEXT("@I walked through the tunnel{BREAK}once when I was young.{BREAK}{WAIT}@I went to see a dead body.{BREAK}\0")

    .global gUnknown_08F2179F
gUnknown_08F2179F:
    JAPANESE_TEXT("◆ここは じゅうたくち だから{BREAK}しずかにあるきなさい。{BREAK}\0")
    ENGLISH_TEXT("@This is a residential area.{BREAK}{WAIT}Try to keep the noise level{BREAK}down when you're walking{BREAK}around.{BREAK}\0")

    .global gUnknown_08F217BC
gUnknown_08F217BC:
    JAPANESE_TEXT("◆あなたたち のはらに{BREAK}たべものとかを{BREAK}すてたりしたことない?{BREAK}{WAIT}◆ま ゲ-ムだから{BREAK}しょうがないけどね。{BREAK}\0")
    ENGLISH_TEXT("@I bet you've thrown food{BREAK}into the fields to get rid{BREAK}of it, huh?{BREAK}{WAIT}@Well, I guess it can't be{BREAK}helped, since this IS a{BREAK}game and all.{BREAK}\0")

    .global gUnknown_08F217F4
gUnknown_08F217F4:
    JAPANESE_TEXT("◆はっ!!{BREAK}いま おふろばの けんきゅうを{BREAK}しているんだ。{BREAK}{WAIT}◆だいがくの しゅくだいでさ。{BREAK}{WAIT}◆……ほんとだよ!{BREAK}\0")
    ENGLISH_TEXT("@Whoa...!!!{BREAK}{WAIT}@I'm... doing research about{BREAK}baths.{BREAK}{WAIT}@It's for a university{BREAK}project.{BREAK}{WAIT}@...It's the truth! I swear!{BREAK}\0")

    .global gUnknown_08F21831
gUnknown_08F21831:
    JAPANESE_TEXT("◆じてんしゃがあると{BREAK}べんりなのになぁ。{BREAK}\0")
    ENGLISH_TEXT("@Man, having a bike would be{BREAK}so convenient.{BREAK}\0")

    .global gUnknown_08F21847
gUnknown_08F21847:
    JAPANESE_TEXT("◆は-らへった-{BREAK}{WAIT}◆って いうとおもったろ。{BREAK}いわないよ。 へってるけど。{BREAK}\0")
    ENGLISH_TEXT("@I'm starving...{BREAK}{WAIT}...Is what you expected me{BREAK}to say, huh?{BREAK}{WAIT}@Well, don't worry, I won't.{BREAK}{WAIT}I AM starving, though.\0")

    .global gUnknown_08F21870
gUnknown_08F21870:
    JAPANESE_TEXT("◆わたし とかいが すき。{BREAK}わたし おしゃれが すき。{BREAK}\0")
    ENGLISH_TEXT("@I love the city.{BREAK}{WAIT}@I love the trendy,{BREAK}fashionable lifestyle.{BREAK}\0")

    .global gUnknown_08F2188D
gUnknown_08F2188D:
    JAPANESE_TEXT("◆おれは ちょうのうりょく なんて{BREAK}しんじてない。{BREAK}\0")
    ENGLISH_TEXT("@I don't believe in psychic{BREAK}powers at all.{BREAK}\0")

    .global gUnknown_08F218A8
gUnknown_08F218A8:
    JAPANESE_TEXT("◆わたしは かげのうすい おとこ{BREAK}きえたように みえることさえ{BREAK}あります。{BREAK}\0")
    ENGLISH_TEXT("@I'm an overshadowed man.{BREAK}{WAIT}@Sometimes it even seems{BREAK}like I've disappeared{BREAK}completely.{BREAK}\0")

    .global gUnknown_08F218CF
gUnknown_08F218CF:
    JAPANESE_TEXT("◆わたし このまちがすき!{BREAK}となりの ハロウィ-ンの まちは{BREAK}こわいところよ。{BREAK}\0")
    ENGLISH_TEXT("@I love this town.{BREAK}{WAIT}@Halloween, the next town{BREAK}over, is scary, though.{BREAK}\0")

    .global gUnknown_08F218F8
gUnknown_08F218F8:
    JAPANESE_TEXT("◆あなたは{BREAK}ほとけさまを しんじますか?{BREAK}\0")
    ENGLISH_TEXT("@Do you believe in God?{BREAK}\0")

    .global gUnknown_08F2190E
gUnknown_08F2190E:
    JAPANESE_TEXT("◆かぜぐすりの{BREAK}よくきくやつを もってたら{BREAK}みせで たかく かってくれるぜ。{BREAK}\0")
    ENGLISH_TEXT("@If you have really strong{BREAK}cold medicine, they'll buy{BREAK}it for a lot at the store.{BREAK}\0")

    .global gUnknown_08F21936
gUnknown_08F21936:
    JAPANESE_TEXT("◆わたしは{BREAK}ようきな ゆうびんや ランラン。{BREAK}{WAIT}◆ロ-ズマリ-さんの{BREAK}ひっこしさきは どこ ランラン。{BREAK}\0")
    ENGLISH_TEXT("@I'm a cheery mailman,{BREAK}la-la-la!{BREAK}{WAIT}@Do you know where the{BREAK}Rosemarys moved to,{BREAK}la-la-la?{BREAK}\0")

    .global gUnknown_08F2196C
gUnknown_08F2196C:
    JAPANESE_TEXT("◆ロ-ズマリ-さんの{BREAK}げんじゅうしょを{BREAK}さがしてる ゆうびんやさんに{BREAK}{WAIT}どうぞ つたえてくださいな。{BREAK}{WAIT}◆それは{BREAK}ずっと ひがしなのよと{BREAK}{WAIT}◆ランランラン。{BREAK}\0")
    ENGLISH_TEXT("@The mailman's trying to{BREAK}find the Rosemarys' new{BREAK}address.{BREAK}{WAIT}@If you see him, tell them{BREAK}they live much further to{BREAK}the east.{BREAK}{WAIT}@La-la-la!{BREAK}\0")

    .global gUnknown_08F219BF
gUnknown_08F219BF:
    JAPANESE_TEXT("◆ロ-ズマリ-のむすめって{BREAK}かんじわるいッ!{BREAK}\0")
    ENGLISH_TEXT("@That Rosemary girl gives me{BREAK}the creeps!{BREAK}\0")

    .global gUnknown_08F219D7
gUnknown_08F219D7:
    JAPANESE_TEXT("◆ダウンタウンの ビルのあたりは{BREAK}ばけものが う-ようよでねぇ。{BREAK}みんな こっちに にげてきたんだ。{BREAK}\0")
    ENGLISH_TEXT("@The whole downtown area was{BREAK}so full of monsters that{BREAK}everyone fled here.{BREAK}\0")

    .global gUnknown_08F21A0B
gUnknown_08F21A0B:
    JAPANESE_TEXT("◆なんか よう?{BREAK}\0")
    ENGLISH_TEXT("@Can I help you?{BREAK}\0")

    .global gUnknown_08F21A15
gUnknown_08F21A15:
    JAPANESE_TEXT("◆わたしは{BREAK}しゅぎょうちゅうの よげんしゃ。{BREAK}{WAIT}◆あなたは このえきから{BREAK}ふたたび サンタクロ-スのえきに{BREAK}ゆくであろう。{BREAK}{WAIT}◆わかんないけどね。{BREAK}\0")
    ENGLISH_TEXT("@I'm a fortuneteller in{BREAK}training.{BREAK}{WAIT}@I can see you returning to{BREAK}Santa Claus Station from{BREAK}this train station.{BREAK}{WAIT}@I'm not 100 percent sure{BREAK}about that, though.{BREAK}\0")

    .global gUnknown_08F21A62
gUnknown_08F21A62:
    JAPANESE_TEXT("◆{0x03}{0x12}ちゃんの いえは{BREAK}おてら……じゃなくて{BREAK}きょうかいだよ。{BREAK}{WAIT}◆あ しってたか。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x12} lives in a temple...{BREAK}Err, I mean a church.{BREAK}{WAIT}@Oh, you already knew that?{BREAK}\0")

    .global gUnknown_08F21A8F
gUnknown_08F21A8F:
    JAPANESE_TEXT("◆きょうかいなら{BREAK}もっと ひがしの やまのなかさ。{BREAK}{WAIT}◆ゴホッゴホッ……ゴホッ……{BREAK}\0")
    ENGLISH_TEXT("@There's a church in the{BREAK}mountains further to the{BREAK}east.{BREAK}{WAIT}@(cough... cough...){BREAK}\0")

    .global gUnknown_08F21ABB
gUnknown_08F21ABB:
    JAPANESE_TEXT("◆こどもは げんきだなぁ。{BREAK}そんな うすぎで。{BREAK}{WAIT}◆ゴホッゴホゴホッ……ゴホン。{BREAK}\0")
    ENGLISH_TEXT("@You kids sure are energetic{BREAK}and carefree, wearing such{BREAK}light clothes out here!{BREAK}{WAIT}(cough... cough...){BREAK}\0")

    .global gUnknown_08F21AE6
gUnknown_08F21AE6:
    JAPANESE_TEXT("◆アドベントさばくの ラクダのほねに{BREAK}あったら よろしくな。{BREAK}ちょっと しってるラクダなんだ。{BREAK}\0")
    ENGLISH_TEXT("@If you run into some camel{BREAK}bones in the Advent Desert,{BREAK}tell them I say hi.{BREAK}{WAIT}@That camel and I go way{BREAK}back.{BREAK}\0")

    .global gUnknown_08F21B17
gUnknown_08F21B17:
    JAPANESE_TEXT("◆すこしぐらいの ケガだったら{BREAK}ここでなおしてあげますよ。{BREAK}{WAIT}◆でも びょうきだったら ちゃんと{BREAK}びょういんで みてもらってね。{BREAK}\0")
    ENGLISH_TEXT("@I can treat minor injuries{BREAK}here.{BREAK}{WAIT}@But if you're sick, you'll{BREAK}need to visit an actual{BREAK}hospital, okay?{BREAK}{WAIT}\0")

    .global gUnknown_08F21B5A
gUnknown_08F21B5A:
    JAPANESE_TEXT("◆{0x03}{0x11}って しょうらいは{BREAK}コンピュ-タかんけいの しごとに{BREAK}つくんじゃないかな。{BREAK}\0")
    ENGLISH_TEXT("@I bet {0x03}{0x11} will have a{BREAK}computer-related job in the{BREAK}future.{BREAK}\0")

    .global gUnknown_08F21B84
gUnknown_08F21B84:
    JAPANESE_TEXT("◆し-っ!{BREAK}としょしつで おおごえだしちゃ{BREAK}いっけないのよォ!{BREAK}{WAIT}◆ハッハッハ---ックション!!{BREAK}\0")
    ENGLISH_TEXT("@Shh! Keep quiet in the{BREAK}library!{BREAK}{WAIT}@A-a-a-CHOO!{BREAK}\0")

    .global gUnknown_08F21BB8
gUnknown_08F21BB8:
    JAPANESE_TEXT("◆わたしを{BREAK}せかいいちの つりしと{BREAK}しって やってきたのかね。{BREAK}{WAIT}◆いや それほどでもないが……{BREAK}{WAIT}◆じゃ これから 1じかんほど{BREAK}じまんばなしをするか……{BREAK}\0")
    ENGLISH_TEXT("@Oh, you must be here{BREAK}because you heard I'm the{BREAK}world's greatest fisherman.{BREAK}{WAIT}@Well, I wouldn't say I'm{BREAK}THAT great, but...{BREAK}{WAIT}@Oh, how about I tell you{BREAK}about some of my great{BREAK}exploits for an hour or so?{BREAK}\0")

    .global gUnknown_08F21C0A
gUnknown_08F21C0A:
    JAPANESE_TEXT("◆じゃまだよ。 がきども!{BREAK}\0")
    ENGLISH_TEXT("@Get outta my face, twerps!{BREAK}\0")

    .global gUnknown_08F21C19
gUnknown_08F21C19:
    JAPANESE_TEXT("◆おらおら……{BREAK}\0")
    ENGLISH_TEXT("@Hey, you!{BREAK}\0")

    .global gUnknown_08F21C22
gUnknown_08F21C22:
    JAPANESE_TEXT("◆おれ HPひくいけど{BREAK}がんばってみるぜ!{BREAK}\0")
    ENGLISH_TEXT("@My HP may be low, but I'm{BREAK}gonna give this everything{BREAK}I got!{BREAK}\0")

    .global gUnknown_08F21C39
gUnknown_08F21C39:
    JAPANESE_TEXT("◆おれ……たぶん……{BREAK}おまえと たたかうと{BREAK}{WAIT}まけるとおもう。{BREAK}\0")
    ENGLISH_TEXT("@In a fight between you and{BREAK}me...{BREAK}{WAIT}I'm pretty sure I would{BREAK}lose.{BREAK}\0")

    .global gUnknown_08F21C5B
gUnknown_08F21C5B:
    JAPANESE_TEXT("◆おれは つよい。{BREAK}くちばっかしだけどな。{BREAK}\0")
    ENGLISH_TEXT("@I'm tough.{BREAK}{WAIT}@But I'm mostly all talk.{BREAK}\0")

    .global gUnknown_08F21C72
gUnknown_08F21C72:
    JAPANESE_TEXT("◆{0x03}{0x13}の あにきがいたら{BREAK}おまえなんか ゆびさきで{BREAK}ヒョイッ さ。{BREAK}\0")
    ENGLISH_TEXT("@Our boss {0x03}{0x13} could{BREAK}totally beat you with just{BREAK}his pinkie if he wanted to!{BREAK}\0")

    .global gUnknown_08F21C95
gUnknown_08F21C95:
    JAPANESE_TEXT("◆カンバンの もじは{BREAK}ちゃんと よんどるかね?{BREAK}\0")
    ENGLISH_TEXT("@Did you make sure to read{BREAK}the sign?{BREAK}\0")

    .global gUnknown_08F21CAE
gUnknown_08F21CAE:
    JAPANESE_TEXT("◆もし どこかのさばくで{BREAK}かおのあるサボテンを{BREAK}みつけたら……{BREAK}{WAIT}◆とても こわいざますわね。{BREAK}\0")
    ENGLISH_TEXT("@If you ever come across a{BREAK}cactus with a face on it{BREAK}in a desert somewhere...{BREAK}{WAIT}...that would be utterly{BREAK}terrifying.{BREAK}\0")

    .global gUnknown_08F21CE0
gUnknown_08F21CE0:
    JAPANESE_TEXT("◆つりびとに はなしかけると{BREAK}はなしが ながくて いけないね。{BREAK}\0")
    ENGLISH_TEXT("@Talk to the fisherman and{BREAK}he'll wind up talking your{BREAK}ears off.{BREAK}\0")

    .global gUnknown_08F21D01
gUnknown_08F21D01:
    JAPANESE_TEXT("◆しょうがく いちねんせいだったら{BREAK}さかあがりくらい{BREAK}できるものよねぇ。{BREAK}\0")
    ENGLISH_TEXT("@Any first-grader can do a{BREAK}cartwheel, wouldn't you{BREAK}say?{BREAK}\0")

    .global gUnknown_08F21D27
gUnknown_08F21D27:
    JAPANESE_TEXT("◆こちらのエレベ-タ-で{BREAK}てんぼうだいまで{BREAK}おあがりください。{BREAK}\0")
    ENGLISH_TEXT("@Please take this elevator{BREAK}up to the observation deck.{BREAK}\0")

    .global gUnknown_08F21D48
gUnknown_08F21D48:
    JAPANESE_TEXT("◆ここの てんぼうだいから{BREAK}みえる しまで けむりがでてたよ。{BREAK}だれか すんでいるのかなぁ?{BREAK}{WAIT}◆ぼうえんきょうで みてみれば{BREAK}よかったなあ。{BREAK}\0")
    ENGLISH_TEXT("@I saw smoke rising from an{BREAK}island you can see from{BREAK}the observation deck.{BREAK}{WAIT}@I wonder if someone lives{BREAK}there.{BREAK}{WAIT}@Man, if only I'd looked{BREAK}through the telescope...{BREAK}\0")

    .global gUnknown_08F21D92
gUnknown_08F21D92:
    JAPANESE_TEXT("◆ぼく さかあがりできないのよ。{BREAK}\0")
    ENGLISH_TEXT("@I can't do a cartwheel.{BREAK}\0")

    .global gUnknown_08F21DA4
gUnknown_08F21DA4:
    JAPANESE_TEXT("◆わたしは{BREAK}ひきざんの くりさがりが{BREAK}まだ よくわからない。{BREAK}\0")
    ENGLISH_TEXT("@I still don't really know{BREAK}how to carry numbers in{BREAK}subtraction.{BREAK}\0")

    .global gUnknown_08F21DC4
gUnknown_08F21DC4:
    JAPANESE_TEXT("◆いちごあじのとうふって{BREAK}とかいのほうで{BREAK}はやってるらしいな。{BREAK}{WAIT}◆くってみてぇよ。{BREAK}\0")
    ENGLISH_TEXT("@I hear strawberry-flavored{BREAK}tofu is all the rage in big{BREAK}cities.{BREAK}{WAIT}@I'd love to try some.{BREAK}\0")

    .global gUnknown_08F21DF1
gUnknown_08F21DF1:
    JAPANESE_TEXT("◆はら へったな。{BREAK}\0")
    ENGLISH_TEXT("@I'm hungry.{BREAK}\0")

    .global gUnknown_08F21DFC
gUnknown_08F21DFC:
    JAPANESE_TEXT("◆おれを ただのおじさんと{BREAK}おもうなよ。{BREAK}{WAIT}◆って うちのパパのくちぐせなの。{BREAK}\0")
    ENGLISH_TEXT("@Don't assume I'm an{BREAK}ordinary old guy.{BREAK}{WAIT}@...Is what my dad likes to{BREAK}say all the time.{BREAK}\0")

    .global gUnknown_08F21E26
gUnknown_08F21E26:
    JAPANESE_TEXT("◆あなた ちこくよね!{BREAK}\0")
    ENGLISH_TEXT("@You're late for class!{BREAK}\0")

    .global gUnknown_08F21E33
gUnknown_08F21E33:
    JAPANESE_TEXT("◆りかしつで{BREAK}へんなせんせいを みなかったぁ?{BREAK}{WAIT}◆……わたし みた。{BREAK}\0")
    ENGLISH_TEXT("@Did you see a strange{BREAK}teacher in the science lab?{BREAK}{WAIT}@...Because I did.\0")

    .global gUnknown_08F21E59
gUnknown_08F21E59:
    JAPANESE_TEXT("◆あのゲ-ム やった?{BREAK}おれ まだ やってないんだ。{BREAK}\0")
    ENGLISH_TEXT("@Have you played Dragon{BREAK}Quest 4?{BREAK}{WAIT}@I'm still having a hard{BREAK}time with the third one.{BREAK}\0")

    .global gUnknown_08F21E75
gUnknown_08F21E75:
    JAPANESE_TEXT("◆いらっしゃいませ。{BREAK}なにを さしあげましょう?{BREAK}\0")
    ENGLISH_TEXT("@Welcome.{BREAK}{WAIT}@What can I get you?{BREAK}\0")

    .global gUnknown_08F21E8F
gUnknown_08F21E8F:
    JAPANESE_TEXT("◆もうしわけありません。{BREAK}そのしなは{BREAK}ただいまうりきれで ございます。{BREAK}\0")
    ENGLISH_TEXT("@I'm very sorry. That item{BREAK}is currently sold out.{BREAK}\0")

    .global gUnknown_08F21EB4
gUnknown_08F21EB4:
    JAPANESE_TEXT("◆あら おやめになるんですか?{BREAK}ざんねんですが……{BREAK}{WAIT}◆またの ごらいてんを{BREAK}おまちしております。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you've changed your{BREAK}mind?{BREAK}{WAIT}@That's too bad, but I hope{BREAK}you'll come back soon!{BREAK}\0")

    .global gUnknown_08F21EE8
gUnknown_08F21EE8:
    JAPANESE_TEXT("◆ありがとうございました。{BREAK}また ごりようください。{BREAK}\0")
    ENGLISH_TEXT("@Thank you.{BREAK}{WAIT}@Please come again.{BREAK}\0")

    .global gUnknown_08F21F04
gUnknown_08F21F04:
    JAPANESE_TEXT("◆おや やめるんですか?{BREAK}では またきてくださいね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, you've changed your{BREAK}mind?{BREAK}{WAIT}@Well, please come again.{BREAK}\0")

    .global gUnknown_08F21F20
gUnknown_08F21F20:
    JAPANESE_TEXT("◆{0x03}{0x1B}さん{BREAK}げんきになって よかったわね。{BREAK}また いつでもどうぞ!{BREAK}\0")
    ENGLISH_TEXT("@I'm so glad that{BREAK}you recovered,{BREAK}{0x03}{0x1B}.{BREAK}{WAIT}@Come back any time{BREAK}you need.{BREAK}\0")

    .global gUnknown_08F21F43
gUnknown_08F21F43:
    JAPANESE_TEXT("◆あら あなたのおともだちでしょ?{BREAK}ほんとに しんじゃいますよ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, isn't that your{BREAK}friend, though?{BREAK}{WAIT}@They really could{BREAK}die, you know...{BREAK}\0")

    .global gUnknown_08F21F65
gUnknown_08F21F65:
    JAPANESE_TEXT("◆はいはい{BREAK}ひとり {0x03}{0x1E}ドルで{BREAK}しんさつしてあげましょうね。{BREAK}\0")
    ENGLISH_TEXT("@Yes, yes.{BREAK}{WAIT}@I can examine you{BREAK}for ${0x03}{0x1E} per{BREAK}person.{BREAK}{WAIT}@Is that agreeable{BREAK}with you?{BREAK}\0")

    .global gUnknown_08F21F85
gUnknown_08F21F85:
    JAPANESE_TEXT("◆ほんとに ちりょうは いらない?{BREAK}あっそ。{BREAK}\0")
    ENGLISH_TEXT("@You really don't{BREAK}need treatment?{BREAK}{WAIT}@All right, then.{BREAK}\0")

    .global gUnknown_08F21F9D
gUnknown_08F21F9D:
    JAPANESE_TEXT("◆わたしのみたてでは{BREAK}どこも わるくないようだよ。{BREAK}\0")
    ENGLISH_TEXT("@I can find nothing{BREAK}wrong with that{BREAK}person.{BREAK}\0")

    .global gUnknown_08F21FB8
gUnknown_08F21FB8:
    JAPANESE_TEXT("◆はい すっかりよくなったよ。{BREAK}\0")
    ENGLISH_TEXT("@There, all better!{BREAK}\0")

    .global gUnknown_08F21FC9
gUnknown_08F21FC9:
    JAPANESE_TEXT("◆しんじようが しんじまいが{BREAK}わたしは ヒ-ラ-。{BREAK}どうしたい?{BREAK}\0")
    ENGLISH_TEXT("@Though you may not{BREAK}believe it, I'm a{BREAK}healer.{BREAK}{WAIT}@What do you want{BREAK}me to do?{BREAK}\0")

    .global gUnknown_08F21FEB
gUnknown_08F21FEB:
    JAPANESE_TEXT("◆おお そうか。 そうしなさい。{BREAK}\0")
    ENGLISH_TEXT("@Oh, okay.{BREAK}If you say so.{BREAK}\0")

    .global gUnknown_08F21FFD
gUnknown_08F21FFD:
    JAPANESE_TEXT("◆{0x03}{0x1E}ドル{BREAK}いただいておこうか。{BREAK}\0")
    ENGLISH_TEXT("@I need to charge{BREAK}you ${0x03}{0x1E}. Okay?{BREAK}\0")

    .global gUnknown_08F2200F
gUnknown_08F2200F:
    JAPANESE_TEXT("◆いらっしゃいませ。{BREAK}ひとばん {0x03}{0x1E}ドルに{BREAK}なりますが おとまりになりますか?{BREAK}\0")
    ENGLISH_TEXT("@Welcome.{BREAK}@It's ${0x03}{0x1E} per night here.{BREAK}{WAIT}@Will you be staying?{BREAK}\0")

    .global gUnknown_08F22038
gUnknown_08F22038:
    JAPANESE_TEXT("◆それは ざんねんです。{BREAK}また いらしてくださいね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, that's too bad.{BREAK}{WAIT}@Well, come back again.{BREAK}\0")

    .global gUnknown_08F22054
gUnknown_08F22054:
    JAPANESE_TEXT("◆では ごゆっくり。{BREAK}\0")
    ENGLISH_TEXT("@Pleasant dreams!{BREAK}\0")

    .global gUnknown_08F22060
gUnknown_08F22060:
    JAPANESE_TEXT("◆おはようございます。{BREAK}また おたちよりください。{BREAK}おまちしております。{BREAK}\0")
    ENGLISH_TEXT("@Good morning.{BREAK}{WAIT}@Please come back again.{BREAK}We look forward to it.{BREAK}\0")

    .global gUnknown_08F22086
gUnknown_08F22086:
    JAPANESE_TEXT("◆{0x03}{0x1B}さんでしたら{BREAK}さっき はこびこまれましたよ。{BREAK}いしきが もどらないんですが……{BREAK}{WAIT}◆ちりょうひを {0x03}{0x1E}ドル{BREAK}おしはらい ください。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1B} was just{BREAK}brought in, and is{BREAK}still unconscious.{BREAK}{WAIT}@Please pay ${0x03}{0x1E}{BREAK}for the doctor's{BREAK}fee.{BREAK}\0")

    .global gUnknown_08F220CD
gUnknown_08F220CD:
    JAPANESE_TEXT("◆どなたに ごめんかいですか?{BREAK}\0")
    ENGLISH_TEXT("@Who are you here to{BREAK}see?{BREAK}\0")

    .global gUnknown_08F220DE
gUnknown_08F220DE:
    JAPANESE_TEXT("◆パパは るすです。{BREAK}だから{BREAK}おかねのことは わかんないけど{BREAK}{WAIT}ほかは{BREAK}ぼくが ちゃんとやりますから{BREAK}あんしんして とまってください。{BREAK}\0")
    ENGLISH_TEXT("@Dad's not home.{BREAK}{WAIT}@I don't understand money,{BREAK}but I can do other stuff.{BREAK}{WAIT}@So don't worry. You can{BREAK}stay here tonight if you{BREAK}want.{BREAK}\0")

    .global gUnknown_08F22124
gUnknown_08F22124:
    JAPANESE_TEXT("◆おはよう。{BREAK}また とまりにきてね。{BREAK}ひとりぼっちで さみしいんだ。{BREAK}\0")
    ENGLISH_TEXT("@Good morning.{BREAK}{WAIT}@Stay again sometime, okay?{BREAK}{WAIT}@It gets lonely here all by{BREAK}myself.{BREAK}\0")

    .global gUnknown_08F22148
gUnknown_08F22148:
    JAPANESE_TEXT("◆なんだ とまっていかないの……{BREAK}{WAIT}◆パパがいなくても ぼくがちゃんと{BREAK}かわりをするから{BREAK}だいじょうぶなのに……{BREAK}\0")
    ENGLISH_TEXT("@Oh? You're not going to{BREAK}stay?{BREAK}{WAIT}@But I can do this work just{BREAK}fine even when Dad's{BREAK}gone...{BREAK}\0")

    .global gUnknown_08F22183
gUnknown_08F22183:
    JAPANESE_TEXT("◆あらっ チケットがなきゃ{BREAK}はいれないわよ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, I can't let you in{BREAK}without tickets.{BREAK}\0")

    .global gUnknown_08F2219B
gUnknown_08F2219B:
    JAPANESE_TEXT("◆しかし………{BREAK}なにもなかった。{BREAK}\0")
    ENGLISH_TEXT("@But...{BREAK}There was nothing there.{BREAK}\0")

    .global gUnknown_08F221AD
gUnknown_08F221AD:
    JAPANESE_TEXT("  あずける   もちだす\0")
    ENGLISH_TEXT("  Store     Take\0")

    .global gUnknown_08F221BB
gUnknown_08F221BB:
    JAPANESE_TEXT("◆なにももってないじゃない。{BREAK}\0")
    ENGLISH_TEXT("@You don't have any{BREAK}items.{BREAK}\0")

    .global gUnknown_08F221CB
gUnknown_08F221CB:
    JAPANESE_TEXT("◆なにも あずかってないわよ。{BREAK}\0")
    ENGLISH_TEXT("@You haven't left{BREAK}any items with me.{BREAK}\0")

    .global gUnknown_08F221DC
gUnknown_08F221DC:
    JAPANESE_TEXT("◆ちょっとまって………{BREAK}{WAIT}◆そうこが いっぱいだから{BREAK}もうあずかれないよ。{BREAK}\0")
    ENGLISH_TEXT("@Hold on...{BREAK}{WAIT}@The storeroom is{BREAK}full,{BREAK}{WAIT}so I can't store{BREAK}any more stuff.{BREAK}\0")

    .global gUnknown_08F22204
gUnknown_08F22204:
    JAPANESE_TEXT("◆イラッシャイマセ{BREAK}\0")
    ENGLISH_TEXT("@WELCOME{BREAK}\0")

    .global gUnknown_08F2220F
gUnknown_08F2220F:
    JAPANESE_TEXT("◆ザンダカガ タリマセン{BREAK}\0")
    ENGLISH_TEXT("@INSUFFICIENT FUNDS{BREAK}\0")

    .global gUnknown_08F2221D
gUnknown_08F2221D:
    JAPANESE_TEXT("◆オカネガ タリマセン{BREAK}\0")
    ENGLISH_TEXT("@NOT ENOUGH MONEY{BREAK}\0")

    .global gUnknown_08F2222A
gUnknown_08F2222A:
    JAPANESE_TEXT("◆モウシワケ アリマセン{BREAK}{WAIT}トリヒキ ゲンドガクヲ{BREAK}コエマシタノデ{BREAK}オアズカリ デキマセン{BREAK}\0")
    ENGLISH_TEXT("@SORRY, BUT YOUR WITHDRAWAL{BREAK}AMOUNT HAS EXCEEDED YOUR{BREAK}ACCOUNT BALANCE{BREAK}\0")

    .global gUnknown_08F2225A
gUnknown_08F2225A:
    JAPANESE_TEXT("◆アリガトウ ゴザイマシタ{BREAK}\0")
    ENGLISH_TEXT("@THANK YOU{BREAK}\0")

    .global gUnknown_08F22269
gUnknown_08F22269:
    JAPANESE_TEXT("◆にんぎょうの なかには{BREAK}ふるい オルゴ-ルが{BREAK}かくされていた。{BREAK}{WAIT}◆{0x03}{0x3E}は{BREAK}オルゴ-ルをあけた。{BREAK}{WAIT}◆とぎれとぎれに{BREAK}メロディ-がながれた。{BREAK}\0")
    ENGLISH_TEXT("@There's an old music box{BREAK}hidden inside the doll.{BREAK}{WAIT}@{0x03}{0x3E} opened the music{BREAK}box.{BREAK}{WAIT}@A broken melody began to{BREAK}play.{BREAK}\0")

    .global gUnknown_08F222B4
gUnknown_08F222B4:
    JAPANESE_TEXT("◆ ?{BREAK}\0")
    ENGLISH_TEXT("@ ???{BREAK}\0")

    .global gUnknown_08F222B9
gUnknown_08F222B9:
    JAPANESE_TEXT("◆ありがとう ございました。{BREAK}\0")
    ENGLISH_TEXT("@Thank you.{BREAK}\0")

    .global gUnknown_08F222C9
gUnknown_08F222C9:
    JAPANESE_TEXT("◆おれ ぶきをてにいれる{BREAK}いいル-トを もっているんだ。{BREAK}{WAIT}◆そのうち すごいぶきを{BREAK}てにいれられる かもな。{BREAK}\0")
    ENGLISH_TEXT("@I have a great source for{BREAK}weapons.{BREAK}{WAIT}@One of these days, I might{BREAK}get ahold of some really{BREAK}amazing ones...{BREAK}\0")

    .global gUnknown_08F22303
gUnknown_08F22303:
    JAPANESE_TEXT("◆{0x03}{0x16}{0x03}{0x17}は{BREAK}たたかいに かった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16}'s party won the{BREAK}battle.{BREAK}\0")

    .global gUnknown_08F22316
gUnknown_08F22316:
    JAPANESE_TEXT("  ヒキダス   アズケル\0")
    ENGLISH_TEXT("  WITHDRAW  DEPOSIT\0")

    .global gUnknown_08F22324
gUnknown_08F22324:
    JAPANESE_TEXT("◆ゲンザイ ${0x03}{0x19}{ZEROES}{BREAK}オアズカリ シテイマス{BREAK}\0")
    ENGLISH_TEXT("@CURRENT BALANCE: ${0x03}{0x19}{ZEROES}{BREAK}\0")

    .global gUnknown_08F2233C
gUnknown_08F2233C:
    JAPANESE_TEXT("◆カギが かかっている。{BREAK}\0")
    ENGLISH_TEXT("@It's locked.{BREAK}\0")

    .global gUnknown_08F2234A
gUnknown_08F2234A:
    JAPANESE_TEXT("◆カギが あわないようだ。{BREAK}\0")
    ENGLISH_TEXT("@The key doesn't fit.{BREAK}\0")

    .global gUnknown_08F22359
gUnknown_08F22359:
    JAPANESE_TEXT("◆{0x03}{0x16}{0x03}{0x17}は{BREAK}カギをあけて なかにはいった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16}{0x03}{0x17} unlocked{BREAK}the door and went inside.{BREAK}\0")

    .global gUnknown_08F22371
gUnknown_08F22371:
    JAPANESE_TEXT("  きろくする  とくにない\0")
    ENGLISH_TEXT("  Save      Nothing\0")

    .global gUnknown_08F22380
gUnknown_08F22380:
    JAPANESE_TEXT("  つづける   おわる\0")
    ENGLISH_TEXT("  Continue  End\0")

    .global gUnknown_08F2238D
gUnknown_08F2238D:
    JAPANESE_TEXT("◆{0x03}{0x3E}は{BREAK}じゅわきを とった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} picked up the{BREAK}telephone.{BREAK}\0")

    .global gUnknown_08F2239E
gUnknown_08F2239E:
    JAPANESE_TEXT("◆しつれいですが……{BREAK}おかねが たりないようですよ。{BREAK}\0")
    ENGLISH_TEXT("@I'm sorry, but you{BREAK}don't seem to have{BREAK}enough money.{BREAK}\0")

    .global gUnknown_08F223BA
gUnknown_08F223BA:
    JAPANESE_TEXT("◆まあ おきゃくさま{BREAK}おかねが たりませんわ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, I'm so sorry. You don't{BREAK}have enough money.{BREAK}\0")

    .global gUnknown_08F223D3
gUnknown_08F223D3:
    JAPANESE_TEXT("◆おきゃくさま{BREAK}それいじょうおもちになろうなんて{BREAK}{WAIT}おやめになったほうが{BREAK}よろしいとおもいます。{BREAK}\0")
    ENGLISH_TEXT("@This is only my humble{BREAK}opinion, but you probably{BREAK}shouldn't carry any more{BREAK}things.{BREAK}\0")

    .global gUnknown_08F22406
gUnknown_08F22406:
    JAPANESE_TEXT("◆っはい! もうなおってる。{BREAK}すごいでしょ。{BREAK}\0")
    ENGLISH_TEXT("@Okay! All better!{BREAK}{WAIT}@Amazing, huh?{BREAK}\0")

    .global gUnknown_08F2241E
gUnknown_08F2241E:
    JAPANESE_TEXT("◆もうしわけありません。{BREAK}{0x03}{0x1D}は{BREAK}かいとれません。{BREAK}\0")
    ENGLISH_TEXT("@I'm very sorry. I can't buy{BREAK}your {0x03}{0x1D}.{BREAK}\0")

    .global gUnknown_08F22439
gUnknown_08F22439:
    JAPANESE_TEXT("◆うたひめロ-ラは わがこ と{BREAK}たいめんして おおよろこびで{BREAK}うたを うたいはじめた。{BREAK}\0")
    ENGLISH_TEXT("@Laura the songbird was so{BREAK}happy to see her baby again{BREAK}that she began singing.{BREAK}\0")

    .global gUnknown_08F22466
gUnknown_08F22466:
    JAPANESE_TEXT("◆{0x03}{0x16}は{BREAK}メロディ-をおぼえた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16} learned the melody.{BREAK}\0")

    .global gUnknown_08F22478
gUnknown_08F22478:
    JAPANESE_TEXT("◆カナリアが うたっている。{BREAK}\0")
    ENGLISH_TEXT("@The canary is singing.{BREAK}\0")

    .global gUnknown_08F22488
gUnknown_08F22488:
    JAPANESE_TEXT("◆サルは{BREAK}どうぶつえんのカギをぬすんだ。{BREAK}\0")
    ENGLISH_TEXT("@The monkey stole the Zoo{BREAK}Key.{BREAK}\0")

    .global gUnknown_08F2249E
gUnknown_08F2249E:
    JAPANESE_TEXT("◆ロボットは ふるく{BREAK}さびついていた。{BREAK}\0")
    ENGLISH_TEXT("@The robot is old and{BREAK}rusted.{BREAK}\0")

    .global gUnknown_08F224B3
gUnknown_08F224B3:
    JAPANESE_TEXT("◆{0x03}{0x10}の けはいを{BREAK}かんじた しゅんかん{BREAK}{WAIT}ロボットは{BREAK}いのちを ふきこまれた。{BREAK}\0")
    ENGLISH_TEXT("@The instant it sensed{BREAK}{0x03}{0x10}, the robot sprang to{BREAK}life.{BREAK}\0")

    .global gUnknown_08F224DE
gUnknown_08F224DE:
    JAPANESE_TEXT("◆{0x03}{0x1B}は {0x03}{0x1E}{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1B}: {0x03}{0x1E} EXP.{BREAK}\0")

    .global gUnknown_08F224E7
gUnknown_08F224E7:
    JAPANESE_TEXT("◆がんばりなさい。{BREAK}\0")
    ENGLISH_TEXT("@Good luck.{BREAK}\0")

    .global gUnknown_08F224F2
gUnknown_08F224F2:
    JAPANESE_TEXT("◆いずみの みずにふれると{BREAK}すっごく げんきになりました。{BREAK}\0")
    ENGLISH_TEXT("@Touching the fountain's{BREAK}water revitalized you.{BREAK}\0")

    .global gUnknown_08F22511
gUnknown_08F22511:
    JAPANESE_TEXT("◆ピッピ!{BREAK}よかったわ よかったわ。{BREAK}ほんとによかった。{BREAK}{WAIT}◆ちょうちょうさんも{BREAK}ピッピを さがしてくれてるはずよ。{BREAK}{WAIT}◆ちゃんと ごあいさつに{BREAK}いってきてちょうだい。{BREAK}\0")
    ENGLISH_TEXT("@Pippi!{BREAK}{WAIT}@Oh, thank goodness!{BREAK}She's all right!{BREAK}{WAIT}@I think the mayor is{BREAK}looking for her too.{BREAK}{WAIT}@You should probably go and{BREAK}see him.{BREAK}\0")

    .global gUnknown_08F22569
gUnknown_08F22569:
    JAPANESE_TEXT("◆はいってます!{BREAK}って ここはトイレじゃないけどな。{BREAK}{WAIT}◆いま てがはなせないんだ。{BREAK}あとでおいで。{BREAK}\0")
    ENGLISH_TEXT("@Someone's in here!{BREAK}...Wait, this isn't a{BREAK}bathroom.{BREAK}{WAIT}@I have my hands full at the{BREAK}moment. Come back later.{BREAK}\0")

    .global gUnknown_08F2259E
gUnknown_08F2259E:
    JAPANESE_TEXT("◆だれが どくに やられたんだね?{BREAK}\0")
    ENGLISH_TEXT("@Who's been{BREAK}poisoned?{BREAK}\0")

    .global gUnknown_08F225B1
gUnknown_08F225B1:
    JAPANESE_TEXT("◆だれを やわらかくしようかね……?{BREAK}\0")
    ENGLISH_TEXT("@Who shall I soften?{BREAK}\0")

    .global gUnknown_08F225C5
gUnknown_08F225C5:
    JAPANESE_TEXT("◆どくなんか ない!{BREAK}\0")
    ENGLISH_TEXT("@They haven't been{BREAK}poisoned!{BREAK}\0")

    .global gUnknown_08F225D1
gUnknown_08F225D1:
    JAPANESE_TEXT("◆かたくなって ないじゃないか。{BREAK}\0")
    ENGLISH_TEXT("@Wait, they haven't{BREAK}been turned to{BREAK}stone!{BREAK}\0")

    .global gUnknown_08F225E3
gUnknown_08F225E3:
    JAPANESE_TEXT("◆あそこは むかし{BREAK}ペンシルロケットを{BREAK}じゃんじゃん つくってたんだよ。{BREAK}\0")
    ENGLISH_TEXT("@They used to make loads of{BREAK}Bottle Rockets there.{BREAK}\0")

    .global gUnknown_08F22609
gUnknown_08F22609:
    JAPANESE_TEXT("◆うちの にょうぼうは{BREAK}しょだいの ミスいなかまち{BREAK}だったんだ。{BREAK}\0")
    ENGLISH_TEXT("@My wife was the very first{BREAK}Miss Middle of Nowhere.{BREAK}\0")

    .global gUnknown_08F2262B
gUnknown_08F2262B:
    JAPANESE_TEXT("◆カギは あけたよ。{BREAK}おくじょうは けしきがいいぞ。{BREAK}\0")
    ENGLISH_TEXT("@Okay, I unlocked the door.{BREAK}{WAIT}@The view from the roof is{BREAK}really nice, by the way.{BREAK}\0")

    .global gUnknown_08F22647
gUnknown_08F22647:
    JAPANESE_TEXT("◆あとで ダンカンのだいこうじょうに{BREAK}いこう。{BREAK}{WAIT}◆あそこには すっごいロケットが{BREAK}あるらしいんだ。{BREAK}\0")
    ENGLISH_TEXT("@Let's go visit Duncan's{BREAK}Factory later.{BREAK}{WAIT}@I hear there's a really{BREAK}incredible rocket there.{BREAK}\0")

    .global gUnknown_08F2267C
gUnknown_08F2267C:
    JAPANESE_TEXT("◆みんなが ぼくのことを{BREAK}よわむしとか けむしとか{BREAK}アホタレとか{BREAK}{WAIT}うわさしてなかったかなぁ。{BREAK}\0")
    ENGLISH_TEXT("@I bet people have been{BREAK}spreading rumors about how{BREAK}I'm a …weakling stinkling”{BREAK}or a …stupid head”...{BREAK}\0")

    .global gUnknown_08F226AE
gUnknown_08F226AE:
    JAPANESE_TEXT("◆いや……あさになってしまったな。{BREAK}\0")
    ENGLISH_TEXT("@Oh... It's morning now.{BREAK}\0")

    .global gUnknown_08F226C1
gUnknown_08F226C1:
    JAPANESE_TEXT("◆としよりを たいせつにしなさいね。{BREAK}ゴホゴホ。{BREAK}\0")
    ENGLISH_TEXT("@Cherish your elders, you{BREAK}hear?{BREAK}{WAIT}(cough cough){BREAK}\0")

    .global gUnknown_08F226DB
gUnknown_08F226DB:
    JAPANESE_TEXT("◆チビ!{BREAK}きやすく はなしかけんじゃねぇよ。{BREAK}\0")
    ENGLISH_TEXT("@Hey, pipsqueak!{BREAK}{WAIT}Who said you could talk to{BREAK}me?!{BREAK}\0")

    .global gUnknown_08F226F3
gUnknown_08F226F3:
    JAPANESE_TEXT("◆ある{BREAK}ファミコンソフトのはなしだけどね。{BREAK}{WAIT}◆マザ-って タイトルに{BREAK}きまったらしいんだけど{BREAK}{WAIT}ジョン・レノンの まねだよな。{BREAK}\0")
    ENGLISH_TEXT("@I heard there's a Famicom{BREAK}game called …MOTHER” now.{BREAK}{WAIT}@They totally copied that{BREAK}from John Lennon, didn't{BREAK}they?{BREAK}\0")

    .global gUnknown_08F22737
gUnknown_08F22737:
    JAPANESE_TEXT("◆レインディアの えきにいる{BREAK}おばあさんは とっても{BREAK}たいせつなものを くれるんだけど{BREAK}{WAIT}◆あなた{0x03}{0x17}は あったかしら……{BREAK}\0")
    ENGLISH_TEXT("@An old lady at the Reindeer{BREAK}train station has something{BREAK}very important to give you.{BREAK}{WAIT}@Have you met her yet?{BREAK}\0")

    .global gUnknown_08F22777
gUnknown_08F22777:
    JAPANESE_TEXT("◆さいごの ヒントよ。{BREAK}マジカントこくの ギタ-ひきの{BREAK}うたは ぜひ きいてね。{BREAK}\0")
    ENGLISH_TEXT("@This is my final hint.{BREAK}{WAIT}@You know the guitar player{BREAK}in Magicant?{BREAK}{WAIT}Be sure you listen to his{BREAK}song!{BREAK}\0")

    .global gUnknown_08F227A1
gUnknown_08F227A1:
    JAPANESE_TEXT("◆なにか あるなとおもったら{BREAK}こまめに チェックするといいぞ。{BREAK}\0")
    ENGLISH_TEXT("@If something ever seems{BREAK}strange, be sure to …Check”{BREAK}all around.{BREAK}\0")

    .global gUnknown_08F227C2
gUnknown_08F227C2:
    JAPANESE_TEXT("◆うたうサルは しみじみとうたった。{BREAK}\0")
    ENGLISH_TEXT("@The singing monkey sang{BREAK}with passion.{BREAK}\0")

    .global gUnknown_08F227D6
gUnknown_08F227D6:
    JAPANESE_TEXT("◆サボテンは うたう。{BREAK}なぜか うたう。{BREAK}せつせつと うたいつづけた。{BREAK}\0")
    ENGLISH_TEXT("@The cactus sang.{BREAK}{WAIT}@For some reason, it sang.{BREAK}{WAIT}@It continued to sing with{BREAK}emotion.{BREAK}\0")

    .global gUnknown_08F227FB
gUnknown_08F227FB:
    JAPANESE_TEXT("◆ピアノは ひとりでに{BREAK}けんばんが うごいて{BREAK}えんそうを はじめた。{BREAK}\0")
    ENGLISH_TEXT("@The keys on the piano began{BREAK}to play all by themselves.{BREAK}\0")

    .global gUnknown_08F2281F
gUnknown_08F2281F:
    JAPANESE_TEXT("◆ドラゴンは いがいと すなおに{BREAK}ふるい がくふを みせてくれた。{BREAK}{WAIT}◆こんな うただった。{BREAK}\0")
    ENGLISH_TEXT("@With no hesitation at all,{BREAK}the dragon showed its old{BREAK}sheet music.{BREAK}{WAIT}@The song went like this...{BREAK}\0")

    .global gUnknown_08F22850
gUnknown_08F22850:
    JAPANESE_TEXT("◆ロボット イヴは{BREAK}はかいされ うごかなくなった。{BREAK}{WAIT}◆イヴの むねのあたりから{BREAK}おんがくが ながれてきた。{BREAK}\0")
    ENGLISH_TEXT("@EVE was destroyed and{BREAK}ceased functioning.{BREAK}{WAIT}@Music began to emanate{BREAK}from EVE's chest area.{BREAK}\0")

    .global gUnknown_08F22889
gUnknown_08F22889:
    JAPANESE_TEXT("「よにも めずらしい うたうさるは{BREAK}とう シュ-クリ-ムどうぶつえんに{BREAK}しか おりません。」{BREAK}\0")
    ENGLISH_TEXT("The world's only singing{BREAK}monkey!{BREAK}{WAIT}Right here at Cream Puff{BREAK}Zoo!{BREAK}\0")

    .global gUnknown_08F228B9
gUnknown_08F228B9:
    JAPANESE_TEXT("◆かいだんの うえの とびらには{BREAK}おおきな じょうまえが{BREAK}かかっている。{BREAK}\0")
    ENGLISH_TEXT("@There's a big lock on the{BREAK}door at the top of the{BREAK}stairs.{BREAK}\0")

    .global gUnknown_08F228DF
gUnknown_08F228DF:
    JAPANESE_TEXT("◆わたしは スノ-マンのまちの{BREAK}ひとたちのために ここにのこるが{BREAK}どうか……きをつけて……いって。{BREAK}\0")
    ENGLISH_TEXT("@I'm going to stay here and{BREAK}help the people of Snowman.{BREAK}{WAIT}Please be careful on your{BREAK}way...{BREAK}\0")

    .global gUnknown_08F22912
gUnknown_08F22912:
    JAPANESE_TEXT("◆おかねが たりません。{BREAK}\0")
    ENGLISH_TEXT("@You don't have enough{BREAK}money.{BREAK}\0")

    .global gUnknown_08F22920
gUnknown_08F22920:
    JAPANESE_TEXT("◆やっぱり こわいから{BREAK}{0x03}{0x10}ちゃん{BREAK}さきに あるいてよ。{BREAK}\0")
    ENGLISH_TEXT("@I'm too scared.{BREAK}{WAIT}@You lead the way, {0x03}{0x10}.{BREAK}\0")

    .global gUnknown_08F2293E
gUnknown_08F2293E:
    JAPANESE_TEXT("◆よくみると とびらの カギは{BREAK}こわれていた。{BREAK}{0x03}{0x3E}は とびらを あけた。{BREAK}\0")
    ENGLISH_TEXT("@Upon closer look, the{BREAK}gate's lock was broken.{BREAK}{WAIT}@{0x03}{0x3E} opened the gate.{BREAK}\0")

    .global gUnknown_08F22965
gUnknown_08F22965:
    JAPANESE_TEXT("◆あっ {0x03}{0x13}さん{BREAK}こんにちは ッス。{BREAK}\0")
    ENGLISH_TEXT("@Oh! {0x03}{0x13}! What's up?{BREAK}\0")

    .global gUnknown_08F22979
gUnknown_08F22979:
    JAPANESE_TEXT("◆{0x03}{0x13}のアニキを はやく{BREAK}カムバックさせてくれよう!{BREAK}\0")
    ENGLISH_TEXT("@You better hurry and get{BREAK}{0x03}{0x13} back on his feet!{BREAK}\0")

    .global gUnknown_08F22995
gUnknown_08F22995:
    JAPANESE_TEXT("◆あ だめだめ。{BREAK}{0x03}{0x1D}は{BREAK}あずかれないのよ。{BREAK}{WAIT}◆わたし わがままなの。{BREAK}\0")
    ENGLISH_TEXT("@Oh, whoops.{BREAK}{WAIT}@I can't hold on to your{BREAK}{0x03}{0x1D}.{BREAK}{WAIT}@I'm selfish like that.{BREAK}\0")

    .global gUnknown_08F229BC
gUnknown_08F229BC:
    JAPANESE_TEXT("「{0x03}{0x10}の{BREAK}えいえんのしもべ。{BREAK}{WAIT}ゆうかんなる フライングマンせんし{BREAK}ここに ねむる。」{BREAK}\0")
    ENGLISH_TEXT("Here rests Flying Man, the{BREAK}courageous warrior and{BREAK}eternal servant to {0x03}{0x10}.{BREAK}\0")

    .global gUnknown_08F229EA
gUnknown_08F229EA:
    JAPANESE_TEXT("「{0x03}{0x10}の{BREAK}うちなる ちから。{BREAK}{WAIT}ゆうかんなる フライングマンせんし{BREAK}ここに ねむる。」{BREAK}\0")
    ENGLISH_TEXT("Here rests Flying Man, the{BREAK}courageous warrior and{BREAK}inner strength of {0x03}{0x10}.{BREAK}\0")

    .global gUnknown_08F22A18
gUnknown_08F22A18:
    JAPANESE_TEXT("「{0x03}{0x10}の{BREAK}ぜんなる こころ。{BREAK}{WAIT}ゆうかんなる フライングマンせんし{BREAK}ここに ねむる。」{BREAK}\0")
    ENGLISH_TEXT("Here rests Flying Man, the{BREAK}courageous warrior and{BREAK}virtuous heart of {0x03}{0x10}.{BREAK}\0")

    .global gUnknown_08F22A46
gUnknown_08F22A46:
    JAPANESE_TEXT("「{0x03}{0x10}の{BREAK}おおいなる かなしみ。{BREAK}{WAIT}ゆうかんなる フライングマンせんし{BREAK}ここに ねむる。」{BREAK}\0")
    ENGLISH_TEXT("Here rests Flying Man, the{BREAK}courageous warrior and{BREAK}great sorrow of {0x03}{0x10}.{BREAK}\0")

    .global gUnknown_08F22A76
gUnknown_08F22A76:
    JAPANESE_TEXT("「{0x03}{0x10}の{BREAK}ち と にく。{BREAK}{WAIT}ゆうかんなる フライングマンせんし{BREAK}ここに ねむる。」{BREAK}\0")
    ENGLISH_TEXT("Here rests Flying Man, the{BREAK}courageous warrior and{BREAK}flesh and blood of {0x03}{0x10}.{BREAK}\0")

    .global gUnknown_08F22AA2
gUnknown_08F22AA2:
    JAPANESE_TEXT("◆ちょうちょうさんの めいれいで{BREAK}{WAIT}どうぶつえんの じけんが{BREAK}かいけつするまで{BREAK}ここは とおれないんだぞ。{BREAK}{WAIT}◆ちょっと ロコツな{BREAK}やりかただけどな。{BREAK}\0")
    ENGLISH_TEXT("@No one's allowed past here{BREAK}until the incident at the{BREAK}zoo is resolved.{BREAK}{WAIT}@Those were the mayor's{BREAK}orders.{BREAK}{WAIT}@It's kind of a heavy-handed{BREAK}way of doing things though,{BREAK}if you ask me.{BREAK}\0")

    .global gUnknown_08F22AF1
gUnknown_08F22AF1:
    JAPANESE_TEXT("◆このおくの やまのどうくつに{BREAK}へんな いわが あるんだぞ。{BREAK}{WAIT}◆あんまりへんだから{BREAK}けんぶつすると いいぞ。{BREAK}\0")
    ENGLISH_TEXT("@There's a strange rock in a{BREAK}mountain cave past here.{BREAK}{WAIT}@In fact, it's so strange{BREAK}that you should go check it{BREAK}out.{BREAK}\0")

    .global gUnknown_08F22B2B
gUnknown_08F22B2B:
    JAPANESE_TEXT("◆ところで……{BREAK}おまえ{0x03}{0x17} テレパシ-とかが{BREAK}できるんだってな。{BREAK}{WAIT}◆だいひょうばんだぞ。{BREAK}{WAIT}◆この にんきもの!{BREAK}\0")
    ENGLISH_TEXT("@Say... You know how to use{BREAK}telepathy or whatever,{BREAK}right?{BREAK}{WAIT}@Everyone's talking about{BREAK}you, you know!{BREAK}{WAIT}@You're a real celebrity!{BREAK}\0")

    .global gUnknown_08F22B68
gUnknown_08F22B68:
    JAPANESE_TEXT("◆あんた{0x03}{0x17}{BREAK}スノ-マンに いくのかい?{BREAK}\0")
    ENGLISH_TEXT("@By any chance are you on{BREAK}your way to Snowman?{BREAK}\0")

    .global gUnknown_08F22B7E
gUnknown_08F22B7E:
    JAPANESE_TEXT("◆このぼうしを ひろったんだけど{BREAK}スノ-マンにいる おんなのこの{BREAK}ものらしいの。{BREAK}{WAIT}◆とどけてあげて ちょうだいな。{BREAK}\0")
    ENGLISH_TEXT("@I found this hat. I think{BREAK}it belongs to a girl in{BREAK}Snowman.{BREAK}{WAIT}@Deliver it to her, if you'd{BREAK}be so kind.{BREAK}\0")

    .global gUnknown_08F22BBB
gUnknown_08F22BBB:
    JAPANESE_TEXT("◆たのみたいことが あったんだけど{BREAK}ざんねんだわ。{BREAK}\0")
    ENGLISH_TEXT("@Oh, that's too bad. I was{BREAK}hoping to ask you a favor.{BREAK}\0")

    .global gUnknown_08F22BD6
gUnknown_08F22BD6:
    JAPANESE_TEXT("◆かっこいいしょうねんは{BREAK}どくとくの うたをうたった。{BREAK}{WAIT}◆{0x03}{0x16}は{BREAK}このメロディ-は{BREAK}さすがに おぼえられなかった。{BREAK}\0")
    ENGLISH_TEXT("@The cool boy sang a very...{BREAK}unique song.{BREAK}{WAIT}@Not even {0x03}{0x16} could learn{BREAK}this melody.{BREAK}\0")

    .global gUnknown_08F22C13
gUnknown_08F22C13:
    JAPANESE_TEXT("◆すみません。{BREAK}ちょっと アンケ-トに{BREAK}こたえていただけますか?{BREAK}\0")
    ENGLISH_TEXT("@I'm sorry to bother you,{BREAK}but could I ask you some{BREAK}survey questions?{BREAK}\0")

    .global gUnknown_08F22C35
gUnknown_08F22C35:
    JAPANESE_TEXT("◆あなたは{BREAK}きしゃの うんちんを{BREAK}たかいと おもいますか?{BREAK}\0")
    ENGLISH_TEXT("@Do you feel that train{BREAK}tickets are too expensive?{BREAK}\0")

    .global gUnknown_08F22C54
gUnknown_08F22C54:
    JAPANESE_TEXT("◆あなたは{BREAK}ふしぎなメガホンを{BREAK}つかいましたか?{BREAK}\0")
    ENGLISH_TEXT("@Have you ever used a{BREAK}Megaphone?{BREAK}\0")

    .global gUnknown_08F22C6E
gUnknown_08F22C6E:
    JAPANESE_TEXT("◆ごきょうりょく{BREAK}ありがとうございました。{BREAK}おれいの テレホンカ-ドです。{BREAK}\0")
    ENGLISH_TEXT("@Thank you for your{BREAK}cooperation.{BREAK}{WAIT}@For your time, please take{BREAK}this Phone Card.{BREAK}\0")

    .global gUnknown_08F22C95
gUnknown_08F22C95:
    JAPANESE_TEXT("◆すいません。 ちょっと……{BREAK}アンケ-トに………{BREAK}{WAIT}◆あっ{BREAK}まえに おねがいしましたっけね。{BREAK}\0")
    ENGLISH_TEXT("@I'm sorry to bother you,{BREAK}but... could you...{BREAK}{WAIT}@Oh! You've already taken{BREAK}the survey, haven't you?{BREAK}\0")

    .global gUnknown_08F22CC6
gUnknown_08F22CC6:
    JAPANESE_TEXT("◆こころの さけびを ききつけて{BREAK}おたすけじいさんが{BREAK}とうじょうした。{BREAK}\0")
    ENGLISH_TEXT("@Hearing the cries from your{BREAK}heart, a helpful old man{BREAK}appeared.{BREAK}\0")

    .global gUnknown_08F22CEB
gUnknown_08F22CEB:
    JAPANESE_TEXT("◆{0x03}{0x3E}は{BREAK}カンオケを あけた。{BREAK}カンオケのなかから……!!{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} opened the coffin.{BREAK}{WAIT}@Inside the casket was...!!{BREAK}\0")

    .global gUnknown_08F22D0A
gUnknown_08F22D0A:
    JAPANESE_TEXT("◆{0x03}{0x16}は{BREAK}ぼうえんきょうを のぞいた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16} peered into the{BREAK}telescope.{BREAK}\0")

    .global gUnknown_08F22D1F
gUnknown_08F22D1F:
    JAPANESE_TEXT("◆うみが きれいだった。{BREAK}\0")
    ENGLISH_TEXT("@The ocean was beautiful.{BREAK}\0")

    .global gUnknown_08F22D2D
gUnknown_08F22D2D:
    JAPANESE_TEXT("◆むこうのしまで{BREAK}なにかが ひかった!{BREAK}\0")
    ENGLISH_TEXT("@Something sparkled on the{BREAK}island in the distance!{BREAK}\0")

    .global gUnknown_08F22D42
gUnknown_08F22D42:
    JAPANESE_TEXT("◆カプセルのなかから{BREAK}なにかが とびだした。{BREAK}\0")
    ENGLISH_TEXT("@Something leapt out of the{BREAK}capsule!{BREAK}\0")

    .global gUnknown_08F22D5A
gUnknown_08F22D5A:
    JAPANESE_TEXT("◆{0x03}{0x12}{BREAK}「パパ……いまは……さよなら。{BREAK}{WAIT}つぎに あうときは{BREAK}きっと ママといっしょよ!{BREAK}{WAIT}……いのっててください。」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x12}: Dad...{BREAK}Goodbye for now...{BREAK}{WAIT}The next time I see you,{BREAK}Mom will be with me!{BREAK}{WAIT}...Please pray for us.{BREAK}\0")

    .global gUnknown_08F22D99
gUnknown_08F22D99:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F22D9A
gUnknown_08F22D9A:
    JAPANESE_TEXT("◆だれに はなしているのだ。{BREAK}\0")
    ENGLISH_TEXT("@Who are you talking to?{BREAK}\0")

    .global gUnknown_08F22DAA
gUnknown_08F22DAA:
    JAPANESE_TEXT("◆なに?{BREAK}\0")
    ENGLISH_TEXT("@What?{BREAK}\0")

    .global gUnknown_08F22DB0
gUnknown_08F22DB0:
    JAPANESE_TEXT("◆もんだいなし。{BREAK}\0")
    ENGLISH_TEXT("@No problem here.{BREAK}\0")

    .global gUnknown_08F22DBA
gUnknown_08F22DBA:
    JAPANESE_TEXT("◆(The voice of Queen{BREAK}Mary speaks){BREAK}{WAIT}◆I am the{BREAK}consciousness of{BREAK}Maria.{BREAK}{WAIT}◆{0x03}{0x10}{0x03}{0x3F} use my{BREAK}last power!{BREAK}{WAIT}◆Then{0x03}{0x3F} as the voice{BREAK}became a whisper of{BREAK}wind...{BREAK}{WAIT}◆The rock{BREAK}disintegrated.{BREAK}{WAIT}◆Leaving only a{BREAK}pile of very fine{BREAK}sand at their feet.{BREAK}\0")
    ENGLISH_TEXT("@(The voice of Queen{BREAK}Mary speaks){BREAK}{WAIT}@I am the{BREAK}consciousness of{BREAK}Maria.{BREAK}{WAIT}@{0x03}{0x10}{0x03}{0x3F} use my{BREAK}last power!{BREAK}{WAIT}@Then{0x03}{0x3F} as the voice{BREAK}became a whisper of{BREAK}wind...{BREAK}{WAIT}@The rock{BREAK}disintegrated.{BREAK}{WAIT}@Leaving only a{BREAK}pile of very fine{BREAK}sand at their feet.{BREAK}\0")

    .global gUnknown_08F22EA2
gUnknown_08F22EA2:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}を つかった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} used the{BREAK}{0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F22EB2
gUnknown_08F22EB2:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}を{BREAK}つかえない。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} can't use the{BREAK}{0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F22EC3
gUnknown_08F22EC3:
    JAPANESE_TEXT("◆やめてください。{BREAK}\0")
    ENGLISH_TEXT("@Please don't do that.{BREAK}\0")

    .global gUnknown_08F22ECE
gUnknown_08F22ECE:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}を{BREAK}そうびした。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} equipped the{BREAK}{0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F22EDF
gUnknown_08F22EDF:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}を{BREAK}そうびできない。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} can't equip the{BREAK}{0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F22EF2
gUnknown_08F22EF2:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}を{BREAK}すててしまった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} threw away the{BREAK}{0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F22F05
gUnknown_08F22F05:
    JAPANESE_TEXT("◆{0x03}{0x1C}は{BREAK}すててはいけない。{BREAK}\0")
    ENGLISH_TEXT("@You shouldn't throw away{BREAK}the {0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F22F15
gUnknown_08F22F15:
    JAPANESE_TEXT("◆{0x03}{0x1A}は {0x03}{0x1B}に{BREAK}{0x03}{0x1C}を{BREAK}わたした。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} gave the{BREAK}{0x03}{0x1C} to {0x03}{0x1B}.{BREAK}\0")

    .global gUnknown_08F22F29
gUnknown_08F22F29:
    JAPANESE_TEXT("◆{0x03}{0x1C}は{BREAK}わたせない。{BREAK}\0")
    ENGLISH_TEXT("@The {0x03}{0x1C} can't be{BREAK}given away.{BREAK}\0")

    .global gUnknown_08F22F36
gUnknown_08F22F36:
    JAPANESE_TEXT("◆{0x03}{0x1B}は{BREAK}これいじょう ものをもてない。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1B} can't hold any{BREAK}more stuff.{BREAK}\0")

    .global gUnknown_08F22F4C
gUnknown_08F22F4C:
    JAPANESE_TEXT("◆なにも おこらない。{BREAK}\0")
    ENGLISH_TEXT("@Nothing happened.{BREAK}\0")

    .global gUnknown_08F22F59
gUnknown_08F22F59:
    JAPANESE_TEXT("◆{0x03}{0x3E}は{BREAK}プレゼントのはこを あけた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} opened the present.{BREAK}\0")

    .global gUnknown_08F22F6E
gUnknown_08F22F6E:
    JAPANESE_TEXT("◆{0x03}{0x1D}が あった。{BREAK}\0")
    ENGLISH_TEXT("@Found {0x03}{0x1D}.{BREAK}\0")

    .global gUnknown_08F22F79
gUnknown_08F22F79:
    JAPANESE_TEXT("◆{0x03}{0x16}{0x03}{0x17}は{BREAK}{0x03}{0x1D}を てにいれた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16}{0x03}{0x17} took the{BREAK}{0x03}{0x1D}.{BREAK}\0")

    .global gUnknown_08F22F8C
gUnknown_08F22F8C:
    JAPANESE_TEXT("◆しかし これいじょう{BREAK}ものを もてない。{BREAK}\0")
    ENGLISH_TEXT("@But you can't hold any{BREAK}more stuff.{BREAK}\0")

    .global gUnknown_08F22FA3
gUnknown_08F22FA3:
    JAPANESE_TEXT("◆しかし からっぽだった。{BREAK}\0")
    ENGLISH_TEXT("@It's empty...{BREAK}\0")

    .global gUnknown_08F22FB2
gUnknown_08F22FB2:
    JAPANESE_TEXT("  ドクをけす  やわらかくする\0")
    ENGLISH_TEXT("Cure Poison   Soften\0")

    .global gUnknown_08F22FC3
gUnknown_08F22FC3:
    JAPANESE_TEXT("「みなみ・マザ-ズデイ{BREAK} きた ・シュ-クリ-ム{BREAK}        どうぶつえん」{BREAK}\0")
    ENGLISH_TEXT("South: Mother's Day{BREAK}North: Cream Puff Zoo {BREAK}\0")

    .global gUnknown_08F22FED
gUnknown_08F22FED:
    JAPANESE_TEXT("「このおく カナリアむら。{BREAK} しぜんを たいせつにしよう!」{BREAK}\0")
    ENGLISH_TEXT("Canary Village ahead{BREAK}{BREAK}Let's nurture nature{BREAK}together!{BREAK}\0")

    .global gUnknown_08F2300D
gUnknown_08F2300D:
    JAPANESE_TEXT("「マザ-ズデイ まちやくば」{BREAK}\0")
    ENGLISH_TEXT("Mother's Day Town Hall{BREAK}\0")

    .global gUnknown_08F2301D
gUnknown_08F2301D:
    JAPANESE_TEXT("「にし・うみのてんぼうだい{BREAK} きた・バレンタインみなと{BREAK}       うみをきれいに!」{BREAK}\0")
    ENGLISH_TEXT("West:  Ocean Observatory{BREAK}North: Valentine Harbor{BREAK}{BREAK}Keep our ocean clean!{BREAK}\0")

    .global gUnknown_08F2304B
gUnknown_08F2304B:
    JAPANESE_TEXT("「にし ・バレンタイン{BREAK} ひがし・ホ-リ-ロ-リ-{BREAK}          マウンテン」{BREAK}\0")
    ENGLISH_TEXT("West: Valentine{BREAK}East: Holy Loly Mountain{BREAK}\0")

    .global gUnknown_08F23077
gUnknown_08F23077:
    JAPANESE_TEXT("「にし    ・ヒ-ラ-のいえ{BREAK} はしのむこう・はかば{BREAK}    ひとりあるき きけん!」{BREAK}\0")
    ENGLISH_TEXT("West:        Healer's House{BREAK}Bridge Path: Cemetery{BREAK}{BREAK}Walking alone is dangerous!{BREAK}\0")

    .global gUnknown_08F230A5
gUnknown_08F230A5:
    JAPANESE_TEXT("「にし ・マザ-ズデイ{BREAK} ひがし・サンクスギビング」{BREAK}\0")
    ENGLISH_TEXT("West: Mother's Day{BREAK}East: Thanksgiving{BREAK}\0")

    .global gUnknown_08F230C1
gUnknown_08F230C1:
    JAPANESE_TEXT("「シュ-クリ-ムどうぶつえんは{BREAK}    にしに 700メ-トル」{BREAK}\0")
    ENGLISH_TEXT("Cream Puff Zoo{BREAK}  700 meters west{BREAK}\0")

    .global gUnknown_08F230E3
gUnknown_08F230E3:
    JAPANESE_TEXT("「スノ-マンきょうかい このおく」{BREAK}\0")
    ENGLISH_TEXT("Snowman Church ahead{BREAK}\0")

    .global gUnknown_08F230F6
gUnknown_08F230F6:
    JAPANESE_TEXT("「にし ・バレンタイン{BREAK} みなみ・しっちたい」{BREAK}\0")
    ENGLISH_TEXT("West:  Valentine{BREAK}South: Swamp{BREAK}\0")

    .global gUnknown_08F2310F
gUnknown_08F2310F:
    JAPANESE_TEXT("「サンクスギビングおおどおり{BREAK} みなみ・ティンクル{BREAK}        しょうがっこう」{BREAK}\0")
    ENGLISH_TEXT("Thanksgiving Main Street{BREAK}South: Twinkle Elem. School{BREAK}\0")

    .global gUnknown_08F2313B
gUnknown_08F2313B:
    JAPANESE_TEXT("「{0x03}{0x10} の いえ」{BREAK}\0")
    ENGLISH_TEXT("{0x03}{0x10}'s house{BREAK}\0")

    .global gUnknown_08F23146
gUnknown_08F23146:
    JAPANESE_TEXT("「サンクスギビングへ ようこそ!{BREAK} にし・マザ-ズデイ{BREAK} きた・サンタクロ-スえき」{BREAK}\0")
    ENGLISH_TEXT("Welcome to Thanksgiving!{BREAK}{BREAK}West:  Mother's Day{BREAK}North: Santa Claus Station{BREAK}\0")

    .global gUnknown_08F23172
gUnknown_08F23172:
    JAPANESE_TEXT("「にし ・ヒ-ラ-のいえ{BREAK} ひがし・レインディアえき{BREAK} みなみ・レインディアのまち」{BREAK}\0")
    ENGLISH_TEXT("West:  Healer's House{BREAK}East:  Reindeer Station{BREAK}South: Reindeer{BREAK}\0")

    .global gUnknown_08F2319E
gUnknown_08F2319E:
    JAPANESE_TEXT("「にし ・ハロウィ-ンダウンタウン{BREAK} ひがし・ハロウィ-ン{BREAK}         じゅうたくち」{BREAK}\0")
    ENGLISH_TEXT("West: Downtown Halloween{BREAK}East: Halloween residential{BREAK}      area{BREAK}\0")

    .global gUnknown_08F231CE
gUnknown_08F231CE:
    JAPANESE_TEXT("「ひがし・しっちたい」{BREAK}\0")
    ENGLISH_TEXT("East: Swamp{BREAK}\0")

    .global gUnknown_08F231DB
gUnknown_08F231DB:
    JAPANESE_TEXT("「このさき{BREAK} ロ-ズマリ-さんの しゆうち」{BREAK}\0")
    ENGLISH_TEXT("Private property of the{BREAK}Rosemary family{BREAK}\0")

    .global gUnknown_08F231F3
gUnknown_08F231F3:
    JAPANESE_TEXT("「バレンタイン けいさつしょ」{BREAK}\0")
    ENGLISH_TEXT("Valentine Police Department{BREAK}\0")

    .global gUnknown_08F23204
gUnknown_08F23204:
    JAPANESE_TEXT("「れいのみせ{BREAK}      けんせつよていち{BREAK}   ダンカンけんせつがいしゃ」{BREAK}\0")
    ENGLISH_TEXT("Coming soon: Strip Theater{BREAK}{BREAK}      -Duncan Construction{BREAK}\0")

    .global gUnknown_08F2322C
gUnknown_08F2322C:
    JAPANESE_TEXT("◆アニハ ウツクシク{BREAK}タオレタト キキマス。{BREAK}{WAIT}◆ハカヲ タテテ{BREAK}テアツク トムライマシタ。{BREAK}{WAIT}◆ツギハ ワタシノ バンデス。{BREAK}\0")
    ENGLISH_TEXT("@I HEARD MY BROTHER FELL{BREAK}HONORABLY IN COMBAT.{BREAK}{WAIT}@HE WAS BURIED AND GIVEN A{BREAK}HEARTFELT FUNERAL.{BREAK}{WAIT}@IT'S MY TURN NEXT.{BREAK}\0")

    .global gUnknown_08F2326F
gUnknown_08F2326F:
    JAPANESE_TEXT("◆ワタシモ ハヤク{BREAK}アナタノ オテツダイガ シタイ。{BREAK}\0")
    ENGLISH_TEXT("@I CAN'T WAIT TO SERVE YOU.{BREAK}\0")

    .global gUnknown_08F2328B
gUnknown_08F2328B:
    JAPANESE_TEXT("◆ワタシハ ふらいんぐまん。{BREAK}アナタノ チカラニナル。{BREAK}ソノタメニ ウマレテキタ。{BREAK}\0")
    ENGLISH_TEXT("@I AM Flying Man.{BREAK}{WAIT}@I WILL BE YOUR STRENGTH.{BREAK}{WAIT}THAT IS WHY I WAS BORN.{BREAK}\0")

    .global gUnknown_08F232B6
gUnknown_08F232B6:
    JAPANESE_TEXT("◆かいげんれいは とかれた。{BREAK}ちょっと おおげさだったけどな。{BREAK}\0")
    ENGLISH_TEXT("@They finally lifted the{BREAK}orders for martial law.{BREAK}{WAIT}@They overreacted a little{BREAK}bit, if you ask me.{BREAK}\0")

    .global gUnknown_08F232D7
gUnknown_08F232D7:
    JAPANESE_TEXT("◆ふるぼけた ロケットだ。{BREAK}\0")
    ENGLISH_TEXT("@There's an old rocket here.{BREAK}\0")

    .global gUnknown_08F232E6
gUnknown_08F232E6:
    JAPANESE_TEXT("◆グッズを とりにきたのね。{BREAK}はい どうぞ。{BREAK}\0")
    ENGLISH_TEXT("@You came to get{BREAK}your items, right?{BREAK}{WAIT}@Okay, here you go!{BREAK}\0")

    .global gUnknown_08F232FE
gUnknown_08F232FE:
    JAPANESE_TEXT("◆グッズは ぜんぶわたしたわよ。{BREAK}でも また あいにきてね。{BREAK}\0")
    ENGLISH_TEXT("@I gave you all your{BREAK}items.{BREAK}{WAIT}But come seem me{BREAK}again sometime!{BREAK}\0")

    .global gUnknown_08F2331E
gUnknown_08F2331E:
    JAPANESE_TEXT("◆わたし ミニ-よ。{BREAK}\0")
    ENGLISH_TEXT("@I'm Minnie.{BREAK}\0")

    .global gUnknown_08F2332A
gUnknown_08F2332A:
    JAPANESE_TEXT("  きをいれる  やわらかくする\0")
    ENGLISH_TEXT("  Refresh   Soften\0")

    .global gUnknown_08F2333B
gUnknown_08F2333B:
    JAPANESE_TEXT("◆{0x03}{0x13}{BREAK}「おまえら{BREAK}ふたりで いたいんだろう。{BREAK}{WAIT}おれ ここで ねてるわ。」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x13}: You two probably{BREAK}wanna be alone, huh?{BREAK}{WAIT}I'll just be catchin' some{BREAK}Zs over here, then.{BREAK}\0")

    .global gUnknown_08F23364
gUnknown_08F23364:
    JAPANESE_TEXT("◆しまった! まにあわなかった。{BREAK}\0")
    ENGLISH_TEXT("@Oh no! I'm too late!{BREAK}\0")

    .global gUnknown_08F23376
gUnknown_08F23376:
    JAPANESE_TEXT("◆……よかった。{BREAK}\0")
    ENGLISH_TEXT("@...I'm so glad.{BREAK}\0")

    .global gUnknown_08F23380
gUnknown_08F23380:
    JAPANESE_TEXT("◆{0x03}{0x13}{BREAK}「おい! なんか{BREAK}とんでもないおとが したぜ。」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x13}: Whoa! What the heck{BREAK}was that sound?!{BREAK}\0")

    .global gUnknown_08F2339E
gUnknown_08F2339E:
    JAPANESE_TEXT("◆{0x03}{0x13}{BREAK}「ほ-んとかよ!?」{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x13}: You gotta be{BREAK}kiddin' me!{BREAK}\0")

    .global gUnknown_08F233AE
gUnknown_08F233AE:
    JAPANESE_TEXT("◆ボ-トは{BREAK}エンジンの ちょうしが{BREAK}わるいようだ。{BREAK}\0")
    ENGLISH_TEXT("@The boat's engine seems to{BREAK}be in poor condition.{BREAK}\0")

    .global gUnknown_08F233C9
gUnknown_08F233C9:
    JAPANESE_TEXT("◆{0x03}{0x16}には{BREAK}うごかすことが できない。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16} can't get it to{BREAK}work.{BREAK}\0")

    .global gUnknown_08F233DE
gUnknown_08F233DE:
    JAPANESE_TEXT("◆しかし {0x03}{0x11}は{BREAK}じょうずに エンジンを{BREAK}かけることが できた。{BREAK}\0")
    ENGLISH_TEXT("@But {0x03}{0x11} managed to get{BREAK}it running.{BREAK}\0")

    .global gUnknown_08F23400
gUnknown_08F23400:
    JAPANESE_TEXT("◆{0x03}{0x1D}ですね。{BREAK}ちゃんと {0x03}{0x10}さんの{BREAK}うちへ おくっておきますね。{BREAK}{WAIT}◆ほかに あずかるものは{BREAK}ありますか?{BREAK}\0")
    ENGLISH_TEXT("@The {0x03}{0x1D},{BREAK}right?{BREAK}{WAIT}@I'll be sure to{BREAK}send it to {0x03}{0x10}'s{BREAK}house.{BREAK}{WAIT}@Is there anything{BREAK}else you want to{BREAK}store?{BREAK}\0")

    .global gUnknown_08F23439
gUnknown_08F23439:
    JAPANESE_TEXT("◆こんな せまいなかに{BREAK}とじこめられて……{BREAK}これから どうなるんだろう。{BREAK}\0")
    ENGLISH_TEXT("@What are we trapped inside{BREAK}these cramped things for?{BREAK}{WAIT}@What's going to happen to{BREAK}us?{BREAK}\0")

    .global gUnknown_08F2345F
gUnknown_08F2345F:
    JAPANESE_TEXT("「スイ-トリトル こうじょう」{BREAK}\0")
    ENGLISH_TEXT("Sweet Little Factory{BREAK}\0")

    .global gUnknown_08F23470
gUnknown_08F23470:
    JAPANESE_TEXT("◆やまのうえの{BREAK}マザ-シップに つれていかれて{BREAK}きがついたら こんなことに……{BREAK}{WAIT}◆なんとかしてくれ!{BREAK}\0")
    ENGLISH_TEXT("@The mothership brought us{BREAK}to the top of the mountain,{BREAK}{WAIT}and when we came to, we{BREAK}were stuck in these{BREAK}things...{BREAK}{WAIT}@Please, do something!{BREAK}\0")

    .global gUnknown_08F234A6
gUnknown_08F234A6:
    JAPANESE_TEXT("◆スペルの まちがいは ないですね?{BREAK}\0")
    ENGLISH_TEXT("@Are you sure it's spelled{BREAK}right?{BREAK}\0")

    .global gUnknown_08F234BA
gUnknown_08F234BA:
    JAPANESE_TEXT("◆どうぶつたちを くるわせていた{BREAK}あやしいおとは きえた。{BREAK}どうぶつえんは あんぜんになった。{BREAK}\0")
    ENGLISH_TEXT("@The strange sound driving{BREAK}the animals crazy stopped.{BREAK}{WAIT}@The zoo is safe once more.{BREAK}\0")

    .global gUnknown_08F234EB
gUnknown_08F234EB:
    JAPANESE_TEXT("◆だいじな せんしゃだからな。{BREAK}こわさんようにな。{BREAK}\0")
    ENGLISH_TEXT("@This tank is my prized{BREAK}possession. Try not to{BREAK}break it, okay?{BREAK}\0")

    .global gUnknown_08F23506
gUnknown_08F23506:
    JAPANESE_TEXT("◆いぬの くびわには{BREAK}ちかしつのカギが さがっていた。{BREAK}\0")
    ENGLISH_TEXT("@A key to the basement is{BREAK}hanging from the dog's{BREAK}collar.{BREAK}\0")

    .global gUnknown_08F23523
gUnknown_08F23523:
    JAPANESE_TEXT("◆へっへっへ あっしは{BREAK}おせっかいな ねずみです。{BREAK}{WAIT}◆まちの いえには{BREAK}はいれる いえと{BREAK}はいれない いえが あります。{BREAK}{WAIT}◆まるいドアと かんばんのあるドアは{BREAK}はいれる いえ。{BREAK}{WAIT}◆あとは はいろうとしても{BREAK}あたまを ぶつけるだけでさぁ。{BREAK}{WAIT}◆さいなら。{BREAK}\0")
    ENGLISH_TEXT("@Heh heh heh! I'm a{BREAK}meddlesome mouse!{BREAK}{WAIT}@In towns, there are some{BREAK}houses you can go inside{BREAK}and some you can't.{BREAK}{WAIT}@Houses with round doors or{BREAK}signs on them are the ones{BREAK}you can go into.{BREAK}{WAIT}@If you try to go into any{BREAK}of the other ones, you'll{BREAK}just hit your head.{BREAK}{WAIT}@Well, bye!{BREAK}\0")

    .global gUnknown_08F235AA
gUnknown_08F235AA:
    JAPANESE_TEXT("◆テレポ-テ-ションを{BREAK}おもちゃに するんじゃないぞ。{BREAK}\0")
    ENGLISH_TEXT("@Remember, teleportation{BREAK}isn't something to be toyed{BREAK}with.{BREAK}\0")

    .global gUnknown_08F235C7
gUnknown_08F235C7:
    JAPANESE_TEXT("◆ほんとうの こどものように{BREAK}かわいがったのに……{BREAK}\0")
    ENGLISH_TEXT("@I had loved him as if he{BREAK}were my own child, too...{BREAK}\0")

    .global gUnknown_08F235E2
gUnknown_08F235E2:
    JAPANESE_TEXT("◆しっぽを ふってた{BREAK}あかちゃんだった……{BREAK}こもりうたを……でも……{BREAK}\0")
    ENGLISH_TEXT("@He would always wag his{BREAK}tail as a baby...{BREAK}{WAIT}@I would sing him a lullaby,{BREAK}but then...{BREAK}\0")

    .global gUnknown_08F23606
gUnknown_08F23606:
    JAPANESE_TEXT("◆ああ ジョ-ジ!{BREAK}あなたの つま マリアです。{BREAK}{WAIT}◆あなたのまつ てんごくに{BREAK}わたしも いまから むかいます……{BREAK}\0")
    ENGLISH_TEXT("@Oh, George!{BREAK}{WAIT}This is your wife, Maria.{BREAK}{WAIT}@I know you've been{BREAK}waiting...{BREAK}{WAIT}I'm on my way to join you{BREAK}in heaven now...{BREAK}\0")

    .global gUnknown_08F23642
gUnknown_08F23642:
    JAPANESE_TEXT("◆キャッシュカ-ドヲ イレテクダサイ{BREAK}\0")
    ENGLISH_TEXT("@PLEASE INSERT ATM CARD{BREAK}\0")

    .global gUnknown_08F23656
gUnknown_08F23656:
    JAPANESE_TEXT("◆そんなに げんきんを{BREAK}もちあるいては いけない。{BREAK}\0")
    ENGLISH_TEXT("@You shouldn't carry around{BREAK}that much cash.{BREAK}\0")

    .global gUnknown_08F23671
gUnknown_08F23671:
    JAPANESE_TEXT("◆このまえの{BREAK}セ-ブデ-タまで もどるが{BREAK}それで よいのか?{BREAK}\0")
    ENGLISH_TEXT("@This'll return you back to{BREAK}your previous save data.{BREAK}Is that all right?{BREAK}\0")

    .global gUnknown_08F23691
gUnknown_08F23691:
    JAPANESE_TEXT("◆「はい」って いったのに{BREAK}もってないじゃないか。{BREAK}アハハハハ。{BREAK}\0")
    ENGLISH_TEXT("@You said yes, but you don't{BREAK}have a save file!{BREAK}{WAIT}Ahahaha!{BREAK}\0")

    .global gUnknown_08F236B3
gUnknown_08F236B3:
    JAPANESE_TEXT("◆こきゅうが みだれて{BREAK}くるしそうだ。{BREAK}\0")
    ENGLISH_TEXT("@His breathing is rough. He{BREAK}looks like he's in pain.{BREAK}\0")

    .global gUnknown_08F236C8
gUnknown_08F236C8:
    JAPANESE_TEXT("◆まだ グッズをわたせる{BREAK}なかまが いない。{BREAK}\0")
    ENGLISH_TEXT("@You don't have any{BREAK}friends to give{BREAK}items to yet.{BREAK}\0")

    .global gUnknown_08F236E0
gUnknown_08F236E0:
    JAPANESE_TEXT("◆{0x03}{0x1D}ですね。{BREAK}たしかに おわたししましたよ。{BREAK}{WAIT}◆ほかに もっていくものは{BREAK}ありますか?{BREAK}\0")
    ENGLISH_TEXT("@Oh, the{BREAK}{0x03}{0x1D}?{BREAK}{WAIT}@Here you go. Take{BREAK}good care of it.{BREAK}{WAIT}@Is there anything{BREAK}else you want to{BREAK}take with you?{BREAK}\0")

    .global gUnknown_08F23710
gUnknown_08F23710:
    JAPANESE_TEXT("◆もちきれない みたいだけど{BREAK}ほかのひとに わたしますか?{BREAK}\0")
    ENGLISH_TEXT("@It looks like you{BREAK}can't carry any{BREAK}more stuff.{BREAK}{WAIT}@Should I give this{BREAK}to someone else?{BREAK}\0")

    .global gUnknown_08F2372F
gUnknown_08F2372F:
    JAPANESE_TEXT("◆そうこが いっぱいです。{BREAK}\0")
    ENGLISH_TEXT("@The storeroom is{BREAK}full.{BREAK}\0")

    .global gUnknown_08F2373E
gUnknown_08F2373E:
    JAPANESE_TEXT("◆クイ-ンマリ-は{BREAK}{0x03}{0x10}に かたりおえると{BREAK}かぜのなかに きえていった。{BREAK}{WAIT}◆そして マジカントのくにも{BREAK}また あとかたもなく{BREAK}かききえた。{BREAK}{WAIT}◆マジカントのくに とは{BREAK}マリ-のいしきが うみだした{BREAK}まぼろしだったのだ。{BREAK}\0")
    ENGLISH_TEXT("@Once Queen Mary finished{BREAK}speaking to {0x03}{0x10}, she{BREAK}disappeared into the wind.{BREAK}{WAIT}And then the land of{BREAK}Magicant itself vanished{BREAK}without a trace.{BREAK}{WAIT}@Magicant had actually been{BREAK}an illusion born of Mary's{BREAK}consciousness.{BREAK}\0")

    .global gUnknown_08F237B0
gUnknown_08F237B0:
    JAPANESE_TEXT("◆わたしが{BREAK}あなた{0x03}{0x17}を よんだのです。{BREAK}{WAIT}◆{0x03}{0x10}!{BREAK}{WAIT}{0x03}{0x12}!{BREAK}{0x03}{0x11}!{BREAK}{0x03}{0x13}!{BREAK}{WAIT}◆そして すべての{BREAK}ゆうきある こどもたち。{BREAK}{WAIT}◆いまが そのときです!{BREAK}\0")
    ENGLISH_TEXT("@It was I who called you{BREAK}here.{BREAK}{WAIT}@{0x03}{0x10}!{BREAK}{WAIT}{0x03}{0x12}!{BREAK}{WAIT}{0x03}{0x11}!{BREAK}{WAIT}{0x03}{0x13}!{BREAK}{WAIT}@And all courageous children{BREAK}out there...{BREAK}{WAIT}@The time is now!{BREAK}\0")

    .global gUnknown_08F23803
gUnknown_08F23803:
    JAPANESE_TEXT("◆し-っ! わたくしどもも{BREAK}あなた{0x03}{0x17}と おなじように{BREAK}あっちの せかいの にんげんです。{BREAK}{WAIT}◆おかねさえ いただければ{BREAK}マジカントの すばらしいおみやげを{BREAK}わけて さしあげますよ。{BREAK}{WAIT}◆ヒッヒッヒ。{BREAK}\0")
    ENGLISH_TEXT("@Shh! I'm just like you!{BREAK}I'm from the other world!{BREAK}{WAIT}@For some money, I'll share{BREAK}some souvenirs of Magicant{BREAK}with you.{BREAK}{WAIT}@Hee hee hee!{BREAK}\0")

    .global gUnknown_08F2386B
gUnknown_08F2386B:
    JAPANESE_TEXT("◆でんしゃにのらないと オレみたいに{BREAK}なっちゃうぜ。{BREAK}\0")
    ENGLISH_TEXT("@You'll end up like me if{BREAK}you don't take the train...{BREAK}\0")

    .global gUnknown_08F23887
gUnknown_08F23887:
    JAPANESE_TEXT("◆ほかに ございますか?{BREAK}\0")
    ENGLISH_TEXT("@Do you need anything else?{BREAK}\0")

    .global gUnknown_08F23895
gUnknown_08F23895:
    JAPANESE_TEXT("◆ようこそ {0x03}{0x16}……{BREAK}{WAIT}◆かならず ここまで{BREAK}たどりつくことができると{BREAK}しんじていました。{BREAK}{WAIT}◆そのむかし {0x03}{0x10}の{BREAK}そうそぼ マリアは{BREAK}{WAIT}◆8つのメロディ- それぞれに{BREAK}せいいっぱいの あいをちりばめ{BREAK}{WAIT}◆まだみぬ あなた{0x03}{0x17}への{BREAK}おくりものとしたのです……{BREAK}{WAIT}\0")
    ENGLISH_TEXT("@Welcome, {0x03}{0x16}...{BREAK}{WAIT}@I always had faith that you{BREAK}would make it this far.{BREAK}{WAIT}@Long ago, your{BREAK}great-grandmother Maria{BREAK}filled her eight melodies{BREAK}{WAIT}with all the love she could{BREAK}and scattered them around{BREAK}as gifts for you,{BREAK}{WAIT}even though she had never{BREAK}seen you before...{BREAK}{WAIT}\0")

    .global gUnknown_08F2391E
gUnknown_08F2391E:
    JAPANESE_TEXT("◆クリスタルの かがやきを あびて{BREAK}ぜんいん かんぜんに かいふくした!{BREAK}\0")
    ENGLISH_TEXT("@Bathed in the glow of the{BREAK}crystal, everyone was{BREAK}completely healed!{BREAK}\0")

    .global gUnknown_08F23944
gUnknown_08F23944:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F23945
gUnknown_08F23945:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F23946
gUnknown_08F23946:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}わたすのを やめた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} decided not to hand{BREAK}over any items.{BREAK}\0")

    .global gUnknown_08F23957
gUnknown_08F23957:
    JAPANESE_TEXT("◆{0x03}{0x1A}は {0x03}{0x1B}に{BREAK}{0x03}{0x1C}を あたえた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} gave the {0x03}{0x1C}{BREAK}to {0x03}{0x1B}.{BREAK}\0")

    .global gUnknown_08F2396B
gUnknown_08F2396B:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1B}の バッグに{BREAK}{0x03}{0x1C}を いれた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} put the {0x03}{0x1C}{BREAK}in {0x03}{0x1B}'s bag.{BREAK}\0")

    .global gUnknown_08F23983
gUnknown_08F23983:
    JAPANESE_TEXT("◆{0x03}{0x1B}は{BREAK}{0x03}{0x1A}の バッグから{BREAK}{0x03}{0x1C}を だした。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1B} took the {0x03}{0x1C}{BREAK}from {0x03}{0x1A}'s bag.{BREAK}\0")

    .global gUnknown_08F2399C
gUnknown_08F2399C:
    JAPANESE_TEXT("◆{0x03}{0x3E}は{BREAK}{0x03}{0x1A}の バッグから{BREAK}{0x03}{0x1C}を すてた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} threw out the{BREAK}{0x03}{0x1C} that was in{BREAK}{0x03}{0x1A}'s bag.{BREAK}\0")

    .global gUnknown_08F239B5
gUnknown_08F239B5:
    JAPANESE_TEXT("◆{0x03}{0x3E}は{BREAK}{0x03}{0x1A}の バッグから{BREAK}{0x03}{0x1C}を だして{BREAK}{WAIT}{0x03}{0x1B}の バッグに いれた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x3E} took the {0x03}{0x1C}{BREAK}out of {0x03}{0x1A}'s bag{BREAK}{WAIT}and put it in {0x03}{0x1B}'s bag.{BREAK}\0")

    .global gUnknown_08F239DD
gUnknown_08F239DD:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}を たべた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} ate the {0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F239EC
gUnknown_08F239EC:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}を のんだ。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} drank the{BREAK}{0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F239FB
gUnknown_08F239FB:
    JAPANESE_TEXT("{0x03}{0x1E} かいふくした。{BREAK}\0")
    ENGLISH_TEXT("was recovered by {0x03}{0x1E}.{BREAK}\0")

    .global gUnknown_08F23A07
gUnknown_08F23A07:
    JAPANESE_TEXT("{0x03}{0x1E} あがった。{BREAK}\0")
    ENGLISH_TEXT("went up {0x03}{0x1E}.{BREAK}\0")

    .global gUnknown_08F23A11
gUnknown_08F23A11:
    JAPANESE_TEXT("◆{0x03}{0x1A}の HPは{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s HP{BREAK}\0")

    .global gUnknown_08F23A1B
gUnknown_08F23A1B:
    JAPANESE_TEXT("◆{0x03}{0x1A}の PPは{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s PP{BREAK}\0")

    .global gUnknown_08F23A25
gUnknown_08F23A25:
    JAPANESE_TEXT("◆{0x03}{0x1A}の ファイトは{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s Fight{BREAK}\0")

    .global gUnknown_08F23A31
gUnknown_08F23A31:
    JAPANESE_TEXT("◆{0x03}{0x1A}の スピ-ドは{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s Speed{BREAK}\0")

    .global gUnknown_08F23A3D
gUnknown_08F23A3D:
    JAPANESE_TEXT("◆{0x03}{0x1A}の かしこさは{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s Wisdom{BREAK}\0")

    .global gUnknown_08F23A49
gUnknown_08F23A49:
    JAPANESE_TEXT("◆{0x03}{0x1A}の たいりょくは{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s Strength{BREAK}\0")

    .global gUnknown_08F23A56
gUnknown_08F23A56:
    JAPANESE_TEXT("◆{0x03}{0x1A}の フォ-スは{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s Force{BREAK}\0")

    .global gUnknown_08F23A62
gUnknown_08F23A62:
    JAPANESE_TEXT("◆{0x03}{0x1A}は でかぶくろから{BREAK}マジックハ-ブを とりだして{BREAK}つかった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} took a Magic Herb{BREAK}from the Big Bag and used{BREAK}it.{BREAK}\0")

    .global gUnknown_08F23A85
gUnknown_08F23A85:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}パンを ちぎって{BREAK}まきながら あるきだした。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} broke the bread into{BREAK}crumbs and started a trail{BREAK}out of them.{BREAK}\0")

    .global gUnknown_08F23AA2
gUnknown_08F23AA2:
    JAPANESE_TEXT("◆ふるいパンくずを{BREAK}すててからでないと{BREAK}パンは つかえない。{BREAK}\0")
    ENGLISH_TEXT("@You need to throw out your{BREAK}old bread crumbs before you{BREAK}can use other bread.{BREAK}\0")

    .global gUnknown_08F23AC2
gUnknown_08F23AC2:
    JAPANESE_TEXT("◆{0x03}{0x16}{0x03}{0x17}は{BREAK}パンくずを たどりながら{BREAK}もとのばしょに もどった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x16} followed the trail{BREAK}of bread crumbs back to{BREAK}where it started.{BREAK}\0")

    .global gUnknown_08F23AE5
gUnknown_08F23AE5:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}かみに リボンを つけた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} put the ribbon in{BREAK}her hair.{BREAK}\0")

    .global gUnknown_08F23AF9
gUnknown_08F23AF9:
    JAPANESE_TEXT("◆「もう スイッチを きっちまえ!」{BREAK}\0")
    ENGLISH_TEXT("@…Just turn the power off!”{BREAK}\0")

    .global gUnknown_08F23B0D
gUnknown_08F23B0D:
    JAPANESE_TEXT("◆いろいろなものの{BREAK}ながさが わかった。{BREAK}\0")
    ENGLISH_TEXT("@You were able to figure out{BREAK}the lengths of many things.{BREAK}\0")

    .global gUnknown_08F23B23
gUnknown_08F23B23:
    JAPANESE_TEXT("◆でかぶくろは からになって{BREAK}かききえてしまった。{BREAK}\0")
    ENGLISH_TEXT("@The Big Bag disappeared{BREAK}after being emptied.{BREAK}\0")

    .global gUnknown_08F23B3E
gUnknown_08F23B3E:
    JAPANESE_TEXT("◆テレホンカ-ドを{BREAK}つかいきってしまった。{BREAK}\0")
    ENGLISH_TEXT("@You used up all the calls{BREAK}on your Phone Card.{BREAK}\0")

    .global gUnknown_08F23B55
gUnknown_08F23B55:
    JAPANESE_TEXT("◆{0x03}{0x1A}の からだから{BREAK}どくが ぬけた。{BREAK}\0")
    ENGLISH_TEXT("@The poison was removed from{BREAK}{0x03}{0x1A}'s body.{BREAK}\0")

    .global gUnknown_08F23B6A
gUnknown_08F23B6A:
    JAPANESE_TEXT("◆{0x03}{0x1A}のカゼが なおった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s cold went away.{BREAK}\0")

    .global gUnknown_08F23B79
gUnknown_08F23B79:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}サイパワ-スト-ンをにぎりしめた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} gripped the{BREAK}PSI Stone.{BREAK}\0")

    .global gUnknown_08F23B91
gUnknown_08F23B91:
    JAPANESE_TEXT("◆サイパワ-スト-ンは{BREAK}ただの いしころに なった。{BREAK}\0")
    ENGLISH_TEXT("@The PSI Stone turned into{BREAK}an ordinary rock.{BREAK}\0")

    .global gUnknown_08F23BAD
gUnknown_08F23BAD:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}{0x03}{0x1C}をこころみた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} tried {0x03}{0x1C}.{BREAK}\0")

    .global gUnknown_08F23BBD
gUnknown_08F23BBD:
    JAPANESE_TEXT("◆それを こころみるだけの{BREAK}パワ-は のこっていない。{BREAK}\0")
    ENGLISH_TEXT("@You don't have enough power{BREAK}left to try that.{BREAK}\0")

    .global gUnknown_08F23BDA
gUnknown_08F23BDA:
    JAPANESE_TEXT("◆{0x03}{0x1A}は カムバックした。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} was revived!{BREAK}\0")

    .global gUnknown_08F23BE9
gUnknown_08F23BE9:
    JAPANESE_TEXT("◆にっきは ほとんど{BREAK}よみとれなかったが かろうじて{BREAK}{WAIT}◆「あいことば……{BREAK}かみのしっぽは どこにある。{BREAK}あまかけるふねの わすれもの」{BREAK}{WAIT}と よめた。{BREAK}\0")
    ENGLISH_TEXT("@Most of the diary is{BREAK}unreadable, but one part{BREAK}did stand out:{BREAK}{WAIT}@…The password...{BREAK}{WAIT}Where is the god's tail,{BREAK}{WAIT}that which was left behind{BREAK}by the ship that soars{BREAK}the heavens?”{BREAK}\0")

    .global gUnknown_08F23C39
gUnknown_08F23C39:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}すっかり やわらかくなった。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A}'s body became soft{BREAK}again.{BREAK}\0")

    .global gUnknown_08F23C4E
gUnknown_08F23C4E:
    JAPANESE_TEXT("◆きぼうのオカリナを ふいた。{BREAK}\0")
    ENGLISH_TEXT("@You played the Ocarina of{BREAK}Hope.{BREAK}\0")

    .global gUnknown_08F23C5F
gUnknown_08F23C5F:
    JAPANESE_TEXT("◆「きこえたかい?」{BREAK}\0")
    ENGLISH_TEXT("@Did you catch that?{BREAK}\0")

    .global gUnknown_08F23C6B
gUnknown_08F23C6B:
    JAPANESE_TEXT("◆このばしょは{BREAK}ちずに のっていない。{BREAK}\0")
    ENGLISH_TEXT("@This location is not on the{BREAK}map.{BREAK}\0")

    .global gUnknown_08F23C80
gUnknown_08F23C80:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}ちずを しらべた。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} checked the map.{BREAK}\0")

    .global gUnknown_08F23C90
gUnknown_08F23C90:
    JAPANESE_TEXT("◆{0x03}{0x16}{0x03}{0x17}は{BREAK}なにかの ちからに{BREAK}おしとどめられて しまった。{BREAK}\0")
    ENGLISH_TEXT("@Some sort of force is{BREAK}pushing {0x03}{0x16}{0x03}{0x17}{BREAK}back.{BREAK}\0")

    .global gUnknown_08F23CB1
gUnknown_08F23CB1:
    JAPANESE_TEXT("◆まよけのゆびわの{BREAK}ふしぎなちからは きえた。{BREAK}\0")
    ENGLISH_TEXT("@The Repel Ring's mysterious{BREAK}power wore off.{BREAK}\0")

    .global gUnknown_08F23CCA
gUnknown_08F23CCA:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F23CCB
gUnknown_08F23CCB:
    JAPANESE_TEXT("Copyrights of Game{0x03}{0x3F} Scenario{0x03}{0x3F}{BREAK}{BREAK}Music{0x03}{0x3F} but excluding the{BREAK}{BREAK}copyright of Music composed by{BREAK}{BREAK}Keiichi Suzuki{0x03}{0x3F} reserved by{BREAK}{BREAK}SHIGESATO ITOI and NINTENDO.{BREAK}{BREAK}Copyright of Program reserved{BREAK}{BREAK}by NINTENDO.{BREAK}\0")
    ENGLISH_TEXT("Copyrights of Game{0x03}{0x3F} Scenario{0x03}{0x3F}{BREAK}{BREAK}Music{0x03}{0x3F} but excluding the{BREAK}{BREAK}copyright of Music composed by{BREAK}{BREAK}Keiichi Suzuki{0x03}{0x3F} reserved by{BREAK}{BREAK}SHIGESATO ITOI and NINTENDO.{BREAK}{BREAK}Copyright of Program reserved{BREAK}{BREAK}by NINTENDO.{BREAK}\0")

    .global gUnknown_08F23D90
gUnknown_08F23D90:
    JAPANESE_TEXT("{BREAK}{BREAK}{BREAK}{BREAK}\0")
    ENGLISH_TEXT("{BREAK}{BREAK}{BREAK}{BREAK}\0")

    .global gUnknown_08F23D95
gUnknown_08F23D95:
    JAPANESE_TEXT("{BREAK}   ほらあなに とじこめられていた ひとたちも{BREAK}   ぜんいん ぶじに きゅうしゅつされ{BREAK}   {0x03}{0x12}と ママの かんどうの さいかい。{BREAK}\0")
    ENGLISH_TEXT("{0x03}{0x12} is reunited with her{BREAK}mother as the rest of the{BREAK}freed people exit the cave.{BREAK}\0")

    .global gUnknown_08F23DDC
gUnknown_08F23DDC:
    JAPANESE_TEXT("{BREAK}    {0x03}{0x13}は かんぺきに げんきになり{BREAK}    いまや ライブハウスの にんきシンガ-だ。{BREAK}\0")
    ENGLISH_TEXT("{0x03}{0x13}, his health fully{BREAK}recovered, is now a popular{BREAK}singer at the Live House.{BREAK}\0")

    .global gUnknown_08F23E0D
gUnknown_08F23E0D:
    JAPANESE_TEXT("{BREAK}    イ-スタ-のまちの おとなたちも{BREAK}    こどもたちの ところへ かえってきた。{BREAK}    がんばったね! こどもたち!{BREAK}\0")
    ENGLISH_TEXT("The abducted grownups return{BREAK}to their children in Easter.{BREAK}You did great, kids!{BREAK}\0")

    .global gUnknown_08F23E4F
gUnknown_08F23E4F:
    JAPANESE_TEXT("  ({0x03}{0x12}){BREAK}    ぜったい わすれないって やくそくするわ。{BREAK}    だから 「さようなら」 じゃなくて{BREAK}    「またあいましょう」 だね!{BREAK}\0")
    ENGLISH_TEXT("{0x03}{0x12}: I promise I'll never{BREAK}forget you. So I won't say{BREAK}goodbye...{BREAK}Just, …'Til we meet again!”{BREAK}\0")

    .global gUnknown_08F23E9A
gUnknown_08F23E9A:
    JAPANESE_TEXT("{BREAK}    {0x03}{0x11}は ヒ-ロ-となって{BREAK}    ティンクルしょうがっこうに かえり{BREAK}    みんなに もみくちゃに されたのだった。{BREAK}\0")
    ENGLISH_TEXT("{0x03}{0x11} returns to a hero's{BREAK}welcome at Twinkle{BREAK}Elementary School.{BREAK}\0")

    .global gUnknown_08F23EDC
gUnknown_08F23EDC:
    JAPANESE_TEXT("{BREAK}  おかえり {0x03}{0x10}!{BREAK}  ぶじに かえってきて ほんとうに よかった……{BREAK}  すご-く おなか すいたでしょ?!{BREAK}\0")
    ENGLISH_TEXT("Welcome home, {0x03}{0x10}!{BREAK}We're so glad you made it{BREAK}back safe and sound.{BREAK}You must be famished!{BREAK}\0")

    .global gUnknown_08F23F17
gUnknown_08F23F17:
    JAPANESE_TEXT("{BREAK}  {0x03}{0x10}から てがみが とどいた。{BREAK}  かれに あえなくて ちょっと さびしかったところ。{BREAK}  はやく また あえるといいな……{BREAK}\0")
    ENGLISH_TEXT("Oh, a letter from {0x03}{0x10}.{BREAK}I miss him so much.{BREAK}I hope we can get together{BREAK}again soon...{BREAK}\0")

    .global gUnknown_08F23F5A
gUnknown_08F23F5A:
    JAPANESE_TEXT("{BREAK} さて ちきゅうの ききも ひとまず さったことだし{BREAK} ぼくも あんしんして ゆっくり ねむろうかな……{BREAK}       …… Zzzzzzzz ……{BREAK}\0")
    ENGLISH_TEXT("Well, now that the Earth's{BREAK}crisis is finally over, I{BREAK}think I'll just lie down for{BREAK}a moment and... Zzzzzzz...\0")

    .global gUnknown_08F23FA7
gUnknown_08F23FA7:
    JAPANESE_TEXT("{BREAK}  あ パパだ。 おやすみのところ もうしわけないが{BREAK}  もしかしたら ゆっくり やすんでいる ばあいじゃ{BREAK}  ないかも しれないぞ……{BREAK}\0")
    ENGLISH_TEXT("Oh, this is your dad.{BREAK}I hate to wake you, but it{BREAK}might be just a little too{BREAK}soon to rest easy...\0")

    .global gUnknown_08F23FEE
gUnknown_08F23FEE:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F23FEF
gUnknown_08F23FEF:
    JAPANESE_TEXT(" たたかうべきか にげるべきか?\0")
    ENGLISH_TEXT("Should you fight it?{BREAK}Or should you run from it?\0")

    .global gUnknown_08F24000
gUnknown_08F24000:
    JAPANESE_TEXT(" とても じゅうような ひみつを{BREAK} にぎっているようだ。\0")
    ENGLISH_TEXT("It appears to be holding a very important secret.\0")

    .global gUnknown_08F2401D
gUnknown_08F2401D:
    JAPANESE_TEXT(" こいつを たおす ほうほうは{BREAK} はたして あるのだろうか?\0")
    ENGLISH_TEXT("Is there actually any way to defeat this thing?\0")

    .global gUnknown_08F2403C
gUnknown_08F2403C:
    JAPANESE_TEXT(" おもい からだで のしかかってきたり{BREAK} ながい はなで おそってくるぞ!\0")
    ENGLISH_TEXT("Sometimes it'll slam you with its heavy body or attack with its long trunk!\0")

    .global gUnknown_08F24062
gUnknown_08F24062:
    JAPANESE_TEXT(" だれかに エサを とられて{BREAK} きげんが そうとう よくない!\0")
    ENGLISH_TEXT("Someone ate its food, and it's not happy at all!\0")

    .global gUnknown_08F24082
gUnknown_08F24082:
    JAPANESE_TEXT(" おどろいたか?{BREAK} じつざいの かいぶつ だったのだ!\0")
    ENGLISH_TEXT("Shocked? It really does exist!\0")

    .global gUnknown_08F2409E
gUnknown_08F2409E:
    JAPANESE_TEXT(" はいきガスに ちゅうい。{BREAK} ぜんそくに なるぞ。\0")
    ENGLISH_TEXT("Watch out for its exhaust! It can cause an asthma attack!\0")

    .global gUnknown_08F240B8
gUnknown_08F240B8:
    JAPANESE_TEXT(" ロボットには さいみんじゅつは{BREAK} きかないでしょう。\0")
    ENGLISH_TEXT("Hypnosis probably doesn't work on robots, does it?\0")

    .global gUnknown_08F240D4
gUnknown_08F240D4:
    JAPANESE_TEXT(" PSIこうげきから みをまもる{BREAK} とくしゅな よろいを きている。\0")
    ENGLISH_TEXT("It's wearing special armor to protect itself from PSI attacks.\0")

    .global gUnknown_08F240F7
gUnknown_08F240F7:
    JAPANESE_TEXT(" にんげんを いしに してしまう{BREAK} のうりょくが ある。\0")
    ENGLISH_TEXT("This has the power to turn people into stone.\0")

    .global gUnknown_08F24114
gUnknown_08F24114:
    JAPANESE_TEXT(" こんなやつは ちきゅうじょうには{BREAK} そんざいしない はずだ……\0")
    ENGLISH_TEXT("Creatures like this shouldn't exist on Earth, but...\0")

    .global gUnknown_08F24135
gUnknown_08F24135:
    JAPANESE_TEXT(" こんな ちんぴら るいじんえんに{BREAK} からまれている ばあいではない!\0")
    ENGLISH_TEXT("This is no time to be getting caught up with a punk ape like this!\0")

    .global gUnknown_08F24159
gUnknown_08F24159:
    JAPANESE_TEXT(" ははおや いがいの だれもが{BREAK} おそれる つらがまえ。\0")
    ENGLISH_TEXT("The only one not afraid of this thing's face is its own mother.\0")

    .global gUnknown_08F24176
gUnknown_08F24176:
    JAPANESE_TEXT(" あの おそろしい めを みたか!?\0")
    ENGLISH_TEXT("Just look at those terrifying eyes!\0")

    .global gUnknown_08F24189
gUnknown_08F24189:
    JAPANESE_TEXT(" うんてんせきに だれも いないぞ!?\0")
    ENGLISH_TEXT("Whoa, there's no one in the driver's seat!\0")

    .global gUnknown_08F2419D
gUnknown_08F2419D:
    JAPANESE_TEXT(" かれには つよい なかまが いる。\0")
    ENGLISH_TEXT("He has strong friends.\0")

    .global gUnknown_08F241B0
gUnknown_08F241B0:
    JAPANESE_TEXT(" こいつの からは{BREAK} しんじられないほど かたい。\0")
    ENGLISH_TEXT("This thing's shell is unbelievably hard.\0")

    .global gUnknown_08F241CA
gUnknown_08F241CA:
    JAPANESE_TEXT(" さいみんじゅつを つかってくるぞ。\0")
    ENGLISH_TEXT("Watch out. It'll use hypnosis on you.\0")

    .global gUnknown_08F241DD
gUnknown_08F241DD:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F241DE
gUnknown_08F241DE:
    JAPANESE_TEXT(" すばやさが こいつの ごじまん。\0")
    ENGLISH_TEXT("This animal is as swift as they come.\0")

    .global gUnknown_08F241F0
gUnknown_08F241F0:
    JAPANESE_TEXT(" しんじゅみたいに しろい やつに{BREAK} きをつけろ。\0")
    ENGLISH_TEXT("Watch out for those pearly whites!\0")

    .global gUnknown_08F2420A
gUnknown_08F2420A:
    JAPANESE_TEXT(" この どろぼう!!\0")
    ENGLISH_TEXT("You dirty thief!\0")

    .global gUnknown_08F24215
gUnknown_08F24215:
    JAPANESE_TEXT(" ワニに しょくじに さそわれても{BREAK} おことわり しなさい。\0")
    ENGLISH_TEXT("Always turn down an alligator's dinner invitation.\0")

    .global gUnknown_08F24234
gUnknown_08F24234:
    JAPANESE_TEXT(" あるく ねんりょうタンクだ。\0")
    ENGLISH_TEXT("It's a walking fuel tank.\0")

    .global gUnknown_08F24244
gUnknown_08F24244:
    JAPANESE_TEXT(" なにかを まもっている ようだ。\0")
    ENGLISH_TEXT("It appears to be protecting something.\0")

    .global gUnknown_08F24256
gUnknown_08F24256:
    JAPANESE_TEXT(" FBIの しめいてはいリストの{BREAK} さいしょのほうに のっている。\0")
    ENGLISH_TEXT("This guy is at the very top of the FBI's most-wanted list.\0")

    .global gUnknown_08F24278
gUnknown_08F24278:
    JAPANESE_TEXT(" ねは いいやつなのかも しれない。\0")
    ENGLISH_TEXT("Deep down, he might actually be a nice guy.\0")

    .global gUnknown_08F2428B
gUnknown_08F2428B:
    JAPANESE_TEXT(" えいようふりょうの ロボット?\0")
    ENGLISH_TEXT("A malnourished robot?\0")

    .global gUnknown_08F2429C
gUnknown_08F2429C:
    JAPANESE_TEXT(" かのじょの えがおに だまされるな。\0")
    ENGLISH_TEXT("Don't be fooled by her smile!\0")

    .global gUnknown_08F242B0
gUnknown_08F242B0:
    JAPANESE_TEXT(" とおい ほしから きた おとこ。\0")
    ENGLISH_TEXT("A man from a distant star.\0")

    .global gUnknown_08F242C2
gUnknown_08F242C2:
    JAPANESE_TEXT(" げんじつせかいの いきものではない。\0")
    ENGLISH_TEXT("This creature does not exist in the real world.\0")

    .global gUnknown_08F242D6
gUnknown_08F242D6:
    JAPANESE_TEXT(" じゃあくな じっけんが うみだした{BREAK} うごきまわる のうみそ。\0")
    ENGLISH_TEXT("A mobile brain that is the result of an evil science experiment.\0")

    .global gUnknown_08F242F7
gUnknown_08F242F7:
    JAPANESE_TEXT(" さまざまな PSIを つかいこなす。\0")
    ENGLISH_TEXT("This creature is a master of many kinds of PSI.\0")

    .global gUnknown_08F2430B
gUnknown_08F2430B:
    JAPANESE_TEXT(" こっちも よろいを みにつけたいよ。\0")
    ENGLISH_TEXT("It'd be nice to have some armor of your own.\0")

    .global gUnknown_08F2431F
gUnknown_08F2431F:
    JAPANESE_TEXT(" あやしく うごきまわる き。\0")
    ENGLISH_TEXT("A strange, mobile tree.\0")

    .global gUnknown_08F2432F
gUnknown_08F2432F:
    JAPANESE_TEXT(" おこりっぽいので ようちゅうい。\0")
    ENGLISH_TEXT("He looks bad-tempered, so be careful.\0")

    .global gUnknown_08F24341
gUnknown_08F24341:
    JAPANESE_TEXT(" あの かみのけの なかに おはなを{BREAK} うえたら そだつかもね。\0")
    ENGLISH_TEXT("You could probably plant flowers in his hair and they'd grow.\0")

    .global gUnknown_08F24362
gUnknown_08F24362:
    JAPANESE_TEXT(" れいぞうこの ような からだつきの{BREAK} なかみは こおりの ハ-トだ。\0")
    ENGLISH_TEXT("She has a body like a refrigerator and a heart of ice.\0")

    .global gUnknown_08F24386
gUnknown_08F24386:
    JAPANESE_TEXT(" ふりょうの リ-ダ-を たおせば{BREAK} かれらは まともに なるだろう。\0")
    ENGLISH_TEXT("Beating the punks' leader will probably set them all straight.\0")

    .global gUnknown_08F243AA
gUnknown_08F243AA:
    JAPANESE_TEXT(" かおだけではなく{BREAK} こころも ゆがんでいる。\0")
    ENGLISH_TEXT("His heart is as warped as his face is.\0")

    .global gUnknown_08F243C2
gUnknown_08F243C2:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F243C3
gUnknown_08F243C3:
    JAPANESE_TEXT(" こいつの スマッシュヒットには{BREAK} ようちゅうい。\0")
    ENGLISH_TEXT("Watch out for this guy's SMAAAASH hits!\0")

    .global gUnknown_08F243DD
gUnknown_08F243DD:
    JAPANESE_TEXT(" しつこい ふいうちに きをつけろ。\0")
    ENGLISH_TEXT("Watch out for this guy's constant sneak attacks!\0")

    .global gUnknown_08F243F0
gUnknown_08F243F0:
    JAPANESE_TEXT(" もちものは だいじょうぶ?{BREAK} こいつは どろぼうなのだ。\0")
    ENGLISH_TEXT("Watch your items! This guy is a thief...\0")

    .global gUnknown_08F2440E
gUnknown_08F2440E:
    JAPANESE_TEXT(" どくは もっていないはず。{BREAK} たぶん……\0")
    ENGLISH_TEXT("It isn't poisonous.{BREAK}Hopefully, anyway...\0")

    .global gUnknown_08F24424
gUnknown_08F24424:
    JAPANESE_TEXT(" わらうものが さいごに かつ。\0")
    ENGLISH_TEXT("He who laughs last laughs best.\0")

    .global gUnknown_08F24435
gUnknown_08F24435:
    JAPANESE_TEXT(" こいつは ペットの ねことは{BREAK} おおちがい。\0")
    ENGLISH_TEXT("This animal is quite a bit different from your ordinary pet cat.\0")

    .global gUnknown_08F2444D
gUnknown_08F2444D:
    JAPANESE_TEXT(" さっちゅうざいで やっつけろ-。\0")
    ENGLISH_TEXT("Kill it with bug spray!\0")

    .global gUnknown_08F2445F
gUnknown_08F2445F:
    JAPANESE_TEXT(" は---っくしょん!!\0")
    ENGLISH_TEXT("Aaaachoo!!\0")

    .global gUnknown_08F2446C
gUnknown_08F2446C:
    JAPANESE_TEXT(" さっちゅうざいが よくきくぞ。\0")
    ENGLISH_TEXT("Bug spray works wonders on it!\0")

    .global gUnknown_08F2447D
gUnknown_08F2447D:
    JAPANESE_TEXT(" さっちゅうざいを ためしてみる?\0")
    ENGLISH_TEXT("Why not try using bug spray on it?\0")

    .global gUnknown_08F2448F
gUnknown_08F2448F:
    JAPANESE_TEXT(" どくが あるが さっちゅうざいで{BREAK} やっつけることが できるのだ。\0")
    ENGLISH_TEXT("It's poisonous, but you can kill it with bug spray.\0")

    .global gUnknown_08F244B2
gUnknown_08F244B2:
    JAPANESE_TEXT(" しばられないように しなければ。\0")
    ENGLISH_TEXT("Try not to get tied up.\0")

    .global gUnknown_08F244C4
gUnknown_08F244C4:
    JAPANESE_TEXT(" マンガから とびだして きたような{BREAK} やつだな。\0")
    ENGLISH_TEXT("It's almost like this guy escaped from a comic book or something.\0")

    .global gUnknown_08F244DE
gUnknown_08F244DE:
    JAPANESE_TEXT(" こいつの かおは いちばん{BREAK} かくのが かんたんです。\0")
    ENGLISH_TEXT("This guy's face is the easiest to draw.\0")

    .global gUnknown_08F244FB
gUnknown_08F244FB:
    JAPANESE_TEXT(" もし こいつが マスクを したら{BREAK} だれかと くべつが つかないな。\0")
    ENGLISH_TEXT("If this guy put a mask on, it'd be impossible to tell who he is.\0")

    .global gUnknown_08F2451F
gUnknown_08F2451F:
    JAPANESE_TEXT(" わりと へいぼんな おばけです。\0")
    ENGLISH_TEXT("A rather run-of-the-mill ghost.\0")

    .global gUnknown_08F24531
gUnknown_08F24531:
    JAPANESE_TEXT(" しょくじの おさらと おなじくらいの{BREAK} おおきさなのだが。\0")
    ENGLISH_TEXT("It's about as big as a dinner plate...\0")

    .global gUnknown_08F24550
gUnknown_08F24550:
    JAPANESE_TEXT(" かれにとって じんせいとは{BREAK} パズルのような ものらしい。\0")
    ENGLISH_TEXT("Apparently, life is like a puzzle to him.\0")

    .global gUnknown_08F2456F
gUnknown_08F2456F:
    JAPANESE_TEXT(" まだ ちいさいが あきらかに{BREAK} うちゅうじんだ。\0")
    ENGLISH_TEXT("It may be small, but it's clearly an alien.\0")

    .global gUnknown_08F24589
gUnknown_08F24589:
    JAPANESE_TEXT(" はなを つまめ!\0")
    ENGLISH_TEXT("Hold your nose!\0")

    .global gUnknown_08F24593
gUnknown_08F24593:
    JAPANESE_TEXT(" みためも こわいが{BREAK} さいごのいちげきは もっとこわい。\0")
    ENGLISH_TEXT("It looks scary on the outside, but its final attack is even scarier.\0")

    .global gUnknown_08F245B1
gUnknown_08F245B1:
    JAPANESE_TEXT(" しっぽの ながい おおきな ねずみ。\0")
    ENGLISH_TEXT("A big rat with a long tail.\0")

    .global gUnknown_08F245C5
gUnknown_08F245C5:
    JAPANESE_TEXT(" たまごみたいだが もっと かたいぞ。\0")
    ENGLISH_TEXT("It looks like an egg but is harder than one.\0")

    .global gUnknown_08F245D9
gUnknown_08F245D9:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F245DA
gUnknown_08F245DA:
    JAPANESE_TEXT(" はいごから きみを にらんでいる。\0")
    ENGLISH_TEXT("It glares at you from afar...\0")

    .global gUnknown_08F245ED
gUnknown_08F245ED:
    JAPANESE_TEXT(" くうちゅうを とびまわっている!\0")
    ENGLISH_TEXT("It's flying all around!\0")

    .global gUnknown_08F245FF
gUnknown_08F245FF:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24600
gUnknown_08F24600:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24601
gUnknown_08F24601:
    JAPANESE_TEXT(" けんきゅうじょで きょうりょくな{BREAK} どくを さずけられた らしい。\0")
    ENGLISH_TEXT("It was apparently given a powerful poison at a lab somewhere.\0")

    .global gUnknown_08F24624
gUnknown_08F24624:
    JAPANESE_TEXT(" どくと いしに きをつけろ。\0")
    ENGLISH_TEXT("Watch out for its poison and petrifying attacks!\0")

    .global gUnknown_08F24634
gUnknown_08F24634:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24635
gUnknown_08F24635:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24636
gUnknown_08F24636:
    JAPANESE_TEXT(" にがすな。けいけんちを かせげるぞ。\0")
    ENGLISH_TEXT("Don't let it get away! It's a good source of experience points!\0")

    .global gUnknown_08F2464A
gUnknown_08F2464A:
    JAPANESE_TEXT(" ともだちが ひとりも いないらしい。\0")
    ENGLISH_TEXT("It apparently doesn't have any friends at all.\0")

    .global gUnknown_08F2465E
gUnknown_08F2465E:
    JAPANESE_TEXT(" じぶんの いすが こわれて{BREAK} きげんが すこぶる よくない!\0")
    ENGLISH_TEXT("@Its chair broke and now it's in a REALLY bad mood!\0")

    .global gUnknown_08F2467E
gUnknown_08F2467E:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2467F
gUnknown_08F2467F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24680
gUnknown_08F24680:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24681
gUnknown_08F24681:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24682
gUnknown_08F24682:
    JAPANESE_TEXT(" どくけしは どこかに あるのか?\0")
    ENGLISH_TEXT("Happen to have any Antidotes handy?\0")

    .global gUnknown_08F24694
gUnknown_08F24694:
    JAPANESE_TEXT(" どく ドク どぉくぅぅ-。\0")
    ENGLISH_TEXT("Poison Pois on Poi Sonnnn\0")

    .global gUnknown_08F246A3
gUnknown_08F246A3:
    JAPANESE_TEXT(" ワニに わらいかえしたり するなよ。\0")
    ENGLISH_TEXT("Don't smile back at this alligator.\0")

    .global gUnknown_08F246B7
gUnknown_08F246B7:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F246B8
gUnknown_08F246B8:
    JAPANESE_TEXT(" じつの ちちおや でさえ{BREAK} おそれる つらがまえ。\0")
    ENGLISH_TEXT("Even this thing's own father is scared of its face.\0")

    .global gUnknown_08F246D3
gUnknown_08F246D3:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F246D4
gUnknown_08F246D4:
    JAPANESE_TEXT(" いしに されないよう ちゅうい。\0")
    ENGLISH_TEXT("Be careful not to get petrified...\0")

    .global gUnknown_08F246E6
gUnknown_08F246E6:
    JAPANESE_TEXT(" ノミが いるんじゃ ないだろうか。\0")
    ENGLISH_TEXT("This thing better not have fleas...\0")

    .global gUnknown_08F246F9
gUnknown_08F246F9:
    JAPANESE_TEXT(" くるまには さいみんじゅつは{BREAK} きかないでしょう。\0")
    ENGLISH_TEXT("Hypnosis probably doesn't work on cars, does it?\0")

    .global gUnknown_08F24714
gUnknown_08F24714:
    JAPANESE_TEXT(" トラックには さいみんじゅつは{BREAK} きかないでしょう。\0")
    ENGLISH_TEXT("Hypnosis probably doesn't work on trucks, does it?\0")

    .global gUnknown_08F24730
gUnknown_08F24730:
    JAPANESE_TEXT(" つぎは どうくる?{BREAK} まっすぐか? ジグザグか?\0")
    ENGLISH_TEXT("How will it come at you next?! Straight-on, or in a zig-zag?!\0")

    .global gUnknown_08F2474A
gUnknown_08F2474A:
    JAPANESE_TEXT(" おどろくと なかまを よぶぞ!\0")
    ENGLISH_TEXT("Watch out, it'll call for friends if it's alarmed!\0")

    .global gUnknown_08F2475B
gUnknown_08F2475B:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2475C
gUnknown_08F2475C:
    JAPANESE_TEXT(" めいしゃさんの おきにいり。\0")
    ENGLISH_TEXT("The favorite of optometrists everywhere.\0")

    .global gUnknown_08F2476C
gUnknown_08F2476C:
    JAPANESE_TEXT(" きをぬくな。{BREAK} パパは どこでも みているぞ。\0")
    ENGLISH_TEXT("Don't let your guard down. This daddy is always watching you...\0")

    .global gUnknown_08F24785
gUnknown_08F24785:
    JAPANESE_TEXT(" ママは なんでも おみとおし!\0")
    ENGLISH_TEXT("This mommy can see through all your tricks!\0")

    .global gUnknown_08F24796
gUnknown_08F24796:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24797
gUnknown_08F24797:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24798
gUnknown_08F24798:
    JAPANESE_TEXT(" なかまの ためなら!\0")
    ENGLISH_TEXT("This thing will do anything for its friends!\0")

    .global gUnknown_08F247A4
gUnknown_08F247A4:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F247A5
gUnknown_08F247A5:
    JAPANESE_TEXT(" PKビ-ムしか してこないのだが…\0")
    ENGLISH_TEXT("He only seems to use PK Beam...\0")

    .global gUnknown_08F247B8
gUnknown_08F247B8:
    JAPANESE_TEXT(" おにの ように つよい。\0")
    ENGLISH_TEXT("This thing is devilishly strong.\0")

    .global gUnknown_08F247C6
gUnknown_08F247C6:
    JAPANESE_TEXT(" オンボロに みえても{BREAK} あなどっては いけない。\0")
    ENGLISH_TEXT("It may look like a hunk of junk, but don't underestimate it!\0")

    .global gUnknown_08F247E0
gUnknown_08F247E0:
    JAPANESE_TEXT(" さいしんがた りょうさんロボット。\0")
    ENGLISH_TEXT("A cutting-edge, mass-produced robot.\0")

    .global gUnknown_08F247F3
gUnknown_08F247F3:
    JAPANESE_TEXT(" マンホ-ルの ふたと おなじくらいの{BREAK} おおきさなのだが。\0")
    ENGLISH_TEXT("It's about as big as a manhole cover...\0")

    .global gUnknown_08F24812
gUnknown_08F24812:
    JAPANESE_TEXT(" この うつくしさに だまされるな。\0")
    ENGLISH_TEXT("Don't let her beauty fool you...\0")

    .global gUnknown_08F24825
gUnknown_08F24825:
    JAPANESE_TEXT(" ボムを もっていて よく つかう。\0")
    ENGLISH_TEXT("It carries bombs... and often uses them.\0")

    .global gUnknown_08F24838
gUnknown_08F24838:
    JAPANESE_TEXT(" からだのなかに ねんりょうを{BREAK} たいりょうに たくわえている。\0")
    ENGLISH_TEXT("This robot has large amounts of fuel stored inside its body.\0")

    .global gUnknown_08F24859
gUnknown_08F24859:
    JAPANESE_TEXT(" きょうりょくな PSIこうげきを{BREAK} ためらうことなく はなってくるぞ。\0")
    ENGLISH_TEXT("Watch out! She won't hesitate to use powerful PSI attacks!\0")

    .global gUnknown_08F2487E
gUnknown_08F2487E:
    JAPANESE_TEXT(" かれの しめいは だれにも{BREAK} ほらあなを ぬけさせないことだ。\0")
    ENGLISH_TEXT("His mission is to keep anyone from getting through the caves...\0")

    .global gUnknown_08F2489F
gUnknown_08F2489F:
    JAPANESE_TEXT(" PKフリ-ズを このんで つかう。\0")
    ENGLISH_TEXT("Prefers to use PK Freeze.\0")

    .global gUnknown_08F248B2
gUnknown_08F248B2:
    JAPANESE_TEXT(" こいつを たおせたら えらい。\0")
    ENGLISH_TEXT("If you can beat this thing, you're incredible.\0")

    .global gUnknown_08F248C3
gUnknown_08F248C3:
    JAPANESE_TEXT(" PSIを つかうだけではなく{BREAK} どろぼうも するそ!\0")
    ENGLISH_TEXT("It doesn't just use PSI - it also likes to steal things!\0")

    .global gUnknown_08F248DF
gUnknown_08F248DF:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F248E0
gUnknown_08F248E0:
    JAPANESE_TEXT(" ブレインショックに きをつけろ。\0")
    ENGLISH_TEXT("Watch out for its Brainshock attacks!\0")

    .global gUnknown_08F248F2
gUnknown_08F248F2:
    JAPANESE_TEXT(" いきなり すでで なぐりかかってくる{BREAK} らんぼうな やつ。\0")
    ENGLISH_TEXT("A violent guy who comes out swinging the first chance he gets.\0")

    .global gUnknown_08F24911
gUnknown_08F24911:
    JAPANESE_TEXT(" うつくしい ぎんいろの けがわが{BREAK} きらめき かがやいている。\0")
    ENGLISH_TEXT("Its beautiful silver coat glistens in the light.\0")

    .global gUnknown_08F24932
gUnknown_08F24932:
    JAPANESE_TEXT(" なんて おおきいんだ!\0")
    ENGLISH_TEXT("This thing is HUGE!\0")

    .global gUnknown_08F2493F
gUnknown_08F2493F:
    JAPANESE_TEXT(" どんなに ねむくても{BREAK} こいつの ベッドでは ねるなよ!\0")
    ENGLISH_TEXT("Don't ever sleep in this guy's bed, no matter how tired you are!\0")

    .global gUnknown_08F2495D
gUnknown_08F2495D:
    JAPANESE_TEXT(" あらたに かいりょうされ{BREAK} さらに つよく なっている。\0")
    ENGLISH_TEXT("This robot has been remodeled to be even stronger now!\0")

    .global gUnknown_08F2497B
gUnknown_08F2497B:
    JAPANESE_TEXT(" もっとも つよい スタ-マン。\0")
    ENGLISH_TEXT("The strongest Starman of all.\0")

    .global gUnknown_08F2498C
gUnknown_08F2498C:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2498D
gUnknown_08F2498D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2498E
gUnknown_08F2498E:
    JAPANESE_TEXT("”でかぶくろ”{BREAK}◆マジックハ-ブが いっぱい つまった{BREAK}ふくろ です。{BREAK}\0")
    ENGLISH_TEXT("…Big Bag”{BREAK}@A bag filled with lots of{BREAK}Magic Herbs.\0")

    .global gUnknown_08F249B3
gUnknown_08F249B3:
    JAPANESE_TEXT("”テレホンカ-ド”{BREAK}◆こうしゅうでんわを 50かい{BREAK}かけることが できます。{BREAK}\0")
    ENGLISH_TEXT("…Phone Card”{BREAK}@You can make 50 calls on{BREAK}public phones with this.\0")

    .global gUnknown_08F249DB
gUnknown_08F249DB:
    JAPANESE_TEXT("”パンくず”{BREAK}◆パンくずを まきはじめた ところまで{BREAK}まよわずに もどれます。{BREAK}\0")
    ENGLISH_TEXT("…Bread Crumbs”{BREAK}@With these, you can return{BREAK}to the exact spot where you{BREAK}began spreading crumbs.\0")

    .global gUnknown_08F24A04
gUnknown_08F24A04:
    JAPANESE_TEXT("”まよけのゆびわ”{BREAK}◆よわい てきを しばらくのあいだ{BREAK}とおざけることが できます。{BREAK}\0")
    ENGLISH_TEXT("…Repel Ring”{BREAK}@When used, this item will{BREAK}ward off weak enemies for a{BREAK}short while.\0")

    .global gUnknown_08F24A30
gUnknown_08F24A30:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24A31
gUnknown_08F24A31:
    JAPANESE_TEXT("”メモリ-チップ”{BREAK}◆そうそふジョ-ジの きおくのいちぶが{BREAK}やきつけられています。{BREAK}{WAIT}◆{0x03}{0x10}は それをたどって{BREAK}イヴのところまで もどれます。{BREAK}\0")
    ENGLISH_TEXT("…Memory Chip”{BREAK}@Part of Great Grandfather{BREAK}George's memory is stored{BREAK}on this.{BREAK}{WAIT}@{0x03}{0x10} can use it to return{BREAK}to EVE's location.\0")

    .global gUnknown_08F24A7B
gUnknown_08F24A7B:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24A7C
gUnknown_08F24A7C:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24A7D
gUnknown_08F24A7D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24A7E
gUnknown_08F24A7E:
    JAPANESE_TEXT("”ナイフ”{BREAK}◆{0x03}{0x13}が{BREAK}つかいこなす ぶき。{BREAK}\0")
    ENGLISH_TEXT("…Knife”{BREAK}@A weapon that {0x03}{0x13} can{BREAK}skillfully use.\0")

    .global gUnknown_08F24A95
gUnknown_08F24A95:
    JAPANESE_TEXT("”サバイバルナイフ”{BREAK}◆{0x03}{0x13}の ぶき。{BREAK}ただのナイフより つよそうです。{BREAK}\0")
    ENGLISH_TEXT("…Survival Knife”{BREAK}@A weapon for {0x03}{0x13}.{BREAK}It looks stronger than a{BREAK}regular knife.\0")

    .global gUnknown_08F24ABB
gUnknown_08F24ABB:
    JAPANESE_TEXT("”アシガルソ-ド”{BREAK}◆かぎられた ひとにしか{BREAK}つかいこなせないでしょう。{BREAK}\0")
    ENGLISH_TEXT("…Basic Sword”{BREAK}@Probably only a select few{BREAK}can master using this.\0")

    .global gUnknown_08F24AE1
gUnknown_08F24AE1:
    JAPANESE_TEXT("”KATANA”{BREAK}◆この にほんせいの カタナは{BREAK}{0x03}{0x13}が つかえる{BREAK}{WAIT}◆いちばん つよい ぶきです。{BREAK}\0")
    ENGLISH_TEXT("…Katana”{BREAK}@{0x03}{0x13} can use this{BREAK}Japanese sword.{BREAK}{WAIT}@It's the strongest weapon{BREAK}of all.\0")

    .global gUnknown_08F24B16
gUnknown_08F24B16:
    JAPANESE_TEXT("”ショックガン”{BREAK}◆{0x03}{0x11}が つかえそうです。{BREAK}\0")
    ENGLISH_TEXT("…Stun Gun”{BREAK}@{0x03}{0x11} can probably use{BREAK}this.\0")

    .global gUnknown_08F24B2E
gUnknown_08F24B2E:
    JAPANESE_TEXT("”エアガン”{BREAK}◆とても つよい ぶきですが{BREAK}{0x03}{0x11}しか つかえません。{BREAK}\0")
    ENGLISH_TEXT("…Toy Air Gun”{BREAK}@This is a very strong{BREAK}weapon, but only {0x03}{0x11} can{BREAK}use it.\0")

    .global gUnknown_08F24B52
gUnknown_08F24B52:
    JAPANESE_TEXT("”ボロのバット”{BREAK}◆{0x03}{0x10}、これを ぶきとして{BREAK}つかってみよう!{BREAK}\0")
    ENGLISH_TEXT("…Cracked Bat”{BREAK}@{0x03}{0x10}! Try using this as a{BREAK}weapon!\0")

    .global gUnknown_08F24B73
gUnknown_08F24B73:
    JAPANESE_TEXT("”ふつうのバット”{BREAK}◆{0x03}{0x10}、よわい てきなら{BREAK}これで だいじょうぶ。{BREAK}\0")
    ENGLISH_TEXT("…Teeball Bat”{BREAK}@This should work well{BREAK}against weak enemies,{BREAK}{0x03}{0x10}.\0")

    .global gUnknown_08F24B97
gUnknown_08F24B97:
    JAPANESE_TEXT("”いいバット”{BREAK}◆{0x03}{0x10}が これをもてば{BREAK}つよい てきとも たたかえます。{BREAK}\0")
    ENGLISH_TEXT("…Sandlot Bat”{BREAK}@With this, {0x03}{0x10} can fight{BREAK}against strong enemies.\0")

    .global gUnknown_08F24BBD
gUnknown_08F24BBD:
    JAPANESE_TEXT("”さいこうのバット”{BREAK}◆ゆうめいせんしゅの サインいりの{BREAK}すばらしい バット。{BREAK}\0")
    ENGLISH_TEXT("…Hall of Fame Bat”{BREAK}@A spectacular bat with a{BREAK}famous athlete's autograph{BREAK}on it.\0")

    .global gUnknown_08F24BE6
gUnknown_08F24BE6:
    JAPANESE_TEXT("”フライパン”{BREAK}◆{0x03}{0x12}が ぶきとして{BREAK}つかいます。{BREAK}\0")
    ENGLISH_TEXT("…Frypan”{BREAK}@{0x03}{0x12} can use this as a{BREAK}weapon.\0")

    .global gUnknown_08F24C01
gUnknown_08F24C01:
    JAPANESE_TEXT("”いいフライパン”{BREAK}◆りょうりが こげつかない{BREAK}フライパン ですが{BREAK}{WAIT}◆{0x03}{0x12}の ぶきにも{BREAK}なります。{BREAK}\0")
    ENGLISH_TEXT("…Deluxe Frypan”{BREAK}@This frypan doesn't burn{BREAK}food,{BREAK}{WAIT}and {0x03}{0x12} can also use it{BREAK}as a weapon.\0")

    .global gUnknown_08F24C36
gUnknown_08F24C36:
    JAPANESE_TEXT("”とびきりのフライパン”{BREAK}◆この おもいフライパンで{BREAK}{0x03}{0x12}に たたかれたら{BREAK}{WAIT}◆つよい てきも たまらない。{BREAK}\0")
    ENGLISH_TEXT("…Best Frypan”{BREAK}{WAIT}@Not even tough baddies can{BREAK}withstand a hit from this{BREAK}heavy frypan.\0")

    .global gUnknown_08F24C6F
gUnknown_08F24C6F:
    JAPANESE_TEXT("”スリングショット”{BREAK}◆だれでも つかえる おてがるな{BREAK}ぶきです。{BREAK}\0")
    ENGLISH_TEXT("…Slingshot”{BREAK}@A simple weapon that anyone{BREAK}can use.\0")

    .global gUnknown_08F24C92
gUnknown_08F24C92:
    JAPANESE_TEXT("”ブ-メラン”{BREAK}◆とりあつかい ちゅうい。{BREAK}おもちゃでは ありません。{BREAK}みんなが つかえる ぶきです。{BREAK}\0")
    ENGLISH_TEXT("…Boomerang”{BREAK}@Handle with care. This is{BREAK}not a toy.{BREAK}{WAIT}Anyone can use this weapon.\0")

    .global gUnknown_08F24CC7
gUnknown_08F24CC7:
    JAPANESE_TEXT("”さっちゅうスプレ-”{BREAK}◆むしなどに あるていど こうかあり。{BREAK}\0")
    ENGLISH_TEXT("…Bug Spray”{BREAK}@Somewhat effective on{BREAK}insects and such.\0")

    .global gUnknown_08F24CE8
gUnknown_08F24CE8:
    JAPANESE_TEXT("”ス-パ-スプレ-”{BREAK}◆しんかいはつの きょうりょくな{BREAK}さっちゅうざい。{BREAK}\0")
    ENGLISH_TEXT("…Super Spray”{BREAK}@A new and powerful bug{BREAK}spray.\0")

    .global gUnknown_08F24D0E
gUnknown_08F24D0E:
    JAPANESE_TEXT("”ノミとシラミ”{BREAK}◆てきに なげつけて{BREAK}こうかを みてみよう!{BREAK}\0")
    ENGLISH_TEXT("…Flea Bomb”{BREAK}@Filled with fleas and lice.{BREAK}Throw it at the enemy and{BREAK}see what happens!\0")

    .global gUnknown_08F24D2F
gUnknown_08F24D2F:
    JAPANESE_TEXT("”あいのことば”{BREAK}◆???{BREAK}\0")
    ENGLISH_TEXT("…Love Words”{BREAK}@???\0")

    .global gUnknown_08F24D3E
gUnknown_08F24D3E:
    JAPANESE_TEXT("”のろいのことば”{BREAK}◆???{BREAK}\0")
    ENGLISH_TEXT("…Curse Words”{BREAK}@???\0")

    .global gUnknown_08F24D4E
gUnknown_08F24D4E:
    JAPANESE_TEXT("”ねばねばマシン”{BREAK}◆たたかいに つかえそうな{BREAK}きも するけれど……{BREAK}\0")
    ENGLISH_TEXT("…Slime Generator”{BREAK}@It SEEMS like it could be{BREAK}useful in battle, but...\0")

    .global gUnknown_08F24D72
gUnknown_08F24D72:
    JAPANESE_TEXT("”やみのライト”{BREAK}◆あかるいライトとは せいはんたいの{BREAK}ものです。{BREAK}\0")
    ENGLISH_TEXT("…Flashdark”{BREAK}@This is the exact opposite{BREAK}of a flashlight.\0")

    .global gUnknown_08F24D95
gUnknown_08F24D95:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24D96
gUnknown_08F24D96:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24D97
gUnknown_08F24D97:
    JAPANESE_TEXT("”かえんほうしゃき”{BREAK}◆てきを こんがり やきますが{BREAK}{0x03}{0x11}しか つかえません。{BREAK}\0")
    ENGLISH_TEXT("…Flamethrower”{BREAK}@Burns enemies to a crisp,{BREAK}but only {0x03}{0x11} can use it.\0")

    .global gUnknown_08F24DC0
gUnknown_08F24DC0:
    JAPANESE_TEXT("”ボム”{BREAK}◆たぶん {0x03}{0x11}にしか{BREAK}あつかえないでしょう。{BREAK}\0")
    ENGLISH_TEXT("…Bomb”{BREAK}@Probably only {0x03}{0x11} can{BREAK}use this.\0")

    .global gUnknown_08F24DDD
gUnknown_08F24DDD:
    JAPANESE_TEXT("”ス-パ-ボム”{BREAK}◆「きけん ばくはつぶつ」と{BREAK}かかれています。{BREAK}{WAIT}◆このての ものは{BREAK}{0x03}{0x11}に おまかせ。{BREAK}\0")
    ENGLISH_TEXT("…Super Bomb”{BREAK}@…Danger! Explosive!” is{BREAK}written on it.{BREAK}{WAIT}@Leave this in {0x03}{0x11}'s{BREAK}hands.\0")

    .global gUnknown_08F24E15
gUnknown_08F24E15:
    JAPANESE_TEXT("”レ-ザ-ビ-ム”{BREAK}◆よわむし{0x03}{0x11}も{BREAK}これを もったら……{BREAK}\0")
    ENGLISH_TEXT("…Laser Beam”{BREAK}@If that weakling {0x03}{0x11}{BREAK}were to wield this...\0")

    .global gUnknown_08F24E34
gUnknown_08F24E34:
    JAPANESE_TEXT("”デスビ-ム”{BREAK}◆いくじなし{0x03}{0x11}も{BREAK}これを もったら ちょっとすごい。{BREAK}\0")
    ENGLISH_TEXT("…Death Beam”{BREAK}@If that cowardly {0x03}{0x11}{BREAK}were to wield this, he'd{BREAK}really be something.\0")

    .global gUnknown_08F24E59
gUnknown_08F24E59:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24E5A
gUnknown_08F24E5A:
    JAPANESE_TEXT("”ロ-プ”{BREAK}◆これで てきを しばってしまおう。{BREAK}\0")
    ENGLISH_TEXT("…Rope”{BREAK}@Use this to tie up the{BREAK}enemy.\0")

    .global gUnknown_08F24E74
gUnknown_08F24E74:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24E75
gUnknown_08F24E75:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24E76
gUnknown_08F24E76:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24E77
gUnknown_08F24E77:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F24E78
gUnknown_08F24E78:
    JAPANESE_TEXT("”やすらぎのコイン”{BREAK}◆そうびすると ディフェンスが{BREAK}すこし あがります。{BREAK}\0")
    ENGLISH_TEXT("…Peace Coin”{BREAK}@Raises your Defense{BREAK}slightly when equipped.\0")

    .global gUnknown_08F24E9F
gUnknown_08F24E9F:
    JAPANESE_TEXT("”まもりのコイン”{BREAK}◆そうびすると ディフェンスが{BREAK}まあまあ あがります。{BREAK}\0")
    ENGLISH_TEXT("…Protect Coin”{BREAK}@Raises your Defense{BREAK}somewhat when equipped.\0")

    .global gUnknown_08F24EC6
gUnknown_08F24EC6:
    JAPANESE_TEXT("”まふうじのコイン”{BREAK}◆そうびすると ディフェンスが{BREAK}けっこう あがります。{BREAK}\0")
    ENGLISH_TEXT("…Magic Coin”{BREAK}@Raises your Defense quite a{BREAK}bit when equipped.\0")

    .global gUnknown_08F24EEE
gUnknown_08F24EEE:
    JAPANESE_TEXT("”ようせいのうでわ”{BREAK}◆そうびすると ディフェンスが{BREAK}ちょっと あがります。{BREAK}\0")
    ENGLISH_TEXT("…Fairy Bracelet”{BREAK}@Raises your Defense a tiny{BREAK}bit when equipped.\0")

    .global gUnknown_08F24F16
gUnknown_08F24F16:
    JAPANESE_TEXT("”てんしのうでわ”{BREAK}◆そうびすると ディフェンスが{BREAK}そこそこ あがります。{BREAK}\0")
    ENGLISH_TEXT("…Angel Bracelet”{BREAK}@Raises your Defense a nice{BREAK}amount when equipped.\0")

    .global gUnknown_08F24F3D
gUnknown_08F24F3D:
    JAPANESE_TEXT("”めがみのうでわ”{BREAK}◆そうびすると ディフェンスが{BREAK}ずいぶん あがります。{BREAK}\0")
    ENGLISH_TEXT("…Goddess Bracelet”{BREAK}@Raises your Defense a whole{BREAK}lot when equipped.\0")

    .global gUnknown_08F24F64
gUnknown_08F24F64:
    JAPANESE_TEXT("”しずくのペンダント”{BREAK}◆そうびすると PKファイア-による{BREAK}ダメ-ジを へらすことが できます。{BREAK}\0")
    ENGLISH_TEXT("…Rain Pendant”{BREAK}@Reduces damage from PK Fire{BREAK}when equipped.\0")

    .global gUnknown_08F24F97
gUnknown_08F24F97:
    JAPANESE_TEXT("”ほのおのペンダント”{BREAK}◆そうびすると PKフリ-ズによる{BREAK}ダメ-ジを へらすことが できます。{BREAK}\0")
    ENGLISH_TEXT("…Flame Pendant”{BREAK}@Reduces damage from{BREAK}PK Freeze when equipped.\0")

    .global gUnknown_08F24FC9
gUnknown_08F24FC9:
    JAPANESE_TEXT("”だいちのペンダント”{BREAK}◆そうびすると PKサンダ-による{BREAK}ダメ-ジを へらすことが できます。{BREAK}\0")
    ENGLISH_TEXT("…Earth Pendant”{BREAK}@Reduces damage from{BREAK}PK Thunder when equipped.\0")

    .global gUnknown_08F24FFB
gUnknown_08F24FFB:
    JAPANESE_TEXT("”うみのペンダント”{BREAK}◆そうびすると PKファイア-、{BREAK}PKフリ-ズ、PKサンダ-による{BREAK}{WAIT}ダメ-ジを へらすことが できます。{BREAK}\0")
    ENGLISH_TEXT("…Sea Pendant”{BREAK}@Reduces damage from{BREAK}PK Fire, PK Freeze, and{BREAK}PK Thunder when equipped.\0")

    .global gUnknown_08F2503E
gUnknown_08F2503E:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("…Easy Ring”{BREAK}@Equip this ring to increase{BREAK}EXP and money from enemies{BREAK}and reduce random battles.\0")

    .global gUnknown_08F2503F
gUnknown_08F2503F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25040
gUnknown_08F25040:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25041
gUnknown_08F25041:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25042
gUnknown_08F25042:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25043
gUnknown_08F25043:
    JAPANESE_TEXT("”オレンジジュ-ス”{BREAK}◆ビタミンCが ほうふで{BREAK}HPが すこし かいふくします。{BREAK}\0")
    ENGLISH_TEXT("…Orange Juice”{BREAK}@Rich with Vitamin C.{BREAK}Restores a little HP.\0")

    .global gUnknown_08F2506D
gUnknown_08F2506D:
    JAPANESE_TEXT("”フライドポテト”{BREAK}◆ケチャップを つけても つけなくても{BREAK}HPは かいふくします。{BREAK}\0")
    ENGLISH_TEXT("…French Fries”{BREAK}@Restores HP with or without{BREAK}ketchup.\0")

    .global gUnknown_08F25099
gUnknown_08F25099:
    JAPANESE_TEXT("”マジックハ-ブ”{BREAK}◆つかれたり けがをしたときに{BREAK}つかってください。{BREAK}\0")
    ENGLISH_TEXT("…Magic Herb”{BREAK}@Please use this when you're{BREAK}exhausted or hurt.\0")

    .global gUnknown_08F250BE
gUnknown_08F250BE:
    JAPANESE_TEXT("”ハンバ-ガ-”{BREAK}◆てばやく HPを かいふくするための{BREAK}ファ-ストフ-ド です。{BREAK}\0")
    ENGLISH_TEXT("…Hamburger”{BREAK}@Fast food for restoring HP{BREAK}quickly.\0")

    .global gUnknown_08F250E9
gUnknown_08F250E9:
    JAPANESE_TEXT("”スポ-ツドリンク”{BREAK}◆どんなに つかれたときでも{BREAK}これを のんで げんきに なろう。{BREAK}\0")
    ENGLISH_TEXT("…Sports Drink”{BREAK}@Drink this to feel{BREAK}refreshed, no matter how{BREAK}exhausted you are.\0")

    .global gUnknown_08F25116
gUnknown_08F25116:
    JAPANESE_TEXT("”きずぐすり”{BREAK}◆きずの てあてに つかいます。{BREAK}\0")
    ENGLISH_TEXT("…Medicine”{BREAK}@Use this to heal wounds.\0")

    .global gUnknown_08F25130
gUnknown_08F25130:
    JAPANESE_TEXT("”ぜんそくスプレ-”{BREAK}◆もしも {0x03}{0x10}の{BREAK}ぜんそくが でてしまったら{BREAK}{WAIT}◆これで なおします。{BREAK}\0")
    ENGLISH_TEXT("…Asthma Spray”{BREAK}@If {0x03}{0x10} starts to have an{BREAK}asthma attack, this will{BREAK}stop it.\0")

    .global gUnknown_08F25161
gUnknown_08F25161:
    JAPANESE_TEXT("”どくけし”{BREAK}◆どくを すばやく けしさります。{BREAK}\0")
    ENGLISH_TEXT("…Antidote”{BREAK}@Quickly counteracts poison.\0")

    .global gUnknown_08F2517B
gUnknown_08F2517B:
    JAPANESE_TEXT("”うがいぐすり”{BREAK}◆これで よく うがいをして{BREAK}かぜを なおそう。{BREAK}\0")
    ENGLISH_TEXT("…Mouthwash”{BREAK}@Gargle with this to get{BREAK}over a cold.\0")

    .global gUnknown_08F2519E
gUnknown_08F2519E:
    JAPANESE_TEXT("”いちごとうふ”{BREAK}◆ほんとうに たべてみたいと{BREAK}おもいますか?{BREAK}\0")
    ENGLISH_TEXT("…Strawberry Tofu”{BREAK}@Wouldn't you like to try{BREAK}some for real?\0")

    .global gUnknown_08F251BF
gUnknown_08F251BF:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F251C0
gUnknown_08F251C0:
    JAPANESE_TEXT("”パン”{BREAK}◆たべても いいけど{BREAK}もとの ばしょに もどれるように{BREAK}{WAIT}◆ちぎって まきながら すすむことも{BREAK}できます。{BREAK}\0")
    ENGLISH_TEXT("…Bread”{BREAK}@It's good to eat,{BREAK}{WAIT}but you can use its crumbs{BREAK}to mark a trail that you{BREAK}can retrace later.\0")

    .global gUnknown_08F251FD
gUnknown_08F251FD:
    JAPANESE_TEXT("”エンジェルシ-ド”{BREAK}◆デ-モンシ-ドの のろいを{BREAK}ときます。{BREAK}\0")
    ENGLISH_TEXT("…Angel Seed”{BREAK}@Lifts the curse of a Demon{BREAK}Seed.\0")

    .global gUnknown_08F2521E
gUnknown_08F2521E:
    JAPANESE_TEXT("”サイパワ-スト-ン”{BREAK}◆PSIパワ-が いしのなかに{BREAK}ひめられて います。{BREAK}\0")
    ENGLISH_TEXT("…PSI Power Stone”{BREAK}@PSI power is hidden inside{BREAK}this stone.\0")

    .global gUnknown_08F25246
gUnknown_08F25246:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25247
gUnknown_08F25247:
    JAPANESE_TEXT("”ふしぎなリボン”{BREAK}◆おんなのこの かみに むすぶと{BREAK}「フォ-ス」が ちょっと ふえます。{BREAK}\0")
    ENGLISH_TEXT("…Magic Ribbon”{BREAK}@Raises Force a little bit{BREAK}when tied into a girl's{BREAK}hair.\0")

    .global gUnknown_08F25276
gUnknown_08F25276:
    JAPANESE_TEXT("”ふしぎなキャンディ”{BREAK}◆よわいこが たべると{BREAK}「ファイト」が ちょっと ふえます。{BREAK}\0")
    ENGLISH_TEXT("…Magic Candy”{BREAK}@Raises Fight a little bit{BREAK}when a weakling eats it.\0")

    .global gUnknown_08F252A2
gUnknown_08F252A2:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F252A3
gUnknown_08F252A3:
    JAPANESE_TEXT("”スピ-ドカプセル”{BREAK}◆「スピ-ド」が アップします。{BREAK}\0")
    ENGLISH_TEXT("…Speed Capsule”{BREAK}@Raises Speed.\0")

    .global gUnknown_08F252C0
gUnknown_08F252C0:
    JAPANESE_TEXT("”ウィズダムカプセル”{BREAK}◆「かしこさ」が アップします。{BREAK}\0")
    ENGLISH_TEXT("…Wisdom Capsule”{BREAK}@Raises Wisdom.\0")

    .global gUnknown_08F252DE
gUnknown_08F252DE:
    JAPANESE_TEXT("”フィジカルカプセル”{BREAK}◆「たいりょく」が アップします。{BREAK}\0")
    ENGLISH_TEXT("…Strength Capsule”{BREAK}@Raises Strength.\0")

    .global gUnknown_08F252FD
gUnknown_08F252FD:
    JAPANESE_TEXT("”フォ-スカプセル”{BREAK}◆「フォ-ス」が アップします。{BREAK}\0")
    ENGLISH_TEXT("…Force Capsule”{BREAK}@Raises Force.\0")

    .global gUnknown_08F2531A
gUnknown_08F2531A:
    JAPANESE_TEXT("”ファイトカプセル”{BREAK}◆「ファイト」が アップします。{BREAK}\0")
    ENGLISH_TEXT("…Fight Capsule”{BREAK}@Raises Fight.\0")

    .global gUnknown_08F25337
gUnknown_08F25337:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25338
gUnknown_08F25338:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25339
gUnknown_08F25339:
    JAPANESE_TEXT("”ちかしつのカギ”{BREAK}◆ちかしつに はいるときに{BREAK}ひつようです。{BREAK}\0")
    ENGLISH_TEXT("…Basement Key”{BREAK}@Needed to enter the{BREAK}basement.\0")

    .global gUnknown_08F2535A
gUnknown_08F2535A:
    JAPANESE_TEXT("”どうぶつえんのカギ”{BREAK}◆これで どうぶつえんの せいもんを{BREAK}あけることが できるでしょう。{BREAK}\0")
    ENGLISH_TEXT("…Zoo Key”{BREAK}@This should open the front{BREAK}gate of the zoo.\0")

    .global gUnknown_08F2538A
gUnknown_08F2538A:
    JAPANESE_TEXT("”ゆうれいやしきのカギ”{BREAK}◆ロ-ズマリ-さんの やしきの{BREAK}かぎです。{BREAK}\0")
    ENGLISH_TEXT("…Haunted House Key”{BREAK}@The key to the Rosemarys'{BREAK}mansion.\0")

    .global gUnknown_08F253AE
gUnknown_08F253AE:
    JAPANESE_TEXT("”そうそふのにっき”{BREAK}◆{0x03}{0x10}の ひいおじいさんの{BREAK}にっきです。{BREAK}{WAIT}◆もじが びっしり かいてありますが{BREAK}いたみが はげしく よくよめません。{BREAK}\0")
    ENGLISH_TEXT("…Great-Grandfather's Diary”{BREAK}@The diary of {0x03}{0x10}'s{BREAK}great-grandfather.{BREAK}{WAIT}@It's filled with writing,{BREAK}but it's in such bad shape{BREAK}that it's mostly illegible.\0")

    .global gUnknown_08F253F7
gUnknown_08F253F7:
    JAPANESE_TEXT("”つうこうきょかしょう”{BREAK}◆「ダンカンこうじょう しゃいん」{BREAK}と かいてあります。{BREAK}\0")
    ENGLISH_TEXT("…Pass”{BREAK}@…Duncan Factory Employee”{BREAK}is written on it.\0")

    .global gUnknown_08F25422
gUnknown_08F25422:
    JAPANESE_TEXT("”ライブのチケット”{BREAK}◆「エブリデイ・オ-ルナイト・{BREAK}ロックンロ-ル・ライブ・ショ-」{BREAK}と かいてあります。{BREAK}\0")
    ENGLISH_TEXT("…Show Ticket”{BREAK}@…Every Day All Night{BREAK}Rock 'n' Roll Live Show”{BREAK}is written on it.\0")

    .global gUnknown_08F2545A
gUnknown_08F2545A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2545B
gUnknown_08F2545B:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2545C
gUnknown_08F2545C:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2545D
gUnknown_08F2545D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2545E
gUnknown_08F2545E:
    JAPANESE_TEXT("”カナリアのこども”{BREAK}◆さびしそうな めを しています。{BREAK}\0")
    ENGLISH_TEXT("…Baby Canary”{BREAK}@It has a lonely look in its{BREAK}eyes.\0")

    .global gUnknown_08F2547C
gUnknown_08F2547C:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2547D
gUnknown_08F2547D:
    JAPANESE_TEXT("”ペンシルロケット”{BREAK}◆{0x03}{0x11}なら{BREAK}つかいかたが わかるでしょう。{BREAK}\0")
    ENGLISH_TEXT("…Bottle Rocket”{BREAK}@{0x03}{0x11} should know how to{BREAK}use this.\0")

    .global gUnknown_08F2549F
gUnknown_08F2549F:
    JAPANESE_TEXT("”ぼうし”{BREAK}◆「{0x03}{0x12}」という なまえが{BREAK}ししゅうされた すてきな ぼうし。{BREAK}\0")
    ENGLISH_TEXT("…Hat”{BREAK}@A pretty hat with the name{BREAK}…{0x03}{0x12}” embroidered on it.\0")

    .global gUnknown_08F254C6
gUnknown_08F254C6:
    JAPANESE_TEXT("”いれば”{BREAK}◆しっかり はみがきして{BREAK}はを だいじに していれば{BREAK}{WAIT}◆ひつようのない ものですね。{BREAK}\0")
    ENGLISH_TEXT("…Dentures”{BREAK}@Unnecessary if you make{BREAK}sure to take care of your{BREAK}teeth and brush regularly.\0")

    .global gUnknown_08F254FA
gUnknown_08F254FA:
    JAPANESE_TEXT("”チケットのはんけん”{BREAK}◆「10まい あつめて せんしゃに{BREAK}のろう!」と かいてあります。{BREAK}\0")
    ENGLISH_TEXT("…Ticket Stub”{BREAK}@…Collect 10 ticket stubs{BREAK}for a tank ride!” is{BREAK}written on it.\0")

    .global gUnknown_08F25529
gUnknown_08F25529:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2552A
gUnknown_08F2552A:
    JAPANESE_TEXT("”きぼうのオカリナ”{BREAK}◆これまでに あつめた メロディ-を{BREAK}きくことが できます。{BREAK}\0")
    ENGLISH_TEXT("…Ocarina of Hope”{BREAK}@You can use this to hear{BREAK}the melodies you've{BREAK}collected so far.\0")

    .global gUnknown_08F25555
gUnknown_08F25555:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25556
gUnknown_08F25556:
    JAPANESE_TEXT("”フランクリンバッヂ”{BREAK}◆いいつたえに よると{BREAK}ベン・フランクリンという ひとが{BREAK}{WAIT}◆かみなりの じっけんを するとき{BREAK}おまもりに していた そうです。{BREAK}\0")
    ENGLISH_TEXT("…Franklin Badge”{BREAK}@It's said Ben Franklin wore{BREAK}this as protection during{BREAK}his lightning experiments.\0")

    .global gUnknown_08F255A5
gUnknown_08F255A5:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F255A6
gUnknown_08F255A6:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F255A7
gUnknown_08F255A7:
    JAPANESE_TEXT("”めのうのつりばり”{BREAK}◆どこにいても すぐ マジカントに{BREAK}もどることが できます。{BREAK}\0")
    ENGLISH_TEXT("…Onyx Hook”{BREAK}@You can return to Magicant{BREAK}from anywhere using this.\0")

    .global gUnknown_08F255D2
gUnknown_08F255D2:
    JAPANESE_TEXT("”さいしゅうへいき”{BREAK}◆???{BREAK}\0")
    ENGLISH_TEXT("…Ultimate Weapon”{BREAK}@???\0")

    .global gUnknown_08F255E3
gUnknown_08F255E3:
    JAPANESE_TEXT("”ものさし”{BREAK}◆12インチ(やく30センチ)の{BREAK}ながさの ものさしです。{BREAK}\0")
    ENGLISH_TEXT("…Ruler”{BREAK}@A 12-inch (approx. 30 cm){BREAK}ruler.\0")

    .global gUnknown_08F25609
gUnknown_08F25609:
    JAPANESE_TEXT("”キャッシュカ-ド”{BREAK}◆ぎんこうこうざから おかねを{BREAK}だしいれする ときに つかいます。{BREAK}\0")
    ENGLISH_TEXT("…ATM Card”{BREAK}@Use this to access your{BREAK}bank account and make{BREAK}deposits or withdrawals.\0")

    .global gUnknown_08F25637
gUnknown_08F25637:
    JAPANESE_TEXT("”あかいくさ”{BREAK}◆いっけん ただの くさの ように{BREAK}みえますが……{BREAK}\0")
    ENGLISH_TEXT("…Red Weed”{BREAK}@At first glance, it looks{BREAK}like an ordinary weed,{BREAK}but...\0")

    .global gUnknown_08F2565A
gUnknown_08F2565A:
    JAPANESE_TEXT("”ふしぎなメガホン”{BREAK}◆おおごえで てきを おどかします。{BREAK}\0")
    ENGLISH_TEXT("…Magic Megaphone”{BREAK}@Use this to scare enemies{BREAK}with your loud voice.\0")

    .global gUnknown_08F25679
gUnknown_08F25679:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2567A
gUnknown_08F2567A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2567B
gUnknown_08F2567B:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2567C
gUnknown_08F2567C:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2567D
gUnknown_08F2567D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2567E
gUnknown_08F2567E:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2567F
gUnknown_08F2567F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25680
gUnknown_08F25680:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25681
gUnknown_08F25681:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25682
gUnknown_08F25682:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25683
gUnknown_08F25683:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25684
gUnknown_08F25684:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25685
gUnknown_08F25685:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25686
gUnknown_08F25686:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25687
gUnknown_08F25687:
    JAPANESE_TEXT("”Debug”{BREAK}◆.......{BREAK}\0")
    ENGLISH_TEXT("”Debug”{BREAK}@.......{BREAK}\0")

    .global gUnknown_08F25699
gUnknown_08F25699:
    JAPANESE_TEXT("{0x03}{0x14}\0")
    ENGLISH_TEXT("{0x03}{0x14}\0")

    .global gUnknown_08F2569C
gUnknown_08F2569C:
    JAPANESE_TEXT("SHIGESATO ITOI\0")
    ENGLISH_TEXT("SHIGESATO ITOI\0")

    .global gUnknown_08F256AB
gUnknown_08F256AB:
    JAPANESE_TEXT("MIYUKI KURE\0")
    ENGLISH_TEXT("MIYUKI KURE\0")

    .global gUnknown_08F256B7
gUnknown_08F256B7:
    JAPANESE_TEXT("AKIO OHMORI\0")
    ENGLISH_TEXT("AKIO OHMORI\0")

    .global gUnknown_08F256C3
gUnknown_08F256C3:
    JAPANESE_TEXT("RITSUO KAMIMURA\0")
    ENGLISH_TEXT("RITSUO KAMIMURA\0")

    .global gUnknown_08F256D3
gUnknown_08F256D3:
    JAPANESE_TEXT("KEIICHI SUZUKI\0")
    ENGLISH_TEXT("KEIICHI SUZUKI\0")

    .global gUnknown_08F256E2
gUnknown_08F256E2:
    JAPANESE_TEXT("HIROKAZU TANAKA\0")
    ENGLISH_TEXT("HIROKAZU TANAKA\0")

    .global gUnknown_08F256F2
gUnknown_08F256F2:
    JAPANESE_TEXT("SHINBO MINAMI\0")
    ENGLISH_TEXT("SHINBO MINAMI\0")

    .global gUnknown_08F25700
gUnknown_08F25700:
    JAPANESE_TEXT("TATSUYA ISHII\0")
    ENGLISH_TEXT("TATSUYA ISHII\0")

    .global gUnknown_08F2570E
gUnknown_08F2570E:
    JAPANESE_TEXT("TOTTORI\0")
    ENGLISH_TEXT("TOTTORI\0")

    .global gUnknown_08F25716
gUnknown_08F25716:
    JAPANESE_TEXT("KAZUYA NAKATANI\0")
    ENGLISH_TEXT("KAZUYA NAKATANI\0")

    .global gUnknown_08F25726
gUnknown_08F25726:
    JAPANESE_TEXT("TAKAYUKI ONODERA\0")
    ENGLISH_TEXT("TAKAYUKI ONODERA\0")

    .global gUnknown_08F25737
gUnknown_08F25737:
    JAPANESE_TEXT("MOTOO YASUMA\0")
    ENGLISH_TEXT("MOTOO YASUMA\0")

    .global gUnknown_08F25744
gUnknown_08F25744:
    JAPANESE_TEXT("MASAYUKI KAMEYAMA\0")
    ENGLISH_TEXT("MASAYUKI KAMEYAMA\0")

    .global gUnknown_08F25756
gUnknown_08F25756:
    JAPANESE_TEXT("HIDEO KON\0")
    ENGLISH_TEXT("HIDEO KON\0")

    .global gUnknown_08F25760
gUnknown_08F25760:
    JAPANESE_TEXT("KATSUTOMO MAEIWA\0")
    ENGLISH_TEXT("KATSUTOMO MAEIWA\0")

    .global gUnknown_08F25771
gUnknown_08F25771:
    JAPANESE_TEXT("KUNIKO SAKURAI\0")
    ENGLISH_TEXT("KUNIKO SAKURAI\0")

    .global gUnknown_08F25780
gUnknown_08F25780:
    JAPANESE_TEXT("MASAHIRO TATEMOTO\0")
    ENGLISH_TEXT("MASAHIRO TATEMOTO\0")

    .global gUnknown_08F25792
gUnknown_08F25792:
    JAPANESE_TEXT("TAKASHI KAWAGUCHI\0")
    ENGLISH_TEXT("TAKASHI KAWAGUCHI\0")

    .global gUnknown_08F257A4
gUnknown_08F257A4:
    JAPANESE_TEXT("KEIZOH KATOH\0")
    ENGLISH_TEXT("KEIZOH KATOH\0")

    .global gUnknown_08F257B1
gUnknown_08F257B1:
    JAPANESE_TEXT("MOTOHIRO ISHII\0")
    ENGLISH_TEXT("MOTOHIRO ISHII\0")

    .global gUnknown_08F257C0
gUnknown_08F257C0:
    JAPANESE_TEXT("AKIHITO TODA\0")
    ENGLISH_TEXT("AKIHITO TODA\0")

    .global gUnknown_08F257CD
gUnknown_08F257CD:
    JAPANESE_TEXT("YUKARI SAITOH\0")
    ENGLISH_TEXT("YUKARI SAITOH\0")

    .global gUnknown_08F257DB
gUnknown_08F257DB:
    JAPANESE_TEXT("PHIL SANDHOP\0")
    ENGLISH_TEXT("PHIL SANDHOP\0")

    .global gUnknown_08F257E8
gUnknown_08F257E8:
    JAPANESE_TEXT("TOSHIKO WATSON\0")
    ENGLISH_TEXT("TOSHIKO WATSON\0")

    .global gUnknown_08F257F7
gUnknown_08F257F7:
    JAPANESE_TEXT("YUKA NAKATA\0")
    ENGLISH_TEXT("YUKA NAKATA\0")

    .global gUnknown_08F25803
gUnknown_08F25803:
    JAPANESE_TEXT("HIROKO FAULKNER\0")
    ENGLISH_TEXT("HIROKO FAULKNER\0")

    .global gUnknown_08F25813
gUnknown_08F25813:
    JAPANESE_TEXT("TONY HARMAN\0")
    ENGLISH_TEXT("TONY HARMAN\0")

    .global gUnknown_08F2581F
gUnknown_08F2581F:
    JAPANESE_TEXT("DAYV BROOKS\0")
    ENGLISH_TEXT("DAYV BROOKS\0")

    .global gUnknown_08F2582B
gUnknown_08F2582B:
    JAPANESE_TEXT("NORIYUKI MINAMI\0")
    ENGLISH_TEXT("NORIYUKI MINAMI\0")

    .global gUnknown_08F2583B
gUnknown_08F2583B:
    JAPANESE_TEXT("BIN OHGAWARA\0")
    ENGLISH_TEXT("BIN OHGAWARA\0")

    .global gUnknown_08F25848
gUnknown_08F25848:
    JAPANESE_TEXT("YOSHIHISA WADA\0")
    ENGLISH_TEXT("YOSHIHISA WADA\0")

    .global gUnknown_08F25857
gUnknown_08F25857:
    JAPANESE_TEXT("HIKONORI SUZUKI\0")
    ENGLISH_TEXT("HIKONORI SUZUKI\0")

    .global gUnknown_08F25867
gUnknown_08F25867:
    JAPANESE_TEXT("TAKAO SHIMIZU\0")
    ENGLISH_TEXT("TAKAO SHIMIZU\0")

    .global gUnknown_08F25875
gUnknown_08F25875:
    JAPANESE_TEXT("SHIGERU MIYAMOTO\0")
    ENGLISH_TEXT("SHIGERU MIYAMOTO\0")

    .global gUnknown_08F25886
gUnknown_08F25886:
    JAPANESE_TEXT("HIROSHI YAMAUCHI\0")
    ENGLISH_TEXT("HIROSHI YAMAUCHI\0")

    .global gUnknown_08F25897
gUnknown_08F25897:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25898
gUnknown_08F25898:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25899
gUnknown_08F25899:
    JAPANESE_TEXT("だいウッド-\0")
    ENGLISH_TEXT("Territ. Oak\0")

    .global gUnknown_08F258A0
gUnknown_08F258A0:
    JAPANESE_TEXT("ドラゴン\0")
    ENGLISH_TEXT("Dragon\0")

    .global gUnknown_08F258A5
gUnknown_08F258A5:
    JAPANESE_TEXT("R・7038\0")
    ENGLISH_TEXT("R-7038\0")

    .global gUnknown_08F258AC
gUnknown_08F258AC:
    JAPANESE_TEXT("きょぞう\0")
    ENGLISH_TEXT("Elephant\0")

    .global gUnknown_08F258B1
gUnknown_08F258B1:
    JAPANESE_TEXT("くま\0")
    ENGLISH_TEXT("Bear\0")

    .global gUnknown_08F258B4
gUnknown_08F258B4:
    JAPANESE_TEXT("ビッグフット\0")
    ENGLISH_TEXT("Bigfoot\0")

    .global gUnknown_08F258BB
gUnknown_08F258BB:
    JAPANESE_TEXT("マッドトラック\0")
    ENGLISH_TEXT("Mad Truck\0")

    .global gUnknown_08F258C3
gUnknown_08F258C3:
    JAPANESE_TEXT("オ-ルドロボ\0")
    ENGLISH_TEXT("Old Robot\0")

    .global gUnknown_08F258CA
gUnknown_08F258CA:
    JAPANESE_TEXT("メガボ-グ\0")
    ENGLISH_TEXT("Mega-Borg\0")

    .global gUnknown_08F258D0
gUnknown_08F258D0:
    JAPANESE_TEXT("ガ-ゴイラ\0")
    ENGLISH_TEXT("Gargoyle\0")

    .global gUnknown_08F258D6
gUnknown_08F258D6:
    JAPANESE_TEXT("ガビラン\0")
    ENGLISH_TEXT("Gabilan\0")

    .global gUnknown_08F258DB
gUnknown_08F258DB:
    JAPANESE_TEXT("ゴリラ\0")
    ENGLISH_TEXT("Gorilla\0")

    .global gUnknown_08F258DF
gUnknown_08F258DF:
    JAPANESE_TEXT("バイソン\0")
    ENGLISH_TEXT("Bison\0")

    .global gUnknown_08F258E4
gUnknown_08F258E4:
    JAPANESE_TEXT("タイガ-\0")
    ENGLISH_TEXT("Tiger\0")

    .global gUnknown_08F258E9
gUnknown_08F258E9:
    JAPANESE_TEXT("マッドカ-\0")
    ENGLISH_TEXT("Mad Car\0")

    .global gUnknown_08F258EF
gUnknown_08F258EF:
    JAPANESE_TEXT("ベアル\0")
    ENGLISH_TEXT("Raeb Yddet\0")

    .global gUnknown_08F258F3
gUnknown_08F258F3:
    JAPANESE_TEXT("マジカスネイル\0")
    ENGLISH_TEXT("Magisnail\0")

    .global gUnknown_08F258FB
gUnknown_08F258FB:
    JAPANESE_TEXT("タイタニ-\0")
    ENGLISH_TEXT("Titany\0")

    .global gUnknown_08F25901
gUnknown_08F25901:
    JAPANESE_TEXT("ギ-グ\0")
    ENGLISH_TEXT("Giygas\0")

    .global gUnknown_08F25905
gUnknown_08F25905:
    JAPANESE_TEXT("イ-グル\0")
    ENGLISH_TEXT("Eagle\0")

    .global gUnknown_08F2590A
gUnknown_08F2590A:
    JAPANESE_TEXT("オオカミ\0")
    ENGLISH_TEXT("Wolf\0")

    .global gUnknown_08F2590F
gUnknown_08F2590F:
    JAPANESE_TEXT("とうぞくカモメ\0")
    ENGLISH_TEXT("Gull Bandit\0")

    .global gUnknown_08F25917
gUnknown_08F25917:
    JAPANESE_TEXT("ワニ\0")
    ENGLISH_TEXT("Crocodile\0")

    .global gUnknown_08F2591A
gUnknown_08F2591A:
    JAPANESE_TEXT("エナジ-ロボ\0")
    ENGLISH_TEXT("Atomic Robot\0")

    .global gUnknown_08F25921
gUnknown_08F25921:
    JAPANESE_TEXT("ちかたいがのぬし\0")
    ENGLISH_TEXT("Cave Master\0")

    .global gUnknown_08F2592A
gUnknown_08F2592A:
    JAPANESE_TEXT("だっそうはん\0")
    ENGLISH_TEXT("Fugitive\0")

    .global gUnknown_08F25931
gUnknown_08F25931:
    JAPANESE_TEXT("BBだんのボス\0")
    ENGLISH_TEXT("BB Gang Boss\0")

    .global gUnknown_08F25939
gUnknown_08F25939:
    JAPANESE_TEXT("バ-ボット\0")
    ENGLISH_TEXT("Barbot\0")

    .global gUnknown_08F2593F
gUnknown_08F2593F:
    JAPANESE_TEXT("ジェ-ン\0")
    ENGLISH_TEXT("Jane\0")

    .global gUnknown_08F25944
gUnknown_08F25944:
    JAPANESE_TEXT("スタ-マン\0")
    ENGLISH_TEXT("Starman\0")

    .global gUnknown_08F2594A
gUnknown_08F2594A:
    JAPANESE_TEXT("ミラコ\0")
    ENGLISH_TEXT("Ulrich\0")

    .global gUnknown_08F2594E
gUnknown_08F2594E:
    JAPANESE_TEXT("ブレインガ\0")
    ENGLISH_TEXT("Brainger\0")

    .global gUnknown_08F25954
gUnknown_08F25954:
    JAPANESE_TEXT("ム-ク\0")
    ENGLISH_TEXT("Mook\0")

    .global gUnknown_08F25958
gUnknown_08F25958:
    JAPANESE_TEXT("カッチュウ\0")
    ENGLISH_TEXT("Armor\0")

    .global gUnknown_08F2595E
gUnknown_08F2595E:
    JAPANESE_TEXT("ウッド-\0")
    ENGLISH_TEXT("Oak\0")

    .global gUnknown_08F25963
gUnknown_08F25963:
    JAPANESE_TEXT("おじさん\0")
    ENGLISH_TEXT("Redneck\0")

    .global gUnknown_08F25968
gUnknown_08F25968:
    JAPANESE_TEXT("おにいさん\0")
    ENGLISH_TEXT("Hippie\0")

    .global gUnknown_08F2596E
gUnknown_08F2596E:
    JAPANESE_TEXT("おばさん\0")
    ENGLISH_TEXT("Bag Lady\0")

    .global gUnknown_08F25973
gUnknown_08F25973:
    JAPANESE_TEXT("ブラブラだん\0")
    ENGLISH_TEXT("Gang Member\0")

    .global gUnknown_08F2597A
gUnknown_08F2597A:
    JAPANESE_TEXT("ゆがみはかせ\0")
    ENGLISH_TEXT("Dr. Distorto\0")

    .global gUnknown_08F25981
gUnknown_08F25981:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25982
gUnknown_08F25982:
    JAPANESE_TEXT("ギャングゾンビ\0")
    ENGLISH_TEXT("Gang Zombie\0")

    .global gUnknown_08F2598A
gUnknown_08F2598A:
    JAPANESE_TEXT("ゾンビもどき\0")
    ENGLISH_TEXT("PseudoZombie\0")

    .global gUnknown_08F25991
gUnknown_08F25991:
    JAPANESE_TEXT("カラス\0")
    ENGLISH_TEXT("Crow\0")

    .global gUnknown_08F25995
gUnknown_08F25995:
    JAPANESE_TEXT("スネ-ク\0")
    ENGLISH_TEXT("Snake\0")

    .global gUnknown_08F2599A
gUnknown_08F2599A:
    JAPANESE_TEXT("ハイエナ\0")
    ENGLISH_TEXT("Hyena\0")

    .global gUnknown_08F2599F
gUnknown_08F2599F:
    JAPANESE_TEXT("やまねこ\0")
    ENGLISH_TEXT("Lynx\0")

    .global gUnknown_08F259A4
gUnknown_08F259A4:
    JAPANESE_TEXT("ムカデ\0")
    ENGLISH_TEXT("Centipede\0")

    .global gUnknown_08F259A8
gUnknown_08F259A8:
    JAPANESE_TEXT("ダストゴ-スト\0")
    ENGLISH_TEXT("Dust Ghost\0")

    .global gUnknown_08F259B0
gUnknown_08F259B0:
    JAPANESE_TEXT("フライ\0")
    ENGLISH_TEXT("Fly\0")

    .global gUnknown_08F259B4
gUnknown_08F259B4:
    JAPANESE_TEXT("スパイダ-\0")
    ENGLISH_TEXT("Arachnid!\0")

    .global gUnknown_08F259BA
gUnknown_08F259BA:
    JAPANESE_TEXT("サソリ\0")
    ENGLISH_TEXT("Scorpion\0")

    .global gUnknown_08F259BE
gUnknown_08F259BE:
    JAPANESE_TEXT("ロ-プ\0")
    ENGLISH_TEXT("Rope\0")

    .global gUnknown_08F259C2
gUnknown_08F259C2:
    JAPANESE_TEXT("ファイアボ-ル\0")
    ENGLISH_TEXT("Fireball\0")

    .global gUnknown_08F259CA
gUnknown_08F259CA:
    JAPANESE_TEXT("ビュ-ン\0")
    ENGLISH_TEXT("Swoosh\0")

    .global gUnknown_08F259CF
gUnknown_08F259CF:
    JAPANESE_TEXT("おまけビュ-ン\0")
    ENGLISH_TEXT("Bonus Swoosh\0")

    .global gUnknown_08F259D7
gUnknown_08F259D7:
    JAPANESE_TEXT("ゴ-スト\0")
    ENGLISH_TEXT("Ghost\0")

    .global gUnknown_08F259DC
gUnknown_08F259DC:
    JAPANESE_TEXT("リトルソ-サ-\0")
    ENGLISH_TEXT("Li'l Saucer\0")

    .global gUnknown_08F259E4
gUnknown_08F259E4:
    JAPANESE_TEXT("こうもりさん\0")
    ENGLISH_TEXT("Mr. Batty\0")

    .global gUnknown_08F259EB
gUnknown_08F259EB:
    JAPANESE_TEXT("スタ-マンのむすこ\0")
    ENGLISH_TEXT("Starman Jr.\0")

    .global gUnknown_08F259F5
gUnknown_08F259F5:
    JAPANESE_TEXT("スカンク\0")
    ENGLISH_TEXT("Skunk\0")

    .global gUnknown_08F259FA
gUnknown_08F259FA:
    JAPANESE_TEXT("ちみどろゾンビ\0")
    ENGLISH_TEXT("BloodyZombie\0")

    .global gUnknown_08F25A02
gUnknown_08F25A02:
    JAPANESE_TEXT("ねずみ\0")
    ENGLISH_TEXT("Rat\0")

    .global gUnknown_08F25A06
gUnknown_08F25A06:
    JAPANESE_TEXT("ボマ-\0")
    ENGLISH_TEXT("Bomber\0")

    .global gUnknown_08F25A0A
gUnknown_08F25A0A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A0B
gUnknown_08F25A0B:
    JAPANESE_TEXT("にんぎょう\0")
    ENGLISH_TEXT("Doll\0")

    .global gUnknown_08F25A11
gUnknown_08F25A11:
    JAPANESE_TEXT("でんきスタンド\0")
    ENGLISH_TEXT("Lamp\0")

    .global gUnknown_08F25A19
gUnknown_08F25A19:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A1A
gUnknown_08F25A1A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A1B
gUnknown_08F25A1B:
    JAPANESE_TEXT("バイオムカデ\0")
    ENGLISH_TEXT("Biopede\0")

    .global gUnknown_08F25A22
gUnknown_08F25A22:
    JAPANESE_TEXT("バイオサソリ\0")
    ENGLISH_TEXT("Bio-Scorpion\0")

    .global gUnknown_08F25A29
gUnknown_08F25A29:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A2A
gUnknown_08F25A2A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A2B
gUnknown_08F25A2B:
    JAPANESE_TEXT("レッドスネ-ク\0")
    ENGLISH_TEXT("Red Snake\0")

    .global gUnknown_08F25A33
gUnknown_08F25A33:
    JAPANESE_TEXT("いっぴきオオカミ\0")
    ENGLISH_TEXT("Lone Wolf\0")

    .global gUnknown_08F25A3C
gUnknown_08F25A3C:
    JAPANESE_TEXT("しろくま\0")
    ENGLISH_TEXT("Polar Bear\0")

    .global gUnknown_08F25A41
gUnknown_08F25A41:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A42
gUnknown_08F25A42:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A43
gUnknown_08F25A43:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A44
gUnknown_08F25A44:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A45
gUnknown_08F25A45:
    JAPANESE_TEXT("がらがらへび\0")
    ENGLISH_TEXT("Rattlesnake\0")

    .global gUnknown_08F25A4C
gUnknown_08F25A4C:
    JAPANESE_TEXT("タランチュラ\0")
    ENGLISH_TEXT("Tarantula\0")

    .global gUnknown_08F25A53
gUnknown_08F25A53:
    JAPANESE_TEXT("つよいワニ\0")
    ENGLISH_TEXT("Tough Croc\0")

    .global gUnknown_08F25A59
gUnknown_08F25A59:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A5A
gUnknown_08F25A5A:
    JAPANESE_TEXT("バッファロ-\0")
    ENGLISH_TEXT("Buffalo\0")

    .global gUnknown_08F25A61
gUnknown_08F25A61:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A62
gUnknown_08F25A62:
    JAPANESE_TEXT("バイオこうもり\0")
    ENGLISH_TEXT("Bio-Bat\0")

    .global gUnknown_08F25A6A
gUnknown_08F25A6A:
    JAPANESE_TEXT("のらイヌ\0")
    ENGLISH_TEXT("Stray Dog\0")

    .global gUnknown_08F25A6F
gUnknown_08F25A6F:
    JAPANESE_TEXT("デビルカ-\0")
    ENGLISH_TEXT("Devil Car\0")

    .global gUnknown_08F25A75
gUnknown_08F25A75:
    JAPANESE_TEXT("デビルトラック\0")
    ENGLISH_TEXT("Devil Truck\0")

    .global gUnknown_08F25A7D
gUnknown_08F25A7D:
    JAPANESE_TEXT("デストラック\0")
    ENGLISH_TEXT("Death Truck\0")

    .global gUnknown_08F25A84
gUnknown_08F25A84:
    JAPANESE_TEXT("アラ-ムゴ-スト\0")
    ENGLISH_TEXT("Alarm Ghost\0")

    .global gUnknown_08F25A8D
gUnknown_08F25A8D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25A8E
gUnknown_08F25A8E:
    JAPANESE_TEXT("ビュンビュ-ン\0")
    ENGLISH_TEXT("Woosh Swoosh\0")

    .global gUnknown_08F25A96
gUnknown_08F25A96:
    JAPANESE_TEXT("パパビュ-ン\0")
    ENGLISH_TEXT("Papa Swoosh\0")

    .global gUnknown_08F25A9D
gUnknown_08F25A9D:
    JAPANESE_TEXT("ビュビ-\0")
    ENGLISH_TEXT("Swooshette\0")

    .global gUnknown_08F25AA2
gUnknown_08F25AA2:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25AA3
gUnknown_08F25AA3:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25AA4
gUnknown_08F25AA4:
    JAPANESE_TEXT("スカイベアル\0")
    ENGLISH_TEXT("Sky Yddet\0")

    .global gUnknown_08F25AAB
gUnknown_08F25AAB:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25AAC
gUnknown_08F25AAC:
    JAPANESE_TEXT("ギガボ-グ\0")
    ENGLISH_TEXT("Giga-Borg\0")

    .global gUnknown_08F25AB2
gUnknown_08F25AB2:
    JAPANESE_TEXT("ラストボ-グ\0")
    ENGLISH_TEXT("Last Borg\0")

    .global gUnknown_08F25AB9
gUnknown_08F25AB9:
    JAPANESE_TEXT("スクラッパ-\0")
    ENGLISH_TEXT("Scrapper\0")

    .global gUnknown_08F25AC0
gUnknown_08F25AC0:
    JAPANESE_TEXT("デスバ-ボット\0")
    ENGLISH_TEXT("Death Barbot\0")

    .global gUnknown_08F25AC8
gUnknown_08F25AC8:
    JAPANESE_TEXT("オメガソ-サ-\0")
    ENGLISH_TEXT("Omega Saucer\0")

    .global gUnknown_08F25AD0
gUnknown_08F25AD0:
    JAPANESE_TEXT("キャロライン\0")
    ENGLISH_TEXT("Caroline\0")

    .global gUnknown_08F25AD7
gUnknown_08F25AD7:
    JAPANESE_TEXT("スタ-マイナ-\0")
    ENGLISH_TEXT("Star Miner\0")

    .global gUnknown_08F25ADF
gUnknown_08F25ADF:
    JAPANESE_TEXT("ス-パ-エナジ-\0")
    ENGLISH_TEXT("NuclearRobot\0")

    .global gUnknown_08F25AE8
gUnknown_08F25AE8:
    JAPANESE_TEXT("ス-ジ-\0")
    ENGLISH_TEXT("Suzie\0")

    .global gUnknown_08F25AED
gUnknown_08F25AED:
    JAPANESE_TEXT("ブル-スタ-マン\0")
    ENGLISH_TEXT("Blue Starman\0")

    .global gUnknown_08F25AF6
gUnknown_08F25AF6:
    JAPANESE_TEXT("サタ-ニア\0")
    ENGLISH_TEXT("Satania\0")

    .global gUnknown_08F25AFC
gUnknown_08F25AFC:
    JAPANESE_TEXT("タイタニアン\0")
    ENGLISH_TEXT("Titanian\0")

    .global gUnknown_08F25B03
gUnknown_08F25B03:
    JAPANESE_TEXT("ドム-ク\0")
    ENGLISH_TEXT("Mook Senior\0")

    .global gUnknown_08F25B08
gUnknown_08F25B08:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B09
gUnknown_08F25B09:
    JAPANESE_TEXT("ゾンビ\0")
    ENGLISH_TEXT("Zombie\0")

    .global gUnknown_08F25B0D
gUnknown_08F25B0D:
    JAPANESE_TEXT("ぼうりょくゾンビ\0")
    ENGLISH_TEXT("Mean Zombie\0")

    .global gUnknown_08F25B16
gUnknown_08F25B16:
    JAPANESE_TEXT("ぎんオオカミ\0")
    ENGLISH_TEXT("Silver Wolf\0")

    .global gUnknown_08F25B1D
gUnknown_08F25B1D:
    JAPANESE_TEXT("R・7037\0")
    ENGLISH_TEXT("R-7037\0")

    .global gUnknown_08F25B24
gUnknown_08F25B24:
    JAPANESE_TEXT("グリズリ-\0")
    ENGLISH_TEXT("Grizzly\0")

    .global gUnknown_08F25B2A
gUnknown_08F25B2A:
    JAPANESE_TEXT("R・7038XX\0")
    ENGLISH_TEXT("R-7038XX\0")

    .global gUnknown_08F25B33
gUnknown_08F25B33:
    JAPANESE_TEXT("ラストスタ-マン\0")
    ENGLISH_TEXT("Last Starman\0")

    .global gUnknown_08F25B3C
gUnknown_08F25B3C:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B3D
gUnknown_08F25B3D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B3E
gUnknown_08F25B3E:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B3F
gUnknown_08F25B3F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B40
gUnknown_08F25B40:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B41
gUnknown_08F25B41:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B42
gUnknown_08F25B42:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B43
gUnknown_08F25B43:
    JAPANESE_TEXT("でかぶくろ\0")
    ENGLISH_TEXT("Big Bag\0")

    .global gUnknown_08F25B49
gUnknown_08F25B49:
    JAPANESE_TEXT("テレホンカ-ド\0")
    ENGLISH_TEXT("Phone Card\0")

    .global gUnknown_08F25B51
gUnknown_08F25B51:
    JAPANESE_TEXT("パンくず\0")
    ENGLISH_TEXT("BreadCrumbs\0")

    .global gUnknown_08F25B56
gUnknown_08F25B56:
    JAPANESE_TEXT("まよけのゆびわ\0")
    ENGLISH_TEXT("Repel Ring\0")

    .global gUnknown_08F25B5E
gUnknown_08F25B5E:
    JAPANESE_TEXT("ITEM05\0")
    ENGLISH_TEXT("ITEM 05\0")

    .global gUnknown_08F25B65
gUnknown_08F25B65:
    JAPANESE_TEXT("メモリ-チップ\0")
    ENGLISH_TEXT("Memory Chip\0")

    .global gUnknown_08F25B6D
gUnknown_08F25B6D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B6E
gUnknown_08F25B6E:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B6F
gUnknown_08F25B6F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25B70
gUnknown_08F25B70:
    JAPANESE_TEXT("ナイフ\0")
    ENGLISH_TEXT("Knife\0")

    .global gUnknown_08F25B74
gUnknown_08F25B74:
    JAPANESE_TEXT("サバイバルナイフ\0")
    ENGLISH_TEXT("Surv. Knife\0")

    .global gUnknown_08F25B7D
gUnknown_08F25B7D:
    JAPANESE_TEXT("アシガルソ-ド\0")
    ENGLISH_TEXT("Basic Sword\0")

    .global gUnknown_08F25B85
gUnknown_08F25B85:
    JAPANESE_TEXT("KATANA\0")
    ENGLISH_TEXT("Katana\0")

    .global gUnknown_08F25B8C
gUnknown_08F25B8C:
    JAPANESE_TEXT("ショックガン\0")
    ENGLISH_TEXT("Stun Gun\0")

    .global gUnknown_08F25B93
gUnknown_08F25B93:
    JAPANESE_TEXT("エアガン\0")
    ENGLISH_TEXT("Toy Air Gun\0")

    .global gUnknown_08F25B98
gUnknown_08F25B98:
    JAPANESE_TEXT("ボロのバット\0")
    ENGLISH_TEXT("Cracked Bat\0")

    .global gUnknown_08F25B9F
gUnknown_08F25B9F:
    JAPANESE_TEXT("ふつうのバット\0")
    ENGLISH_TEXT("Teeball Bat\0")

    .global gUnknown_08F25BA7
gUnknown_08F25BA7:
    JAPANESE_TEXT("いいバット\0")
    ENGLISH_TEXT("Sandlot Bat\0")

    .global gUnknown_08F25BAD
gUnknown_08F25BAD:
    JAPANESE_TEXT("さいこうのバット\0")
    ENGLISH_TEXT("HallFameBat\0")

    .global gUnknown_08F25BB6
gUnknown_08F25BB6:
    JAPANESE_TEXT("フライパン\0")
    ENGLISH_TEXT("Frypan\0")

    .global gUnknown_08F25BBC
gUnknown_08F25BBC:
    JAPANESE_TEXT("いいフライパン\0")
    ENGLISH_TEXT("DX Frypan\0")

    .global gUnknown_08F25BC4
gUnknown_08F25BC4:
    JAPANESE_TEXT("とびきりのフライパン\0")
    ENGLISH_TEXT("Best Frypan\0")

    .global gUnknown_08F25BCF
gUnknown_08F25BCF:
    JAPANESE_TEXT("スリングショット\0")
    ENGLISH_TEXT("Slingshot\0")

    .global gUnknown_08F25BD8
gUnknown_08F25BD8:
    JAPANESE_TEXT("ブ-メラン\0")
    ENGLISH_TEXT("Boomerang\0")

    .global gUnknown_08F25BDE
gUnknown_08F25BDE:
    JAPANESE_TEXT("さっちゅうスプレ-\0")
    ENGLISH_TEXT("Bug Spray\0")

    .global gUnknown_08F25BE8
gUnknown_08F25BE8:
    JAPANESE_TEXT("ス-パ-スプレ-\0")
    ENGLISH_TEXT("Super Spray\0")

    .global gUnknown_08F25BF1
gUnknown_08F25BF1:
    JAPANESE_TEXT("ノミとシラミ\0")
    ENGLISH_TEXT("Flea Bomb\0")

    .global gUnknown_08F25BF8
gUnknown_08F25BF8:
    JAPANESE_TEXT("あいのことば\0")
    ENGLISH_TEXT("Love Words\0")

    .global gUnknown_08F25BFF
gUnknown_08F25BFF:
    JAPANESE_TEXT("のろいのことば\0")
    ENGLISH_TEXT("Curse Words\0")

    .global gUnknown_08F25C07
gUnknown_08F25C07:
    JAPANESE_TEXT("ねばねばマシン\0")
    ENGLISH_TEXT("Slime Gen.\0")

    .global gUnknown_08F25C0F
gUnknown_08F25C0F:
    JAPANESE_TEXT("やみのライト\0")
    ENGLISH_TEXT("Flashdark\0")

    .global gUnknown_08F25C16
gUnknown_08F25C16:
    JAPANESE_TEXT("いしのもと\0")
    ENGLISH_TEXT("Stone Spray\0")

    .global gUnknown_08F25C1C
gUnknown_08F25C1C:
    JAPANESE_TEXT("どくばり\0")
    ENGLISH_TEXT("Stinger\0")

    .global gUnknown_08F25C21
gUnknown_08F25C21:
    JAPANESE_TEXT("かえんほうしゃき\0")
    ENGLISH_TEXT("Flamethrowr\0")

    .global gUnknown_08F25C2A
gUnknown_08F25C2A:
    JAPANESE_TEXT("ボム\0")
    ENGLISH_TEXT("Bomb\0")

    .global gUnknown_08F25C2D
gUnknown_08F25C2D:
    JAPANESE_TEXT("ス-パ-ボム\0")
    ENGLISH_TEXT("Super Bomb\0")

    .global gUnknown_08F25C34
gUnknown_08F25C34:
    JAPANESE_TEXT("レ-ザ-ビ-ム\0")
    ENGLISH_TEXT("Laser Beam\0")

    .global gUnknown_08F25C3C
gUnknown_08F25C3C:
    JAPANESE_TEXT("デスビ-ム\0")
    ENGLISH_TEXT("Death Beam\0")

    .global gUnknown_08F25C42
gUnknown_08F25C42:
    JAPANESE_TEXT("ITEM39\0")
    ENGLISH_TEXT("ITEM 39\0")

    .global gUnknown_08F25C49
gUnknown_08F25C49:
    JAPANESE_TEXT("ロ-プ\0")
    ENGLISH_TEXT("Rope\0")

    .global gUnknown_08F25C4D
gUnknown_08F25C4D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25C4E
gUnknown_08F25C4E:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25C4F
gUnknown_08F25C4F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25C50
gUnknown_08F25C50:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25C51
gUnknown_08F25C51:
    JAPANESE_TEXT("やすらぎのコイン\0")
    ENGLISH_TEXT("Peace Coin\0")

    .global gUnknown_08F25C5A
gUnknown_08F25C5A:
    JAPANESE_TEXT("まもりのコイン\0")
    ENGLISH_TEXT("ProtectCoin\0")

    .global gUnknown_08F25C62
gUnknown_08F25C62:
    JAPANESE_TEXT("まふうじのコイン\0")
    ENGLISH_TEXT("Magic Coin\0")

    .global gUnknown_08F25C6B
gUnknown_08F25C6B:
    JAPANESE_TEXT("ようせいのうでわ\0")
    ENGLISH_TEXT("Fairy Brace\0")

    .global gUnknown_08F25C74
gUnknown_08F25C74:
    JAPANESE_TEXT("てんしのうでわ\0")
    ENGLISH_TEXT("Angel Brace\0")

    .global gUnknown_08F25C7C
gUnknown_08F25C7C:
    JAPANESE_TEXT("めがみのうでわ\0")
    ENGLISH_TEXT("GoddessBrac\0")

    .global gUnknown_08F25C84
gUnknown_08F25C84:
    JAPANESE_TEXT("しずくのペンダント\0")
    ENGLISH_TEXT("RainPendant\0")

    .global gUnknown_08F25C8E
gUnknown_08F25C8E:
    JAPANESE_TEXT("ほのおのペンダント\0")
    ENGLISH_TEXT("FlamePendnt\0")

    .global gUnknown_08F25C98
gUnknown_08F25C98:
    JAPANESE_TEXT("だいちのペンダント\0")
    ENGLISH_TEXT("EarthPendnt\0")

    .global gUnknown_08F25CA2
gUnknown_08F25CA2:
    JAPANESE_TEXT("うみのペンダント\0")
    ENGLISH_TEXT("Sea Pendant\0")

    .global gUnknown_08F25CAB
gUnknown_08F25CAB:
    JAPANESE_TEXT("ITEM55\0")
    ENGLISH_TEXT("Easy Ring\0")

    .global gUnknown_08F25CB2
gUnknown_08F25CB2:
    JAPANESE_TEXT("ITEM56\0")
    ENGLISH_TEXT("Item 56\0")

    .global gUnknown_08F25CB9
gUnknown_08F25CB9:
    JAPANESE_TEXT("ITEM57\0")
    ENGLISH_TEXT("Item 57\0")

    .global gUnknown_08F25CC0
gUnknown_08F25CC0:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25CC1
gUnknown_08F25CC1:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25CC2
gUnknown_08F25CC2:
    JAPANESE_TEXT("オレンジジュ-ス\0")
    ENGLISH_TEXT("OrangeJuice\0")

    .global gUnknown_08F25CCB
gUnknown_08F25CCB:
    JAPANESE_TEXT("フライドポテト\0")
    ENGLISH_TEXT("FrenchFries\0")

    .global gUnknown_08F25CD3
gUnknown_08F25CD3:
    JAPANESE_TEXT("マジックハ-ブ\0")
    ENGLISH_TEXT("Magic Herb\0")

    .global gUnknown_08F25CDB
gUnknown_08F25CDB:
    JAPANESE_TEXT("ハンバ-ガ-\0")
    ENGLISH_TEXT("Hamburger\0")

    .global gUnknown_08F25CE2
gUnknown_08F25CE2:
    JAPANESE_TEXT("スポ-ツドリンク\0")
    ENGLISH_TEXT("SportsDrink\0")

    .global gUnknown_08F25CEB
gUnknown_08F25CEB:
    JAPANESE_TEXT("きずぐすり\0")
    ENGLISH_TEXT("Medicine\0")

    .global gUnknown_08F25CF1
gUnknown_08F25CF1:
    JAPANESE_TEXT("ぜんそくスプレ-\0")
    ENGLISH_TEXT("AsthmaSpray\0")

    .global gUnknown_08F25CFA
gUnknown_08F25CFA:
    JAPANESE_TEXT("どくけし\0")
    ENGLISH_TEXT("Antidote\0")

    .global gUnknown_08F25CFF
gUnknown_08F25CFF:
    JAPANESE_TEXT("うがいぐすり\0")
    ENGLISH_TEXT("Mouthwash\0")

    .global gUnknown_08F25D06
gUnknown_08F25D06:
    JAPANESE_TEXT("いちごとうふ\0")
    ENGLISH_TEXT("Berry Tofu\0")

    .global gUnknown_08F25D0D
gUnknown_08F25D0D:
    JAPANESE_TEXT("ITEM70\0")
    ENGLISH_TEXT("Item 70\0")

    .global gUnknown_08F25D14
gUnknown_08F25D14:
    JAPANESE_TEXT("パン\0")
    ENGLISH_TEXT("Bread\0")

    .global gUnknown_08F25D17
gUnknown_08F25D17:
    JAPANESE_TEXT("エンジェルシ-ド\0")
    ENGLISH_TEXT("Angel Seed\0")

    .global gUnknown_08F25D20
gUnknown_08F25D20:
    JAPANESE_TEXT("サイパワ-スト-ン\0")
    ENGLISH_TEXT("PSI Stone\0")

    .global gUnknown_08F25D2A
gUnknown_08F25D2A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25D2B
gUnknown_08F25D2B:
    JAPANESE_TEXT("ふしぎなリボン\0")
    ENGLISH_TEXT("MagicRibbon\0")

    .global gUnknown_08F25D33
gUnknown_08F25D33:
    JAPANESE_TEXT("ふしぎなキャンディ\0")
    ENGLISH_TEXT("Magic Candy\0")

    .global gUnknown_08F25D3D
gUnknown_08F25D3D:
    JAPANESE_TEXT("ITEM77\0")
    ENGLISH_TEXT("Item 77\0")

    .global gUnknown_08F25D44
gUnknown_08F25D44:
    JAPANESE_TEXT("スピ-ドカプセル\0")
    ENGLISH_TEXT("SpeedCapsul\0")

    .global gUnknown_08F25D4D
gUnknown_08F25D4D:
    JAPANESE_TEXT("ウィズダムカプセル\0")
    ENGLISH_TEXT("Wis.Capsule\0")

    .global gUnknown_08F25D57
gUnknown_08F25D57:
    JAPANESE_TEXT("フィジカルカプセル\0")
    ENGLISH_TEXT("Str.Capsule\0")

    .global gUnknown_08F25D61
gUnknown_08F25D61:
    JAPANESE_TEXT("フォ-スカプセル\0")
    ENGLISH_TEXT("ForceCapsul\0")

    .global gUnknown_08F25D6A
gUnknown_08F25D6A:
    JAPANESE_TEXT("ファイトカプセル\0")
    ENGLISH_TEXT("FightCapsul\0")

    .global gUnknown_08F25D73
gUnknown_08F25D73:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25D74
gUnknown_08F25D74:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25D75
gUnknown_08F25D75:
    JAPANESE_TEXT("ちかしつのカギ\0")
    ENGLISH_TEXT("BasementKey\0")

    .global gUnknown_08F25D7D
gUnknown_08F25D7D:
    JAPANESE_TEXT("どうぶつえんのカギ\0")
    ENGLISH_TEXT("Zoo Key\0")

    .global gUnknown_08F25D87
gUnknown_08F25D87:
    JAPANESE_TEXT("ゆうれいやしきのカギ\0")
    ENGLISH_TEXT("Haunted Key\0")

    .global gUnknown_08F25D92
gUnknown_08F25D92:
    JAPANESE_TEXT("そうそふのにっき\0")
    ENGLISH_TEXT("GGF's Diary\0")

    .global gUnknown_08F25D9B
gUnknown_08F25D9B:
    JAPANESE_TEXT("つうこうきょかしょう\0")
    ENGLISH_TEXT("Pass\0")

    .global gUnknown_08F25DA6
gUnknown_08F25DA6:
    JAPANESE_TEXT("ライブのチケット\0")
    ENGLISH_TEXT("Show Ticket\0")

    .global gUnknown_08F25DAF
gUnknown_08F25DAF:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25DB0
gUnknown_08F25DB0:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25DB1
gUnknown_08F25DB1:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25DB2
gUnknown_08F25DB2:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25DB3
gUnknown_08F25DB3:
    JAPANESE_TEXT("カナリアのこども\0")
    ENGLISH_TEXT("Baby Canary\0")

    .global gUnknown_08F25DBC
gUnknown_08F25DBC:
    JAPANESE_TEXT("ITEM96\0")
    ENGLISH_TEXT("ITEM 96\0")

    .global gUnknown_08F25DC3
gUnknown_08F25DC3:
    JAPANESE_TEXT("ペンシルロケット\0")
    ENGLISH_TEXT("BottlRocket\0")

    .global gUnknown_08F25DCC
gUnknown_08F25DCC:
    JAPANESE_TEXT("ぼうし\0")
    ENGLISH_TEXT("Hat\0")

    .global gUnknown_08F25DD0
gUnknown_08F25DD0:
    JAPANESE_TEXT("いれば\0")
    ENGLISH_TEXT("Dentures\0")

    .global gUnknown_08F25DD4
gUnknown_08F25DD4:
    JAPANESE_TEXT("チケットのはんけん\0")
    ENGLISH_TEXT("Ticket Stub\0")

    .global gUnknown_08F25DDE
gUnknown_08F25DDE:
    JAPANESE_TEXT("ICチップ\0")
    ENGLISH_TEXT("IC Chip\0")

    .global gUnknown_08F25DE4
gUnknown_08F25DE4:
    JAPANESE_TEXT("きぼうのオカリナ\0")
    ENGLISH_TEXT("Ocarina\0")

    .global gUnknown_08F25DED
gUnknown_08F25DED:
    JAPANESE_TEXT("ITEM103\0")
    ENGLISH_TEXT("Item 103\0")

    .global gUnknown_08F25DF5
gUnknown_08F25DF5:
    JAPANESE_TEXT("フランクリンバッヂ\0")
    ENGLISH_TEXT("Frank.Badge\0")

    .global gUnknown_08F25DFF
gUnknown_08F25DFF:
    JAPANESE_TEXT("ゆうじょうのゆびわ\0")
    ENGLISH_TEXT("Friend Ring\0")

    .global gUnknown_08F25E09
gUnknown_08F25E09:
    JAPANESE_TEXT("ITEM106\0")
    ENGLISH_TEXT("Item 106\0")

    .global gUnknown_08F25E11
gUnknown_08F25E11:
    JAPANESE_TEXT("めのうのつりばり\0")
    ENGLISH_TEXT("Onyx Hook\0")

    .global gUnknown_08F25E1A
gUnknown_08F25E1A:
    JAPANESE_TEXT("さいしゅうへいき\0")
    ENGLISH_TEXT("Ult. Weapon\0")

    .global gUnknown_08F25E23
gUnknown_08F25E23:
    JAPANESE_TEXT("ものさし\0")
    ENGLISH_TEXT("Ruler\0")

    .global gUnknown_08F25E28
gUnknown_08F25E28:
    JAPANESE_TEXT("キャッシュカ-ド\0")
    ENGLISH_TEXT("ATM Card\0")

    .global gUnknown_08F25E31
gUnknown_08F25E31:
    JAPANESE_TEXT("あかいくさ\0")
    ENGLISH_TEXT("Red Weed\0")

    .global gUnknown_08F25E37
gUnknown_08F25E37:
    JAPANESE_TEXT("ふしぎなメガホン\0")
    ENGLISH_TEXT("Megaphone\0")

    .global gUnknown_08F25E40
gUnknown_08F25E40:
    JAPANESE_TEXT("ちず\0")
    ENGLISH_TEXT("Map\0")

    .global gUnknown_08F25E43
gUnknown_08F25E43:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E44
gUnknown_08F25E44:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E45
gUnknown_08F25E45:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E46
gUnknown_08F25E46:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E47
gUnknown_08F25E47:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E48
gUnknown_08F25E48:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E49
gUnknown_08F25E49:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E4A
gUnknown_08F25E4A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E4B
gUnknown_08F25E4B:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E4C
gUnknown_08F25E4C:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E4D
gUnknown_08F25E4D:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E4E
gUnknown_08F25E4E:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E4F
gUnknown_08F25E4F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E50
gUnknown_08F25E50:
    JAPANESE_TEXT("ざひょう\0")
    ENGLISH_TEXT("Coords.\0")

    .global gUnknown_08F25E55
gUnknown_08F25E55:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E56
gUnknown_08F25E56:
    JAPANESE_TEXT("テレパシ-\0")
    ENGLISH_TEXT("Telepathy\0")

    .global gUnknown_08F25E5C
gUnknown_08F25E5C:
    JAPANESE_TEXT("テレポ-テ-ション\0")
    ENGLISH_TEXT("Teleport\0")

    .global gUnknown_08F25E66
gUnknown_08F25E66:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E67
gUnknown_08F25E67:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E68
gUnknown_08F25E68:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E69
gUnknown_08F25E69:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E6A
gUnknown_08F25E6A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E6B
gUnknown_08F25E6B:
    JAPANESE_TEXT("ライフアップα\0")
    ENGLISH_TEXT("Lifeup a\0")

    .global gUnknown_08F25E73
gUnknown_08F25E73:
    JAPANESE_TEXT("ライフアップβ\0")
    ENGLISH_TEXT("Lifeup ß\0")

    .global gUnknown_08F25E7B
gUnknown_08F25E7B:
    JAPANESE_TEXT("ライフアップγ\0")
    ENGLISH_TEXT("Lifeup γ\0")

    .global gUnknown_08F25E83
gUnknown_08F25E83:
    JAPANESE_TEXT("ライフアップπ\0")
    ENGLISH_TEXT("Lifeup π\0")

    .global gUnknown_08F25E8B
gUnknown_08F25E8B:
    JAPANESE_TEXT("ライフアップΩ\0")
    ENGLISH_TEXT("Lifeup Ω\0")

    .global gUnknown_08F25E93
gUnknown_08F25E93:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E94
gUnknown_08F25E94:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E95
gUnknown_08F25E95:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25E96
gUnknown_08F25E96:
    JAPANESE_TEXT("ヒ-リングα\0")
    ENGLISH_TEXT("Healing a\0")

    .global gUnknown_08F25E9D
gUnknown_08F25E9D:
    JAPANESE_TEXT("ヒ-リングβ\0")
    ENGLISH_TEXT("Healing ß\0")

    .global gUnknown_08F25EA4
gUnknown_08F25EA4:
    JAPANESE_TEXT("ヒ-リングγ\0")
    ENGLISH_TEXT("Healing γ\0")

    .global gUnknown_08F25EAB
gUnknown_08F25EAB:
    JAPANESE_TEXT("ヒ-リングπ\0")
    ENGLISH_TEXT("Healing π\0")

    .global gUnknown_08F25EB2
gUnknown_08F25EB2:
    JAPANESE_TEXT("ス-パ-ヒ-リング\0")
    ENGLISH_TEXT("Super Heal\0")

    .global gUnknown_08F25EBC
gUnknown_08F25EBC:
    JAPANESE_TEXT("サイコシ-ルドα\0")
    ENGLISH_TEXT("PSI Shielda\0")

    .global gUnknown_08F25EC5
gUnknown_08F25EC5:
    JAPANESE_TEXT("サイコシ-ルドβ\0")
    ENGLISH_TEXT("PSI Shieldß\0")

    .global gUnknown_08F25ECE
gUnknown_08F25ECE:
    JAPANESE_TEXT("パワ-シ-ルド\0")
    ENGLISH_TEXT("PowerShield\0")

    .global gUnknown_08F25ED6
gUnknown_08F25ED6:
    JAPANESE_TEXT("ブレインショック\0")
    ENGLISH_TEXT("Brainshock\0")

    .global gUnknown_08F25EDF
gUnknown_08F25EDF:
    JAPANESE_TEXT("ブレインサイクロン\0")
    ENGLISH_TEXT("BrainCyclon\0")

    .global gUnknown_08F25EE9
gUnknown_08F25EE9:
    JAPANESE_TEXT("さいみんじゅつ\0")
    ENGLISH_TEXT("Hypnosis\0")

    .global gUnknown_08F25EF1
gUnknown_08F25EF1:
    JAPANESE_TEXT("パラライシス\0")
    ENGLISH_TEXT("Paralysis\0")

    .global gUnknown_08F25EF8
gUnknown_08F25EF8:
    JAPANESE_TEXT("ダ-クネス\0")
    ENGLISH_TEXT("Darkness\0")

    .global gUnknown_08F25EFE
gUnknown_08F25EFE:
    JAPANESE_TEXT("サイマグネット\0")
    ENGLISH_TEXT("PSI Magnet\0")

    .global gUnknown_08F25F06
gUnknown_08F25F06:
    JAPANESE_TEXT("シ-ルドオフ\0")
    ENGLISH_TEXT("Shield Off\0")

    .global gUnknown_08F25F0D
gUnknown_08F25F0D:
    JAPANESE_TEXT("サイコブロック\0")
    ENGLISH_TEXT("PSI Block\0")

    .global gUnknown_08F25F15
gUnknown_08F25F15:
    JAPANESE_TEXT("オフェンスアップ\0")
    ENGLISH_TEXT("Offense Up\0")

    .global gUnknown_08F25F1E
gUnknown_08F25F1E:
    JAPANESE_TEXT("ディフェンスアップα\0")
    ENGLISH_TEXT("Def. Up a\0")

    .global gUnknown_08F25F29
gUnknown_08F25F29:
    JAPANESE_TEXT("ディフェンスアップβ\0")
    ENGLISH_TEXT("Def. Up ß\0")

    .global gUnknown_08F25F34
gUnknown_08F25F34:
    JAPANESE_TEXT("クイックアップ\0")
    ENGLISH_TEXT("Quick Up\0")

    .global gUnknown_08F25F3C
gUnknown_08F25F3C:
    JAPANESE_TEXT("ディフェンスダウンα\0")
    ENGLISH_TEXT("Def. Down a\0")

    .global gUnknown_08F25F47
gUnknown_08F25F47:
    JAPANESE_TEXT("ディフェンスダウンβ\0")
    ENGLISH_TEXT("Def. Down ß\0")

    .global gUnknown_08F25F52
gUnknown_08F25F52:
    JAPANESE_TEXT("じげんスリップ\0")
    ENGLISH_TEXT("Dimens.Warp\0")

    .global gUnknown_08F25F5A
gUnknown_08F25F5A:
    JAPANESE_TEXT("さいみんじゅつ\0")
    ENGLISH_TEXT("Hypnosis\0")

    .global gUnknown_08F25F62
gUnknown_08F25F62:
    JAPANESE_TEXT("PKフリ-ズα\0")
    ENGLISH_TEXT("PK Freeze a\0")

    .global gUnknown_08F25F6A
gUnknown_08F25F6A:
    JAPANESE_TEXT("PKフリ-ズβ\0")
    ENGLISH_TEXT("PK Freeze ß\0")

    .global gUnknown_08F25F72
gUnknown_08F25F72:
    JAPANESE_TEXT("PKフリ-ズγ\0")
    ENGLISH_TEXT("PK Freeze γ\0")

    .global gUnknown_08F25F7A
gUnknown_08F25F7A:
    JAPANESE_TEXT("PKフリ-ズΩ\0")
    ENGLISH_TEXT("PK Freeze Ω\0")

    .global gUnknown_08F25F82
gUnknown_08F25F82:
    JAPANESE_TEXT("PKファイア-α\0")
    ENGLISH_TEXT("PK Fire a\0")

    .global gUnknown_08F25F8B
gUnknown_08F25F8B:
    JAPANESE_TEXT("PKファイア-β\0")
    ENGLISH_TEXT("PK Fire ß\0")

    .global gUnknown_08F25F94
gUnknown_08F25F94:
    JAPANESE_TEXT("PKファイア-γ\0")
    ENGLISH_TEXT("PK Fire γ\0")

    .global gUnknown_08F25F9D
gUnknown_08F25F9D:
    JAPANESE_TEXT("PKファイア-Ω\0")
    ENGLISH_TEXT("PK Fire Ω\0")

    .global gUnknown_08F25FA6
gUnknown_08F25FA6:
    JAPANESE_TEXT("PKビ-ムα\0")
    ENGLISH_TEXT("PK Beam a\0")

    .global gUnknown_08F25FAD
gUnknown_08F25FAD:
    JAPANESE_TEXT("PKビ-ムβ\0")
    ENGLISH_TEXT("PK Beam ß\0")

    .global gUnknown_08F25FB4
gUnknown_08F25FB4:
    JAPANESE_TEXT("PKビ-ムγ\0")
    ENGLISH_TEXT("PK Beam γ\0")

    .global gUnknown_08F25FBB
gUnknown_08F25FBB:
    JAPANESE_TEXT("PKビ-ムΩ\0")
    ENGLISH_TEXT("PK Beam Ω\0")

    .global gUnknown_08F25FC2
gUnknown_08F25FC2:
    JAPANESE_TEXT("PKサンダ-α\0")
    ENGLISH_TEXT("PK Thundera\0")

    .global gUnknown_08F25FCA
gUnknown_08F25FCA:
    JAPANESE_TEXT("PKサンダ-β\0")
    ENGLISH_TEXT("PK Thunderß\0")

    .global gUnknown_08F25FD2
gUnknown_08F25FD2:
    JAPANESE_TEXT("PKサンダ-γ\0")
    ENGLISH_TEXT("PK Thunderγ\0")

    .global gUnknown_08F25FDA
gUnknown_08F25FDA:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FDB
gUnknown_08F25FDB:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FDC
gUnknown_08F25FDC:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FDD
gUnknown_08F25FDD:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FDE
gUnknown_08F25FDE:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FDF
gUnknown_08F25FDF:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FE0
gUnknown_08F25FE0:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FE1
gUnknown_08F25FE1:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FE2
gUnknown_08F25FE2:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F25FE3
gUnknown_08F25FE3:
    JAPANESE_TEXT("いしきふめい\0")
    ENGLISH_TEXT("Uncon.\0")

    .global gUnknown_08F25FEA
gUnknown_08F25FEA:
    JAPANESE_TEXT("いしになった\0")
    ENGLISH_TEXT(" Stone\0")

    .global gUnknown_08F25FF1
gUnknown_08F25FF1:
    JAPANESE_TEXT("まひしている\0")
    ENGLISH_TEXT("Paral.\0")

    .global gUnknown_08F25FF8
gUnknown_08F25FF8:
    JAPANESE_TEXT("ねむっている\0")
    ENGLISH_TEXT("Asleep\0")

    .global gUnknown_08F25FFF
gUnknown_08F25FFF:
    JAPANESE_TEXT("こんらんした\0")
    ENGLISH_TEXT("Flust.\0")

    .global gUnknown_08F26006
gUnknown_08F26006:
    JAPANESE_TEXT("まどわされた\0")
    ENGLISH_TEXT("Confus\0")

    .global gUnknown_08F2600D
gUnknown_08F2600D:
    JAPANESE_TEXT("どくをうけた\0")
    ENGLISH_TEXT("Poison\0")

    .global gUnknown_08F26014
gUnknown_08F26014:
    JAPANESE_TEXT("かぜをひいた\0")
    ENGLISH_TEXT("  Cold\0")

    .global gUnknown_08F2601B
gUnknown_08F2601B:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2601C
gUnknown_08F2601C:
    JAPANESE_TEXT("Aコ-ス\0")
    ENGLISH_TEXT("Course A\0")

    .global gUnknown_08F26021
gUnknown_08F26021:
    JAPANESE_TEXT("Bコ-ス\0")
    ENGLISH_TEXT("Course B\0")

    .global gUnknown_08F26026
gUnknown_08F26026:
    JAPANESE_TEXT("Cコ-ス\0")
    ENGLISH_TEXT("Course C\0")

    .global gUnknown_08F2602B
gUnknown_08F2602B:
    JAPANESE_TEXT("ヒント1\0")
    ENGLISH_TEXT("Hint 1\0")

    .global gUnknown_08F26030
gUnknown_08F26030:
    JAPANESE_TEXT("ヒント2\0")
    ENGLISH_TEXT("Hint 2\0")

    .global gUnknown_08F26035
gUnknown_08F26035:
    JAPANESE_TEXT("ヒント3\0")
    ENGLISH_TEXT("Hint 3\0")

    .global gUnknown_08F2603A
gUnknown_08F2603A:
    JAPANESE_TEXT("どくけし\0")
    ENGLISH_TEXT("Antidote\0")

    .global gUnknown_08F2603F
gUnknown_08F2603F:
    JAPANESE_TEXT("どくけし\0")
    ENGLISH_TEXT("Antidote\0")

    .global gUnknown_08F26044
gUnknown_08F26044:
    JAPANESE_TEXT("どくけし\0")
    ENGLISH_TEXT("Antidote\0")

    .global gUnknown_08F26049
gUnknown_08F26049:
    JAPANESE_TEXT("どくけし\0")
    ENGLISH_TEXT("Antidote\0")

    .global gUnknown_08F2604E
gUnknown_08F2604E:
    JAPANESE_TEXT("ロケット(ほんもの)\0")
    ENGLISH_TEXT("Real Rocket\0")

    .global gUnknown_08F26059
gUnknown_08F26059:
    JAPANESE_TEXT("タイムマシン\0")
    ENGLISH_TEXT("Time Machine\0")

    .global gUnknown_08F26060
gUnknown_08F26060:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F26061
gUnknown_08F26061:
    JAPANESE_TEXT("マイホ-ム\0")
    ENGLISH_TEXT("Home\0")

    .global gUnknown_08F26067
gUnknown_08F26067:
    JAPANESE_TEXT("マザ-ズデイ\0")
    ENGLISH_TEXT("Mother'sDay\0")

    .global gUnknown_08F2606E
gUnknown_08F2606E:
    JAPANESE_TEXT("サンクスギビング\0")
    ENGLISH_TEXT("Thanksgiv.\0")

    .global gUnknown_08F26077
gUnknown_08F26077:
    JAPANESE_TEXT("レインディア\0")
    ENGLISH_TEXT("Reindeer\0")

    .global gUnknown_08F2607E
gUnknown_08F2607E:
    JAPANESE_TEXT("ハロウィ-ン\0")
    ENGLISH_TEXT("Halloween\0")

    .global gUnknown_08F26085
gUnknown_08F26085:
    JAPANESE_TEXT("スノ-マン\0")
    ENGLISH_TEXT("Snowman\0")

    .global gUnknown_08F2608B
gUnknown_08F2608B:
    JAPANESE_TEXT("イ-スタ-\0")
    ENGLISH_TEXT("Easter\0")

    .global gUnknown_08F26091
gUnknown_08F26091:
    JAPANESE_TEXT("バレンタイン\0")
    ENGLISH_TEXT("Valentine\0")

    .global gUnknown_08F26098
gUnknown_08F26098:
    JAPANESE_TEXT("サンタクロ-ス\0")
    ENGLISH_TEXT("Santa Claus\0")

    .global gUnknown_08F260A0
gUnknown_08F260A0:
    JAPANESE_TEXT("{MOVECURSOR}{0x08}{0x06}{DUPICATECHAR}{0x10}{0x01}{MOVECURSOR}{0x08}{0x07}{DUPICATECHAR}{0x10}{0x01}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x08}{0x06}{DUPICATECHAR}{0x10}{0x01}{MOVECURSOR}{0x08}{0x07}{DUPICATECHAR}{0x10}{0x01}\0")

    .global gUnknown_08F260B1
gUnknown_08F260B1:
    JAPANESE_TEXT("{0x03}{0x20}がおそいかかった!\0")
    ENGLISH_TEXT("{0x03}{0x20} suddenly attacked!\0")

    .global gUnknown_08F260BD
gUnknown_08F260BD:
    JAPANESE_TEXT("{0x03}{0x20}の こうげき!\0")
    ENGLISH_TEXT("{0x03}{0x20} attacks!\0")

    .global gUnknown_08F260C7
gUnknown_08F260C7:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}せんしゃほうを うった!\0")
    ENGLISH_TEXT("{0x03}{0x20} fired the tank cannon!\0")

    .global gUnknown_08F260D8
gUnknown_08F260D8:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}{0x03}{0x21}に かみついた!\0")
    ENGLISH_TEXT("{0x03}{0x20} bit {0x03}{0x21}!\0")

    .global gUnknown_08F260E7
gUnknown_08F260E7:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}{0x03}{0x21}を ひっかいた!\0")
    ENGLISH_TEXT("{0x03}{0x20} scratched {0x03}{0x21}!\0")

    .global gUnknown_08F260F6
gUnknown_08F260F6:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}{0x03}{0x21}に のしかかった!\0")
    ENGLISH_TEXT("{0x03}{0x20} bore down on {0x03}{0x21}!\0")

    .global gUnknown_08F26106
gUnknown_08F26106:
    JAPANESE_TEXT("{0x03}{0x20}は ぼうそうした!\0")
    ENGLISH_TEXT("{0x03}{0x20} went berserk!\0")

    .global gUnknown_08F26112
gUnknown_08F26112:
    JAPANESE_TEXT("{0x03}{0x20}の{BREAK}さいごの いちげき!!!\0")
    ENGLISH_TEXT("{0x03}{0x20}'s final desperation attack!!!\0")

    .global gUnknown_08F26123
gUnknown_08F26123:
    JAPANESE_TEXT("{0x03}{0x20}からの{BREAK}こうげきのしょうたいが つかめない!\0")
    ENGLISH_TEXT("You can't grasp the form of {0x03}{0x20}'s attack!\0")

    .global gUnknown_08F2613C
gUnknown_08F2613C:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}ねんえきを はきかけた!\0")
    ENGLISH_TEXT("{0x03}{0x20} spewed a a sticky substance!\0")

    .global gUnknown_08F2614D
gUnknown_08F2614D:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}しばられている……\0")
    ENGLISH_TEXT("{0x03}{0x20} is tied up...\0")

    .global gUnknown_08F2615B
gUnknown_08F2615B:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}ふしぎなさけびごえをあげた!\0")
    ENGLISH_TEXT("{0x03}{0x20} let out a strange howl!\0")

    .global gUnknown_08F2616E
gUnknown_08F2616E:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}ふてきに ほほえんだ\0")
    ENGLISH_TEXT("{0x03}{0x20} smiled boldly!\0")

    .global gUnknown_08F2617D
gUnknown_08F2617D:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}かっとなった!\0")
    ENGLISH_TEXT("{0x03}{0x20} flew into a rage!\0")

    .global gUnknown_08F26189
gUnknown_08F26189:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}いしきを かきみだした!\0")
    ENGLISH_TEXT("{0x03}{0x20} did something disturbing!\0")

    .global gUnknown_08F2619A
gUnknown_08F2619A:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}なかまを よんだ!\0")
    ENGLISH_TEXT("{0x03}{0x20} called for help!\0")

    .global gUnknown_08F261A8
gUnknown_08F261A8:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}たねを まいた!\0")
    ENGLISH_TEXT("{0x03}{0x20} sowed some seeds!\0")

    .global gUnknown_08F261B5
gUnknown_08F261B5:
    JAPANESE_TEXT("{0x03}{0x20}は わらいだした!\0")
    ENGLISH_TEXT("{0x03}{0x20} burst into laughter!\0")

    .global gUnknown_08F261C1
gUnknown_08F261C1:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}こわいことばを なげつけた!\0")
    ENGLISH_TEXT("{0x03}{0x20} said something scary!\0")

    .global gUnknown_08F261D4
gUnknown_08F261D4:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}きたないことばを なげつけた!\0")
    ENGLISH_TEXT("{0x03}{0x20} said something nasty!\0")

    .global gUnknown_08F261E8
gUnknown_08F261E8:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}けはいを ころしている\0")
    ENGLISH_TEXT("{0x03}{0x20} is trying to play dead...\0")

    .global gUnknown_08F261F8
gUnknown_08F261F8:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}わけがわからなくなっている\0")
    ENGLISH_TEXT("{0x03}{0x20} has lost sense of the situation.\0")

    .global gUnknown_08F2620A
gUnknown_08F2620A:
    JAPANESE_TEXT("{0x03}{0x20}は ねむっている…\0")
    ENGLISH_TEXT("{0x03}{0x20} is asleep...\0")

    .global gUnknown_08F26216
gUnknown_08F26216:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}エネルギ-を ちゅうにゅうした!\0")
    ENGLISH_TEXT("{0x03}{0x20} replenished energy!\0")

    .global gUnknown_08F2622B
gUnknown_08F2622B:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}にげだした!\0")
    ENGLISH_TEXT("{0x03}{0x20} ran away!\0")

    .global gUnknown_08F26236
gUnknown_08F26236:
    JAPANESE_TEXT(" ……だめでした\0")
    ENGLISH_TEXT("...It didn't work out.\0")

    .global gUnknown_08F2623F
gUnknown_08F2623F:
    JAPANESE_TEXT("{0x03}{0x20}は ころんだ\0")
    ENGLISH_TEXT("{0x03}{0x20} tripped and fell!\0")

    .global gUnknown_08F26248
gUnknown_08F26248:
    JAPANESE_TEXT("{0x03}{0x20}は うごけない……\0")
    ENGLISH_TEXT("{0x03}{0x20} can't move...\0")

    .global gUnknown_08F26254
gUnknown_08F26254:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}いしになっている……\0")
    ENGLISH_TEXT("{0x03}{0x20} has been petrified...\0")

    .global gUnknown_08F26263
gUnknown_08F26263:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}はいきガスを ふきかけた!\0")
    ENGLISH_TEXT("{0x03}{0x20} vented exhaust fumes!\0")

    .global gUnknown_08F26275
gUnknown_08F26275:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}ぜんそくの ほっさがでた{BREAK} ……ゴホ ゴホ ゴホ\0")
    ENGLISH_TEXT("{0x03}{0x20} had an asthma attack!{BREAK}...(cough cough cough)\0")

    .global gUnknown_08F26292
gUnknown_08F26292:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}おいのりをしている\0")
    ENGLISH_TEXT("{0x03}{0x20} is praying!\0")

    .global gUnknown_08F262A0
gUnknown_08F262A0:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}あいさつをして とおりすぎた\0")
    ENGLISH_TEXT("{0x03}{0x20} greeted everyone politely and left.\0")

    .global gUnknown_08F262B3
gUnknown_08F262B3:
    JAPANESE_TEXT("{0x03}{0x20}は みがまえている\0")
    ENGLISH_TEXT("{0x03}{0x20} is in a defensive stance!\0")

    .global gUnknown_08F262BF
gUnknown_08F262BF:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}うたを うたった!\0")
    ENGLISH_TEXT("{0x03}{0x20} sang!\0")

    .global gUnknown_08F262CD
gUnknown_08F262CD:
    JAPANESE_TEXT("{0x03}{0x20}は ガ-ドしている\0")
    ENGLISH_TEXT("{0x03}{0x20} is guarding.\0")

    .global gUnknown_08F262D9
gUnknown_08F262D9:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}にじりよってきた!\0")
    ENGLISH_TEXT("{0x03}{0x20} edged closer!\0")

    .global gUnknown_08F262E7
gUnknown_08F262E7:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}{0x03}{0x22}を つかった!\0")
    ENGLISH_TEXT("{0x03}{0x20} used p{0x03}{0x22}!\0")

    .global gUnknown_08F262F5
gUnknown_08F262F5:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}{0x03}{0x22}を こころみた!\0")
    ENGLISH_TEXT("{0x03}{0x20} tried {0x03}{0x22}!\0")

    .global gUnknown_08F26304
gUnknown_08F26304:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}{0x03}{0x22}を{BREAK}つかうことが できない!\0")
    ENGLISH_TEXT("{0x03}{0x20} can't use {0x03}{0x22}!\0")

    .global gUnknown_08F26319
gUnknown_08F26319:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}たちばを かんがえた…\0")
    ENGLISH_TEXT("{0x03}{0x20} is sizing up the situation...\0")

    .global gUnknown_08F26329
gUnknown_08F26329:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}なにか あやしいことをした\0")
    ENGLISH_TEXT("{0x03}{0x20} did something strange!\0")

    .global gUnknown_08F2633B
gUnknown_08F2633B:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}ぼ-っとしている\0")
    ENGLISH_TEXT("{0x03}{0x20} is spacing out.\0")

    .global gUnknown_08F26348
gUnknown_08F26348:
    JAPANESE_TEXT("{0x03}{0x20}は {0x03}{0x21}を{BREAK}チェックした\0")
    ENGLISH_TEXT("{0x03}{0x20} checked {0x03}{0x21}!\0")

    .global gUnknown_08F26357
gUnknown_08F26357:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}デ-モンシ-ドをつかった!\0")
    ENGLISH_TEXT("{0x03}{0x20} used a Demon Seed!\0")

    .global gUnknown_08F26369
gUnknown_08F26369:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}まひガスをつかった!\0")
    ENGLISH_TEXT("{0x03}{0x20} used paralysis gas!\0")

    .global gUnknown_08F26378
gUnknown_08F26378:
    JAPANESE_TEXT("{0x03}{0x20}は {0x03}{0x21}の{BREAK}{0x03}{0x22}を うばった!\0")
    ENGLISH_TEXT("{0x03}{0x20} stole {0x03}{0x21}'s {0x03}{0x22}!\0")

    .global gUnknown_08F2638A
gUnknown_08F2638A:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}ロ-プから ぬけだした\0")
    ENGLISH_TEXT("{0x03}{0x20} escaped from the rope!\0")

    .global gUnknown_08F2639A
gUnknown_08F2639A:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}めをさました\0")
    ENGLISH_TEXT("{0x03}{0x20} woke up!\0")

    .global gUnknown_08F263A5
gUnknown_08F263A5:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}くうかんを きりさいた!\0")
    ENGLISH_TEXT("{0x03}{0x20} tore a hole through space!{BREAK}\0")

    .global gUnknown_08F263B6
gUnknown_08F263B6:
    JAPANESE_TEXT("れんぞくこうげき!\0")
    ENGLISH_TEXT("Combo attack!\0")

    .global gUnknown_08F263C0
gUnknown_08F263C0:
    JAPANESE_TEXT("{BREAK}     YOU WIN!{BREAK}\0")
    ENGLISH_TEXT("{BREAK}         YOU WON!{BREAK}\0")

    .global gUnknown_08F263D0
gUnknown_08F263D0:
    JAPANESE_TEXT("{BREAK}{0x03}{0x16}{0x03}{0x17}は{BREAK}たたかいに やぶれた{BREAK}\0")
    ENGLISH_TEXT("{BREAK}{0x03}{0x16}{0x03}{0x17} was defeated...{BREAK}\0")

    .global gUnknown_08F263E3
gUnknown_08F263E3:
    JAPANESE_TEXT("{BREAK}しょうぶが つかない{BREAK}\0")
    ENGLISH_TEXT("{BREAK}No end to the battle is in sight...{BREAK}\0")

    .global gUnknown_08F263F0
gUnknown_08F263F0:
    JAPANESE_TEXT("せんしゃは こわれてしまった\0")
    ENGLISH_TEXT("The tank was scrapped...\0")

    .global gUnknown_08F263FF
gUnknown_08F263FF:
    JAPANESE_TEXT("{0x03}{0x3C} ねつにつよい\0")
    ENGLISH_TEXT("{0x03}{0x3C} Strong against heat\0")

    .global gUnknown_08F26409
gUnknown_08F26409:
    JAPANESE_TEXT("{0x03}{0x3C} さむさにつよい\0")
    ENGLISH_TEXT("{0x03}{0x3C} Strong against cold\0")

    .global gUnknown_08F26414
gUnknown_08F26414:
    JAPANESE_TEXT("{0x03}{0x3C} かみなりにつよい\0")
    ENGLISH_TEXT("{0x03}{0x3C} Strong against thunder\0")

    .global gUnknown_08F26420
gUnknown_08F26420:
    JAPANESE_TEXT("{0x03}{0x3C} ひかりにつよい\0")
    ENGLISH_TEXT("{0x03}{0x3C} Strong against light\0")

    .global gUnknown_08F2642B
gUnknown_08F2642B:
    JAPANESE_TEXT("{0x03}{0x3C} スプレ-によわい\0")
    ENGLISH_TEXT("{0x03}{0x3C} Strong against sprays\0")

    .global gUnknown_08F26437
gUnknown_08F26437:
    JAPANESE_TEXT("{0x03}{0x3C} オフェンス  {0x03}{0x23}\0")
    ENGLISH_TEXT("{0x03}{0x3C} Offense {0x03}{0x23}\0")

    .global gUnknown_08F26444
gUnknown_08F26444:
    JAPANESE_TEXT("{0x03}{0x3C} ディフェンス {0x03}{0x23}\0")
    ENGLISH_TEXT("{0x03}{0x3C} Defense {0x03}{0x23}\0")

    .global gUnknown_08F26451
gUnknown_08F26451:
    JAPANESE_TEXT("「{0x03}{0x10}!{BREAK}あなたの いちぞくには ほんとうに{BREAK}{WAIT}おせわになっています」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…{0x03}{0x10}! I owe a great deal to your family line!”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F2647B
gUnknown_08F2647B:
    JAPANESE_TEXT("「おさない わたしを そだててくれた{BREAK}ジョ-ジのつま……マリア」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…Maria, George's wife, raised me{BREAK}{WAIT}when I was very young...”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F264A1
gUnknown_08F264A1:
    JAPANESE_TEXT("「わたしたちのほしから たいせつな{BREAK}じょうほうを ぬすみだして{BREAK}{WAIT}わたしたちに はむかおうとした……{BREAK}ジョ-ジ」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…While George himself stole vital information{BREAK}{WAIT}from our planet and tried to turn against us...”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F264E0
gUnknown_08F264E0:
    JAPANESE_TEXT("「そして そのふうふの しそん{BREAK}また わたしたちの けいかくを{BREAK}{WAIT}じゃましようとしている……{BREAK}{0x03}{0x10}! あなたのことだ」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…And now their descendant{BREAK}{WAIT}is bent on hindering our plan again...{BREAK}{WAIT}{0x03}{0x10}! I am referring to you!”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26522
gUnknown_08F26522:
    JAPANESE_TEXT("「もう おかえりなさい みにくい{BREAK}ちきゅうじんたちと ともに{BREAK}{WAIT}ほろびてください」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…Now leave!{BREAK}{WAIT}May you be destroyed{BREAK}{WAIT}with the rest of the disgusting Earth people!”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26552
gUnknown_08F26552:
    JAPANESE_TEXT("「その むしけらのような ちからでは{BREAK}どうすることも できない」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…You are too weak to do anything!{BREAK}{WAIT}You are mere insects to me!”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26578
gUnknown_08F26578:
    JAPANESE_TEXT("「{0x03}{0x10}……あなただけ{BREAK}ひとりなら たすけてあげてもよい{BREAK}{WAIT}わたしと ともに マザ-シップに{BREAK}のりなさい」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…{0x03}{0x10}...{BREAK}{WAIT}I'm willing to let you, and only you, live.{BREAK}{WAIT}Board the mothership with me.”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F265B3
gUnknown_08F265B3:
    JAPANESE_TEXT("「……ならば ともだちや みにくい{BREAK}ちきゅうじんと いっしょに ここに{BREAK}{WAIT}ねむりなさい」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…...Then you can perish here with your friends{BREAK}{WAIT}and all the other hideous Earth people!”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F265E6
gUnknown_08F265E6:
    JAPANESE_TEXT("「うたうのを やめなさい」\0")
    ENGLISH_TEXT("…Stop singing!”\0")

    .global gUnknown_08F265F4
gUnknown_08F265F4:
    JAPANESE_TEXT("「うたを……やめろ」\0")
    ENGLISH_TEXT("…Stop... singing...!”\0")

    .global gUnknown_08F265FF
gUnknown_08F265FF:
    JAPANESE_TEXT("「う うたを やめろ!」\0")
    ENGLISH_TEXT("…S-stop singing!”\0")

    .global gUnknown_08F2660C
gUnknown_08F2660C:
    JAPANESE_TEXT("「うたを やめるんだ!」\0")
    ENGLISH_TEXT("…Stop singing!”\0")

    .global gUnknown_08F26619
gUnknown_08F26619:
    JAPANESE_TEXT("「ちきゅうの むしけらども!{BREAK}だまれ! うたうな!」\0")
    ENGLISH_TEXT("…You Earth insects!{BREAK}Shut up! Stop singing!”\0")

    .global gUnknown_08F26634
gUnknown_08F26634:
    JAPANESE_TEXT("「うたを……」\0")
    ENGLISH_TEXT("…Stop...”\0")

    .global gUnknown_08F2663C
gUnknown_08F2663C:
    JAPANESE_TEXT("「やめろ!」\0")
    ENGLISH_TEXT("…...singing!”\0")

    .global gUnknown_08F26643
gUnknown_08F26643:
    JAPANESE_TEXT("「!!!」\0")
    ENGLISH_TEXT("…!!!”\0")

    .global gUnknown_08F26649
gUnknown_08F26649:
    JAPANESE_TEXT("「や……」\0")
    ENGLISH_TEXT("…Stop...”\0")

    .global gUnknown_08F2664F
gUnknown_08F2664F:
    JAPANESE_TEXT("「!!!!」\0")
    ENGLISH_TEXT("…!!!”\0")

    .global gUnknown_08F26656
gUnknown_08F26656:
    JAPANESE_TEXT("「……………」\0")
    ENGLISH_TEXT("….........”\0")

    .global gUnknown_08F2665E
gUnknown_08F2665E:
    JAPANESE_TEXT("「ナゼ コノワタシガ コンナウタニ{BREAK}ヤブレタノダ……」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…HOW COULD I BE DEFEATED BY THIS SONG...?”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F2667F
gUnknown_08F2667F:
    JAPANESE_TEXT("「ワタシハ カナラズ オマエタチヲ{BREAK}…………マタ……イツカ……」{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…SOMEDAY I WILL RETURN... AND... MAKE YOU...”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F266A5
gUnknown_08F266A5:
    JAPANESE_TEXT("「{0x03}{0x10}! また あおう!」{BREAK}{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("…{0x03}{0x10}! We will meet again!”{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F266B9
gUnknown_08F266B9:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} すばやく よけた\0")
    ENGLISH_TEXT("{0x03}{0x21} dodged quickly!\0")

    .global gUnknown_08F266C8
gUnknown_08F266C8:
    JAPANESE_TEXT("  {SMAAAASH}\0")
    ENGLISH_TEXT("{SMAAAASH}\0")

    .global gUnknown_08F266CD
gUnknown_08F266CD:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} {0x03}{0x23}の ダメ-ジをうけた\0")
    ENGLISH_TEXT("{0x03}{0x21} took {0x03}{0x23} damage!\0")

    .global gUnknown_08F266E0
gUnknown_08F266E0:
    JAPANESE_TEXT(" {0x03}{0x21}を{BREAK} やっつけた!\0")
    ENGLISH_TEXT("Defeated the {0x03}{0x21}!\0")

    .global gUnknown_08F266ED
gUnknown_08F266ED:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} きずつきたおれた\0")
    ENGLISH_TEXT("{0x03}{0x21} got tired and collapsed...\0")

    .global gUnknown_08F266FC
gUnknown_08F266FC:
    JAPANESE_TEXT(" しかし {0x03}{0x21}は{BREAK} すでにいなかった\0")
    ENGLISH_TEXT("But {0x03}{0x21} was already gone.\0")

    .global gUnknown_08F2670F
gUnknown_08F2670F:
    JAPANESE_TEXT(" {0x03}{0x21}には{BREAK} こうかがなかった\0")
    ENGLISH_TEXT("No effect on {0x03}{0x21}!\0")

    .global gUnknown_08F2671F
gUnknown_08F2671F:
    JAPANESE_TEXT(" {0x03}{0x20}は ちからつきた\0")
    ENGLISH_TEXT("{0x03}{0x20} ran out of strength!\0")

    .global gUnknown_08F2672B
gUnknown_08F2672B:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} バリアに つつまれた\0")
    ENGLISH_TEXT("{0x03}{0x21} was enveloped in a barrier!\0")

    .global gUnknown_08F2673C
gUnknown_08F2673C:
    JAPANESE_TEXT(" 「おまえの おかあさんは{BREAK}  ないているぞ!」\0")
    ENGLISH_TEXT("…You're a disgrace to your mom!”\0")

    .global gUnknown_08F26755
gUnknown_08F26755:
    JAPANESE_TEXT(" {0x03}{0x21}は いしになった\0")
    ENGLISH_TEXT("{0x03}{0x21} turned to stone!\0")

    .global gUnknown_08F26761
gUnknown_08F26761:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} めがみえなくなった!\0")
    ENGLISH_TEXT("{0x03}{0x21} was blinded!\0")

    .global gUnknown_08F26772
gUnknown_08F26772:
    JAPANESE_TEXT(" {0x03}{0x20}は{BREAK} ばくはつした!\0")
    ENGLISH_TEXT("{0x03}{0x20} exploded!\0")

    .global gUnknown_08F26780
gUnknown_08F26780:
    JAPANESE_TEXT(" {0x03}{0x20}は{BREAK} もえあがった!\0")
    ENGLISH_TEXT("{0x03}{0x20} burst into flames!\0")

    .global gUnknown_08F2678E
gUnknown_08F2678E:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} オフェンスが {0x03}{0x23}あがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Offense went up by {0x03}{0x23}!\0")

    .global gUnknown_08F267A2
gUnknown_08F267A2:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} オフェンスが {0x03}{0x23}さがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Offense went down by {0x03}{0x23}!\0")

    .global gUnknown_08F267B6
gUnknown_08F267B6:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} ディフェンスが {0x03}{0x23}あがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Defense went up by {0x03}{0x23}!\0")

    .global gUnknown_08F267CB
gUnknown_08F267CB:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} スピ-ドが {0x03}{0x23}あがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Speed went went up by {0x03}{0x23}!\0")

    .global gUnknown_08F267DE
gUnknown_08F267DE:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} ファイトが {0x03}{0x23}さがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Fight went down by {0x03}{0x23}!\0")

    .global gUnknown_08F267F1
gUnknown_08F267F1:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} ディフェンスが {0x03}{0x23}さがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Defense went down by {0x03}{0x23}!\0")

    .global gUnknown_08F26806
gUnknown_08F26806:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} ファイトが {0x03}{0x23}あがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Fight went up by {0x03}{0x23}!\0")

    .global gUnknown_08F26819
gUnknown_08F26819:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} スピ-ドが {0x03}{0x23}さがった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s Speed went down by {0x03}{0x23}!\0")

    .global gUnknown_08F2682C
gUnknown_08F2682C:
    JAPANESE_TEXT(" なぜか {0x03}{0x21}の{BREAK} けいけんちが あがった\0")
    ENGLISH_TEXT("For some reason, {0x03}{0x21}'s experience points went up!\0")

    .global gUnknown_08F26842
gUnknown_08F26842:
    JAPANESE_TEXT(" せっとくに せいこうした\0")
    ENGLISH_TEXT("It was effective!\0")

    .global gUnknown_08F26850
gUnknown_08F26850:
    JAPANESE_TEXT(" せっとくに しっぱいした\0")
    ENGLISH_TEXT("It wasn't very convincing.\0")

    .global gUnknown_08F2685E
gUnknown_08F2685E:
    JAPANESE_TEXT(" {0x03}{0x21}を おこらせた\0")
    ENGLISH_TEXT("{0x03}{0x21} became angry!\0")

    .global gUnknown_08F26869
gUnknown_08F26869:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} ききてきじょうたいに おちいった\0")
    ENGLISH_TEXT("{0x03}{0x21} fell into a critical state!\0")

    .global gUnknown_08F26880
gUnknown_08F26880:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} わけがわからなくなった\0")
    ENGLISH_TEXT("{0x03}{0x21} lost all sense of the situation!\0")

    .global gUnknown_08F26892
gUnknown_08F26892:
    JAPANESE_TEXT(" {0x03}{0x21}を ねむらせた\0")
    ENGLISH_TEXT("{0x03}{0x21} fell asleep!\0")

    .global gUnknown_08F2689D
gUnknown_08F2689D:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} PPが {0x03}{0x23}かいふくした!\0")
    ENGLISH_TEXT("{0x03}{0x21} recovered {0x03}{0x23} PP!\0")

    .global gUnknown_08F268B1
gUnknown_08F268B1:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} HPが {0x03}{0x23}かいふくした!\0")
    ENGLISH_TEXT("{0x03}{0x21} recovered {0x03}{0x23} HP!\0")

    .global gUnknown_08F268C5
gUnknown_08F268C5:
    JAPANESE_TEXT(" しかし だれもきてくれなかったのだ\0")
    ENGLISH_TEXT("But no one came.\0")

    .global gUnknown_08F268D8
gUnknown_08F268D8:
    JAPANESE_TEXT(" し-ん………\0")
    ENGLISH_TEXT("(silence...)\0")

    .global gUnknown_08F268E0
gUnknown_08F268E0:
    JAPANESE_TEXT(" {0x03}{0x21}が くわわった!\0")
    ENGLISH_TEXT("{0x03}{0x21} joined the battle!\0")

    .global gUnknown_08F268EC
gUnknown_08F268EC:
    JAPANESE_TEXT(" {0x03}{0x21}の PPを{BREAK} {0x03}{0x23}うばった\0")
    ENGLISH_TEXT("Stole {0x03}{0x23} PP from {0x03}{0x21}!\0")

    .global gUnknown_08F268FD
gUnknown_08F268FD:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} うごけなくなった\0")
    ENGLISH_TEXT("{0x03}{0x21} is immobilized!\0")

    .global gUnknown_08F2690C
gUnknown_08F2690C:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} どくに おかされた\0")
    ENGLISH_TEXT("{0x03}{0x21} was poisoned!\0")

    .global gUnknown_08F2691C
gUnknown_08F2691C:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} すいぶんを すいとられた\0")
    ENGLISH_TEXT("{0x03}{0x21} was dehydrated!\0")

    .global gUnknown_08F2692F
gUnknown_08F2692F:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} ちょうのうりょくを ふうじられた\0")
    ENGLISH_TEXT("{0x03}{0x21}'s powers were blocked!\0")

    .global gUnknown_08F26946
gUnknown_08F26946:
    JAPANESE_TEXT(" {0x03}{0x21}を{BREAK} ロ-プで しばった\0")
    ENGLISH_TEXT("{0x03}{0x21} was tied up with rope!\0")

    .global gUnknown_08F26956
gUnknown_08F26956:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} シ-ルドに つつまれた\0")
    ENGLISH_TEXT("{0x03}{0x21} was enveloped by a shield!\0")

    .global gUnknown_08F26968
gUnknown_08F26968:
    JAPANESE_TEXT(" からぶり-っ!\0")
    ENGLISH_TEXT("Missed!\0")

    .global gUnknown_08F26971
gUnknown_08F26971:
    JAPANESE_TEXT(" しかし ちょうのうりょくは{BREAK} ふうじられていた\0")
    ENGLISH_TEXT("But the PSI was blocked!\0")

    .global gUnknown_08F2698A
gUnknown_08F2698A:
    JAPANESE_TEXT(" しかし {0x03}{0x21}の{BREAK} フランクリンバッヂが{BREAK} こうせんを はねかえした!\0")
    ENGLISH_TEXT("But {0x03}{0x21}'s Franklin Badge reflected the beam back!\0")

    .global gUnknown_08F269AE
gUnknown_08F269AE:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} こうげきを はねかえした!\0")
    ENGLISH_TEXT("{0x03}{0x21} reflected the attack back!\0")

    .global gUnknown_08F269C2
gUnknown_08F269C2:
    JAPANESE_TEXT(" PPが たりない\0")
    ENGLISH_TEXT("Not enough PP!\0")

    .global gUnknown_08F269CC
gUnknown_08F269CC:
    JAPANESE_TEXT(" {0x03}{0x21}には{BREAK} こうかが なかった\0")
    ENGLISH_TEXT("There was no effect on {0x03}{0x21}!\0")

    .global gUnknown_08F269DD
gUnknown_08F269DD:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} からだのどくが きえた\0")
    ENGLISH_TEXT("The poison disappeared from {0x03}{0x21}'s body!\0")

    .global gUnknown_08F269EF
gUnknown_08F269EF:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} われに かえった\0")
    ENGLISH_TEXT("{0x03}{0x21} went back to normal!\0")

    .global gUnknown_08F269FE
gUnknown_08F269FE:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} かゆみに もだえた\0")
    ENGLISH_TEXT("{0x03}{0x21} writhed around in itchy pain!\0")

    .global gUnknown_08F26A0E
gUnknown_08F26A0E:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} うごきを とりもどした\0")
    ENGLISH_TEXT("{0x03}{0x21} is able to move again!\0")

    .global gUnknown_08F26A20
gUnknown_08F26A20:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} めをさました\0")
    ENGLISH_TEXT("{0x03}{0x21} woke up!\0")

    .global gUnknown_08F26A2D
gUnknown_08F26A2D:
    JAPANESE_TEXT(" {0x03}{0x21}を{BREAK} カムバックさせた!!!\0")
    ENGLISH_TEXT("{0x03}{0x21} was revived!!!\0")

    .global gUnknown_08F26A3F
gUnknown_08F26A3F:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} シ-ルドを はかいした\0")
    ENGLISH_TEXT("{0x03}{0x21}'s shield was destroyed!\0")

    .global gUnknown_08F26A51
gUnknown_08F26A51:
    JAPANESE_TEXT(" {0x03}{0x21}の{BREAK} ぜんそくがなおった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s asthma attack went away!\0")

    .global gUnknown_08F26A61
gUnknown_08F26A61:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} やわらかくなった\0")
    ENGLISH_TEXT("{0x03}{0x21} softened!\0")

    .global gUnknown_08F26A70
gUnknown_08F26A70:
    JAPANESE_TEXT(" 「すき」\0")
    ENGLISH_TEXT("…I like you!”\0")

    .global gUnknown_08F26A76
gUnknown_08F26A76:
    JAPANESE_TEXT(" 「きらい」\0")
    ENGLISH_TEXT("…I hate you!”\0")

    .global gUnknown_08F26A7D
gUnknown_08F26A7D:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} ぜんそくの ほっさがでた\0")
    ENGLISH_TEXT("{0x03}{0x21} had an asthma attack!\0")

    .global gUnknown_08F26A90
gUnknown_08F26A90:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} われにかえった!\0")
    ENGLISH_TEXT("{0x03}{0x21} went back to normal!\0")

    .global gUnknown_08F26A9F
gUnknown_08F26A9F:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} おとなしくなった!\0")
    ENGLISH_TEXT("{0x03}{0x21} became tame!\0")

    .global gUnknown_08F26AAF
gUnknown_08F26AAF:
    JAPANESE_TEXT(" {0x03}{0x21}を たおした!\0")
    ENGLISH_TEXT("{0x03}{0x21} was defeated!\0")

    .global gUnknown_08F26ABA
gUnknown_08F26ABA:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} はかいされた!\0")
    ENGLISH_TEXT("{0x03}{0x21} was destroyed!\0")

    .global gUnknown_08F26AC8
gUnknown_08F26AC8:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} つちにかえった!\0")
    ENGLISH_TEXT("{0x03}{0x21} returned to the dust of the earth!\0")

    .global gUnknown_08F26AD7
gUnknown_08F26AD7:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} もう うごかない\0")
    ENGLISH_TEXT("{0x03}{0x21} stopped moving!\0")

    .global gUnknown_08F26AE6
gUnknown_08F26AE6:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} ポンコツになった!\0")
    ENGLISH_TEXT("{0x03}{0x21} was scrapped!\0")

    .global gUnknown_08F26AF6
gUnknown_08F26AF6:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} かきけされた!\0")
    ENGLISH_TEXT("{0x03}{0x21} disappeared into thin air!\0")

    .global gUnknown_08F26B04
gUnknown_08F26B04:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} こんらんから たちなおった\0")
    ENGLISH_TEXT("{0x03}{0x21}'s confusion went away!\0")

    .global gUnknown_08F26B18
gUnknown_08F26B18:
    JAPANESE_TEXT(" しかし こうかが なかった\0")
    ENGLISH_TEXT("But there was no effect!\0")

    .global gUnknown_08F26B27
gUnknown_08F26B27:
    JAPANESE_TEXT(" {0x03}{0x22}は{BREAK} こわれてしまった……\0")
    ENGLISH_TEXT("The {0x03}{0x22} broke...\0")

    .global gUnknown_08F26B38
gUnknown_08F26B38:
    JAPANESE_TEXT(" {0x03}{0x22}は{BREAK} ただの いしになった……\0")
    ENGLISH_TEXT("The {0x03}{0x22} turned into an ordinary stone...\0")

    .global gUnknown_08F26B4B
gUnknown_08F26B4B:
    JAPANESE_TEXT(" {0x03}{0x22}は{BREAK} からになった……\0")
    ENGLISH_TEXT("The {0x03}{0x22} was fully emptied...\0")

    .global gUnknown_08F26B5A
gUnknown_08F26B5A:
    JAPANESE_TEXT("{0x03}{0x20}は{BREAK}レベルが あがった!{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("{0x03}{0x20} leveled up!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26B6E
gUnknown_08F26B6E:
    JAPANESE_TEXT(" さいだいHPが {0x03}{0x23} UP{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Max HP went up {0x03}{0x23}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26B82
gUnknown_08F26B82:
    JAPANESE_TEXT(" さいだいPPが {0x03}{0x23} UP{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Max PP went up {0x03}{0x23}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26B96
gUnknown_08F26B96:
    JAPANESE_TEXT(" ファイトが {0x03}{0x23} UP{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Fight went up {0x03}{0x23}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26BA8
gUnknown_08F26BA8:
    JAPANESE_TEXT(" スピ-ドが {0x03}{0x23} UP{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Speed went up {0x03}{0x23}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26BBA
gUnknown_08F26BBA:
    JAPANESE_TEXT(" かしこさが {0x03}{0x23} UP{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Wisdom went up {0x03}{0x23}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26BCC
gUnknown_08F26BCC:
    JAPANESE_TEXT(" たいりょくが {0x03}{0x23} UP{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Strength went up {0x03}{0x23}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26BDF
gUnknown_08F26BDF:
    JAPANESE_TEXT(" フォ-スが {0x03}{0x23} UP{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Force went up {0x03}{0x23}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26BF1
gUnknown_08F26BF1:
    JAPANESE_TEXT("{0x03}{0x20}は たたかいのなかで{BREAK}PSIを おぼえた!{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("{0x03}{0x20} learned a new PSI in battle!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26C0E
gUnknown_08F26C0E:
    JAPANESE_TEXT("{0x03}{0x1D}を ひろった!{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("Picked up q{0x03}{0x1D}!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26C1D
gUnknown_08F26C1D:
    JAPANESE_TEXT("({0x03}{0x16}には どこからか{BREAK}クイ-ンマリ-のこえが きこえた){BREAK}{WAIT}ちからでは ギ-グには かてません…{BREAK}{WAIT}どんなぶきでも かれを たおすことは{BREAK}できないでしょう……{BREAK}{WAIT}でも こもりうたなら…{BREAK}わたしがうたった あのうたなら!?!{BREAK}{WAIT}{0x03}{0x01}\0")
    ENGLISH_TEXT("(From somewhere,{BREAK}{WAIT}{0x03}{0x16} heard Queen Mary's voice...){BREAK}{WAIT}You can't beat Giygas with brute strength...{BREAK}{WAIT}I doubt any weapon can defeat him...{BREAK}{WAIT}But the lullaby...{BREAK}{WAIT}Maybe the song I used to sing to him can stop him!{BREAK}{WAIT}{0x03}{0x01}\0")

    .global gUnknown_08F26C96
gUnknown_08F26C96:
    JAPANESE_TEXT(" {0x03}{0x21}は{BREAK} かんぜんに かいふくした!\0")
    ENGLISH_TEXT("{0x03}{0x21} recovered completely!\0")

    .global gUnknown_08F26CAA
gUnknown_08F26CAA:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F26CAB
gUnknown_08F26CAB:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F26CAC
gUnknown_08F26CAC:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F26CAD
gUnknown_08F26CAD:
    JAPANESE_TEXT("{MOVECURSOR}{0x00}{0x00}{0x03}{0x08}{0x03}{0x0E}コマンド{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} はなす  {0x03}{0x0B}{BREAK}{0x03}{0x0A} チェック {0x03}{0x0B}{BREAK}{0x03}{0x0A} PSI  {0x03}{0x0B}{BREAK}{0x03}{0x0A} グッズ  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x00}{0x00}{0x03}{0x08}Command{0x03}{0x09}{BREAK}{0x03}{0x0A} Talk  {0x03}{0x0B}{BREAK}{0x03}{0x0A} Check {0x03}{0x0B}{BREAK}{0x03}{0x0A} PSI   {0x03}{0x0B}{BREAK}{0x03}{0x0A} Goods {0x03}{0x0B}{BREAK}{0x03}{0x0C}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26CF4
gUnknown_08F26CF4:
    JAPANESE_TEXT("{MOVECURSOR}{0x15}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x07}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}${0x03}{0x1F}{ZEROES}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x07}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x15}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x07}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}${0x03}{0x1F}{ZEROES}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x07}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26D13
gUnknown_08F26D13:
    JAPANESE_TEXT("{0x03}{0x08}{0x03}{0x0E}NAME{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x0E}HP{0xDB}{0x03}{0x0E}PP{0xDB}{0x03}{0x0E}LV{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x0E}EX{0x03}{0x09}{BREAK}\0")
    ENGLISH_TEXT("{0x03}{0x08}{0xDB}Name{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}HP{0xDB}{0xDB}PP{0xDB}{0xDB}Lv{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}Exp{0x03}{0x09}{BREAK}\0")

    .global gUnknown_08F26D3A
gUnknown_08F26D3A:
    JAPANESE_TEXT("{0x03}{0x0A}{DUPICATECHAR}{0x07}{0x01}\0")
    ENGLISH_TEXT("{0x03}{0x0A}{DUPICATECHAR}{0x07}{0x01}\0")

    .global gUnknown_08F26D41
gUnknown_08F26D41:
    JAPANESE_TEXT("{0x03}{0x0C}{DUPICATECHAR}{0x1C}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{0x03}{0x0C}{DUPICATECHAR}{0x1C}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26D4A
gUnknown_08F26D4A:
    JAPANESE_TEXT("{MOVECURSOR}{0x08}{0x0E}{0x03}{0x08}{DUPICATECHAR}{0x14}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x14}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x14}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x14}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x14}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x14}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x09}{0x0F}{0x03}{0x05}{0x14}{0x04}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x00}{0x0E}{0x03}{0x08}{DUPICATECHAR}{0x1C}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x1C}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x01}{0x0F}{0x03}{0x05}{0x1C}{0x04}\0")

    .global gUnknown_08F26D8C
gUnknown_08F26D8C:
    JAPANESE_TEXT("{MOVECURSOR}{0x04}{0x02}{0x03}{0x08} {0x03}{0x0F}{DUPICATECHAR}{0x16}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x18}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x04}{0x02}{0x03}{0x08} {0x03}{0x0F}{DUPICATECHAR}{0x16}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x18}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26DC9
gUnknown_08F26DC9:
    JAPANESE_TEXT("{MOVECURSOR}{0x00}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x12}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x12}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x12}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x12}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x00}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x13}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x13}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x13}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x13}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x13}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x13}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26E03
gUnknown_08F26E03:
    JAPANESE_TEXT("{0x03}{0x08}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} だれ? {0x03}{0x0B}{BREAK}{0x03}{0x0C}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{0x03}{0x08}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Who? {0x03}{0x0B}{BREAK}{0x03}{0x0C}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26E21
gUnknown_08F26E21:
    JAPANESE_TEXT("{MOVECURSOR}{0x17}{0x03}{0x03}{0x08}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} つかう {0x03}{0x0B}{BREAK}{0x03}{0x0A} たべる {0x03}{0x0B}{BREAK}{0x03}{0x0A} わたす {0x03}{0x0B}{BREAK}{0x03}{0x0A} すてる {0x03}{0x0B}{BREAK}{0x03}{0x0A} せつめい{0x03}{0x0B}{BREAK}{0x03}{0x0C}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x16}{0x03}{0x03}{0x08}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Use  {0x03}{0x0B}{BREAK}{0x03}{0x0A} Eat  {0x03}{0x0B}{BREAK}{0x03}{0x0A} Give {0x03}{0x0B}{BREAK}{0x03}{0x0A} Drop {0x03}{0x0B}{BREAK}{0x03}{0x0A} Info {0x03}{0x0B}{BREAK}{0x03}{0x0C}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26E6B
gUnknown_08F26E6B:
    JAPANESE_TEXT("{MOVECURSOR}{0x04}{0x01}{0x03}{0x08}{DUPICATECHAR}{0x16}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} ABCDEFG HIJKLMN ◆もどる {0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} OPQRSTU VWXYZ.- ◆おわり {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x16}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x04}{0x01}{0x03}{0x08}{DUPICATECHAR}{0x16}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} ABCDEFG HIJKLMN @Back{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} OPQRSTU VWXYZ.- @OK  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x16}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F26ED2
gUnknown_08F26ED2:
    JAPANESE_TEXT("{MOVECURSOR}{0x09}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x08}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x08}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x08}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x00}{0x03}{0x03}{0x08}{0xDB}{0x03}{0x0E}STATE{DUPICATECHAR}{0x07}{0xDB}{0x03}{0x09}{0x03}{0x08}{0xDB} {0x03}{0x0F}PSI{DUPICATECHAR}{0x06}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x07}{0x01}{0x03}{0x24} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} LV{0x03}{0x2D}{DUPICATECHAR}{0x08}{0x01}{0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} HP{0x03}{0x2E}/{0x03}{0x2F} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} PP{0x03}{0x30}/{0x03}{0x31} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0E}{0x01}{0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} オフェンス {0x03}{0x32} {0x03}{0x0B}{0x03}{0x0C}{DUPICATECHAR}{0x0C}{0xFB}{0x03}{0x0D}{BREAK}{0x03}{0x3D}{0x03}{0x0A} ディフェンス{0x03}{0x33} {0x03}{0x0B}{0x03}{0x08}{0xDB}{0x03}{0x0E}EQUIP{DUPICATECHAR}{0x05}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} ファイト  {0x03}{0x34} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} スピ-ド  {0x03}{0x35} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} かしこさ  {0x03}{0x36} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} たいりょく {0x03}{0x37} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} フォ-ス  {0x03}{0x38} {0x03}{0x0B}{0x03}{0x0C}{DUPICATECHAR}{0x0C}{0xFB}{0x03}{0x0D}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0E}{0x01}{0x03}{0x0B}{0x03}{0x08}{0xDB}{0x03}{0x0E}MELODY{DUPICATECHAR}{0x04}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} EX  {0x03}{0x39} {0x03}{0x0B}{0x03}{0x0A} {0x03}{0x3A}   {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0E}{0xFB}{0x03}{0x0D}{0x03}{0x0C}{DUPICATECHAR}{0x0C}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x09}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x08}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x08}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x08}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x00}{0x03}{0x03}{0x08}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}Status{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x09}{0x03}{0x08}{0xDB} {0x03}{0x0F}PSI{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x07}{0x01}{0x03}{0x24} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} Level{0x03}{0x2D}{DUPICATECHAR}{0x05}{0x01}{0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} HP  {0x03}{0x2E}/{0x03}{0x2F} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} PP  {0x03}{0x30}/{0x03}{0x31} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0E}{0x01}{0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} Offense {0x03}{0x32} {0x03}{0x0B}{0x03}{0x0C}{DUPICATECHAR}{0x0C}{0xFB}{0x03}{0x0D}{BREAK}{0x03}{0x3D}{0x03}{0x0A} Defense {0x03}{0x33} {0x03}{0x0B}{0x03}{0x08}{0xDB}{0xDB}Equipment{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Fight   {0x03}{0x34} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} Speed   {0x03}{0x35} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} Wisdom  {0x03}{0x36} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} Strength{0x03}{0x37} {0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} Force   {0x03}{0x38} {0x03}{0x0B}{0x03}{0x0C}{DUPICATECHAR}{0x0C}{0xFB}{0x03}{0x0D}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0E}{0x01}{0x03}{0x0B}{0x03}{0x08}{0xDB}{0xDB}Melodies{DUPICATECHAR}{0x02}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Exp.{0x03}{0x39} {0x03}{0x0B}{0x03}{0x0A}  {0x03}{0x3A}  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0E}{0xFB}{0x03}{0x0D}{0x03}{0x0C}{DUPICATECHAR}{0x0C}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F27068
gUnknown_08F27068:
    JAPANESE_TEXT("{MOVECURSOR}{0x11}{0x04}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x11}{0x04}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}{BREAK}{DUPICATECHAR}{0x0C}{0x01}\0")

    .global gUnknown_08F27085
gUnknown_08F27085:
    JAPANESE_TEXT("  {0x03}{0x08}{0xDB}{0x03}{0x0E}GAME( ){DUPICATECHAR}{0x0D}{0xDB}{0x03}{0x09}{BREAK}  {0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}  {0x03}{0x0A}{DUPICATECHAR}{0x07}{0x01}ゲ-ムをはじめる{DUPICATECHAR}{0x07}{0x01}{0x03}{0x0B}{BREAK}  {0x03}{0x0C}{DUPICATECHAR}{0x16}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x1B}{0x01}\0")
    ENGLISH_TEXT("{0x03}{0x08}{0xDB}GAME( ){0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1A}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}     Start a New Game     {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x1A}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x1B}{0x01}\0")

    .global gUnknown_08F270CC
gUnknown_08F270CC:
    JAPANESE_TEXT("  {0x03}{0x08}{0xDB}{0x03}{0x0E}{DUPICATECHAR}{0x06}{0x01}LV  {0xDB}{0xDB}{0xDB}{0x03}{0x0E}ひょうじ{0xDB}{0xDB}{0x03}{0x09}{BREAK}  {0x03}{0x0A}{DUPICATECHAR}{0x16}{0x01}{0x03}{0x0B}{BREAK}  {0x03}{0x0A} つづき  うつす  けす{DUPICATECHAR}{0x09}{0x01}{0x03}{0x0B}{BREAK}  {0x03}{0x0C}{DUPICATECHAR}{0x16}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x1B}{0x01}\0")
    ENGLISH_TEXT("{0x03}{0x08}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}Lv.{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}{0xDB}Speed{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1A}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A} Continue Copy Erase      {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x1A}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x1B}{0x01}\0")

    .global gUnknown_08F2711C
gUnknown_08F2711C:
    JAPANESE_TEXT("おそい  \0")
    ENGLISH_TEXT("VSlow\0")

    .global gUnknown_08F27122
gUnknown_08F27122:
    JAPANESE_TEXT("ややおそい\0")
    ENGLISH_TEXT("Slow \0")

    .global gUnknown_08F27128
gUnknown_08F27128:
    JAPANESE_TEXT("ふつう  \0")
    ENGLISH_TEXT("Norm.\0")

    .global gUnknown_08F2712E
gUnknown_08F2712E:
    JAPANESE_TEXT("ややはやい\0")
    ENGLISH_TEXT("VFast\0")

    .global gUnknown_08F27134
gUnknown_08F27134:
    JAPANESE_TEXT("はやい  \0")
    ENGLISH_TEXT("Fast \0")

    .global gUnknown_08F2713A
gUnknown_08F2713A:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F2713B
gUnknown_08F2713B:
    JAPANESE_TEXT("{MOVECURSOR}{0x05}{0x0F}{DUPICATECHAR}{0x14}{0x01}{BREAK}{DUPICATECHAR}{0x14}{0x01}{BREAK}{DUPICATECHAR}{0x14}{0x01}{BREAK}{DUPICATECHAR}{0x14}{0x01}{BREAK}{DUPICATECHAR}{0x14}{0x01}{BREAK}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x01}{0x0F}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{BREAK}\0")

    .global gUnknown_08F27159
gUnknown_08F27159:
    JAPANESE_TEXT("{MOVECURSOR}{0x07}{0x10}{0x03}{0x08}{DUPICATECHAR}{0x0D}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} どこへ うつしますか? {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0D}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x03}{0x10}{0x03}{0x08}{DUPICATECHAR}{0x16}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Copy to which slot?  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x16}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F27181
gUnknown_08F27181:
    JAPANESE_TEXT("{MOVECURSOR}{0x05}{0x0F}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}       LV  の きろくに {0x03}{0x0B}{BREAK}{0x03}{0x0A} うわがきしても よろしいですか? {0x03}{0x0B}{BREAK}{0x03}{0x0A}     はい   いいえ     {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x05}{0x0F}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}       LV  ì Ê{0x51}Ìé {0x03}{0x0B}{BREAK}{0x03}{0x0A} Ã{0x52}ÉÊÓä{0x46} {0x4C}{0x51}ÓÁåÕÈ? {0x03}{0x0B}{BREAK}{0x03}{0x0A}     íÁ   ÁÁÅ     {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F271DC
gUnknown_08F271DC:
    JAPANESE_TEXT("{MOVECURSOR}{0x05}{0x0F}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}       LV  の きろくを {0x03}{0x0B}{BREAK}{0x03}{0x0A} けしても よろしいですか?    {0x03}{0x0B}{BREAK}{0x03}{0x0A}     はい   いいえ     {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x03}{0x0F}{0x03}{0x08}{DUPICATECHAR}{0x16}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}        Lv.           {0x03}{0x0B}{BREAK}{0x03}{0x0A} Erase this file?     {0x03}{0x0B}{BREAK}{0x03}{0x0A}    Yes   No          {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x16}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F27237
gUnknown_08F27237:
    JAPANESE_TEXT("{MOVECURSOR}{0x01}{0x02}{0x03}{0x28}{0x03}{0x29}{0x03}{0x29}{DUPICATECHAR}{0x0E}{0xDB}{0x03}{0x09}{0x03}{0x08}{DUPICATECHAR}{0x08}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x27}{0x03}{0x26}{0x03}{0x26}{DUPICATECHAR}{0x0E}{0x01}{0x03}{0x0B}{0x03}{0x0A}{DUPICATECHAR}{0x08}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x2A}{0x03}{0x2B}{0x03}{0x2B}{DUPICATECHAR}{0x0E}{0xFB}{0x03}{0x0D}{0x03}{0x0C}{DUPICATECHAR}{0x08}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{MOVECURSOR}{0x01}{0x06}{0x03}{0x08}{DUPICATECHAR}{0x1A}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} あいうえお アイウエオ がぎぐげご ABCDEF {0x03}{0x0B}{BREAK}{0x03}{0x0A} かきくけこ カキクケコ ざじずぜぞ GHIJKL {0x03}{0x0B}{BREAK}{0x03}{0x0A} さしすせそ サシスセソ だぢづでど MNOPQR {0x03}{0x0B}{BREAK}{0x03}{0x0A} たちつてと タチツテト ばびぶべぼ STUVWX {0x03}{0x0B}{BREAK}{0x03}{0x0A} なにぬねの ナニヌネノ ぱぴぷぺぽ YZ・-.  {0x03}{0x0B}{BREAK}{0x03}{0x0A} はひふへほ ハヒフヘホ ガギグゲゴ ぁぃぅぇぉっ {0x03}{0x0B}{BREAK}{0x03}{0x0A} まみむめも マミムメモ ザジズゼゾ ゃゅょャュョ {0x03}{0x0B}{BREAK}{0x03}{0x0A} や ゆ よ ヤ ユ ヨ ダヂヅデド ァィゥェォッ {0x03}{0x0B}{BREAK}{0x03}{0x0A} らりるれろ ラリルレロ バビブベボ  ◆もどる  {0x03}{0x0B}{BREAK}{0x03}{0x0A} わ を ん ワ ヲ ン パピプペポ  ◆おわり  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x1A}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x01}{0x01}{0x03}{0x28}{0x03}{0x29}{0x03}{0x29}{DUPICATECHAR}{0x18}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x27}{0x03}{0x26}{0x03}{0x26}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x27}{0x03}{0x26}{0x03}{0x26}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x2A}{0x03}{0x2B}{0x03}{0x2B}{DUPICATECHAR}{0x18}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{MOVECURSOR}{0x01}{0x06}{0x03}{0x08}{DUPICATECHAR}{0x1A}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} ABCDE abcde ÀÁÂÃÄ àáâãä  {0x03}{0x0B}{BREAK}{0x03}{0x0A} FGHIJ fghij ÅÆÇÈÉ åæçèé  {0x03}{0x0B}{BREAK}{0x03}{0x0A} KLMNO klmno ÊËÌÍÎ êëìíî  {0x03}{0x0B}{BREAK}{0x03}{0x0A} PQRST pqrst ÏÑŒÒÓ ïñœòó  {0x03}{0x0B}{BREAK}{0x03}{0x0A} UVWXY uvwxy ÔÕÖØÙ ôõöøù  {0x03}{0x0B}{BREAK}{0x03}{0x0A} Z     z     ÚÛÜÝŸ úûüýÿ  {0x03}{0x0B}{BREAK}{0x03}{0x0A} 12345 67890 .!?¡¿ $♪-/   {0x03}{0x0B}{BREAK}{0x03}{0x0A}                          {0x03}{0x0B}{BREAK}{0x03}{0x0A}                    @Back {0x03}{0x0B}{BREAK}{0x03}{0x0A}                    @OK   {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x1A}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F273CA
gUnknown_08F273CA:
    JAPANESE_TEXT("なまえを つけてください\0")
    ENGLISH_TEXT("Name this boy.\0")

    .global gUnknown_08F273D7
gUnknown_08F273D7:
    JAPANESE_TEXT("おんなのこの なまえは?\0")
    ENGLISH_TEXT("Name this girl.\0")

    .global gUnknown_08F273E4
gUnknown_08F273E4:
    JAPANESE_TEXT("ともだちの なまえは? \0")
    ENGLISH_TEXT("Name this friend.\0")

    .global gUnknown_08F273F1
gUnknown_08F273F1:
    JAPANESE_TEXT("もうひとりのともだちは?\0")
    ENGLISH_TEXT("Name this other friend.\0")

    .global gUnknown_08F273FE
gUnknown_08F273FE:
    JAPANESE_TEXT("{MOVECURSOR}{0x01}{0x02}{0x03}{0x08}{0xDB}{0xDB}{BREAK}{0x03}{0x0A} すきな こんだては なに?{BREAK}{0x03}{0x0C}{0xFB}{0xFB}\0")
    ENGLISH_TEXT("What's your fav. food?\0")

    .global gUnknown_08F2741D
gUnknown_08F2741D:
    JAPANESE_TEXT("{MOVECURSOR}{0x07}{0x0E}{0x03}{0x08}{DUPICATECHAR}{0x0E}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} これで よろしいですか? {0x03}{0x0B}{BREAK}{0x03}{0x0A}   はい   いいえ   {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0E}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x07}{0x0E}{0x03}{0x08}{DUPICATECHAR}{0x0E}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Is this OK?  {0x03}{0x0B}{BREAK}{0x03}{0x0A}   Yes  No    {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0E}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F27459
gUnknown_08F27459:
    JAPANESE_TEXT("すきなこんだて \0")
    ENGLISH_TEXT("Fav.Food \0")

    .global gUnknown_08F27462
gUnknown_08F27462:
    JAPANESE_TEXT("{MOVECURSOR}{0x0C}{0x04}{0x03}{0x08}{DUPICATECHAR}{0x0E}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} このなまえは つかえない {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0E}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x06}{0x04}{0x03}{0x08}{DUPICATECHAR}{0x14}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}  Name not allowed  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x14}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F2748B
gUnknown_08F2748B:
    JAPANESE_TEXT("ジョ-ジ{BREAK}マリア{BREAK}ミミ-{BREAK}ミニ-{BREAK}ピッピ{BREAK}ダンカン{BREAK}ロ-ズマリ-{BREAK}バグエラ-{BREAK}ス-ジ-{BREAK}アボット{BREAK}ロ-ラ{BREAK}ギ-グ{BREAK}ガリクソン{BREAK}イヴ{BREAK}      {BREAK}     {BREAK}    {BREAK}   {BREAK}  {BREAK} {BREAK}{BREAK}\0")
    ENGLISH_TEXT("ABC{BREAK}George{BREAK}Mimmie{BREAK}Minnie{BREAK}Pippi{BREAK}Duncan{BREAK}Suzy{BREAK}Abbot{BREAK}Laura{BREAK}Gyiyg{BREAK}Giegue{BREAK}Giygas{BREAK}Mary{BREAK}Maria{BREAK}EVE{BREAK}Eve{BREAK} {BREAK}  {BREAK}   {BREAK}    {BREAK}     {BREAK}      {BREAK}\0")

    .global gUnknown_08F274EA
gUnknown_08F274EA:
    JAPANESE_TEXT("1900ねんだいの はじめ{BREAK} {BREAK}アメリカのいなかまちに くろくものようなかげがおち{BREAK} {BREAK}ひとくみの ふうふが ゆくえふめいに なりました。{BREAK} {BREAK}おっとのなは ジョ-ジ。 つまのなは マリア。{BREAK} {BREAK}2ねんほどして ジョ-ジは いえにもどりましたが{BREAK} {BREAK}どこにいっていたのか なにをしていたのかについて{BREAK} {BREAK}だれに はなすこともなく ふしぎなけんきゅうに{BREAK} {BREAK}ぼっとうするようになりました。{BREAK} {BREAK}つまの マリアのほうは{BREAK} {BREAK}とうとう かえっては きませんでした。\0")
    ENGLISH_TEXT("In the early 1900s, a dark{BREAK}shadow fell over a rural{BREAK}town in America. Shortly{BREAK}after, a married couple{BREAK}mysteriously vanished.{BREAK}{BREAK}The man's name was George.{BREAK}The woman's name was Maria.{BREAK}{BREAK}Two years later, George{BREAK}returned home but never{BREAK}told anyone where he had{BREAK}been or what he had done.{BREAK}Instead, he deeply immersed{BREAK}himself in strange research.{BREAK}{BREAK}As for his wife, Maria...{BREAK}she never returned.\0")

    .global gUnknown_08F275D0
gUnknown_08F275D0:
    JAPANESE_TEXT("1988ねん マザ-ズデイのまちはずれ\0")
    ENGLISH_TEXT("1988, outside the town{BREAK}of Mother's Day...\0")

    .global gUnknown_08F275E4
gUnknown_08F275E4:
    JAPANESE_TEXT("{MOVECURSOR}{0x04}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x14}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x14}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x14}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x14}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x14}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x05}{0x01}{0x03}{0x05}{0x14}{0x03}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x01}{0x00}{0x03}{0x08}{DUPICATECHAR}{0x1A}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1A}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1A}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x1A}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x1A}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x02}{0x01}{0x03}{0x05}{0x1A}{0x03}\0")

    .global gUnknown_08F2761D
gUnknown_08F2761D:
    JAPANESE_TEXT("{MOVECURSOR}{0x04}{0x00}{DUPICATECHAR}{0x16}{0x01}{BREAK}{DUPICATECHAR}{0x16}{0x01}{BREAK}{DUPICATECHAR}{0x16}{0x01}{BREAK}{DUPICATECHAR}{0x16}{0x01}{BREAK}{DUPICATECHAR}{0x16}{0x01}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x01}{0x00}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}{BREAK}{DUPICATECHAR}{0x1C}{0x01}\0")

    .global gUnknown_08F2763A
gUnknown_08F2763A:
    JAPANESE_TEXT("{MOVECURSOR}{0x0A}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} たたかう     オ-ト     {0x03}{0x0B}{BREAK}{0x03}{0x0A} PSI      ガ-ド     {0x03}{0x0B}{BREAK}{0x03}{0x0A} グッズ      にげる     {0x03}{0x0B}{BREAK}{0x03}{0x0A} チェック     せってい    {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x0A}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Fight    Auto    {0x03}{0x0B}{BREAK}{0x03}{0x0A} PSI      Guard   {0x03}{0x0B}{BREAK}{0x03}{0x0A} Goods    Run     {0x03}{0x0B}{BREAK}{0x03}{0x0A} Check    Setup   {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F276AC
gUnknown_08F276AC:
    JAPANESE_TEXT("{MOVECURSOR}{0x0A}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} たたかう     オ-ト     {0x03}{0x0B}{BREAK}{0x03}{0x0A} PSI      ガ-ド     {0x03}{0x0B}{BREAK}{0x03}{0x0A} グッズ      ♪うたう    {0x03}{0x0B}{BREAK}{0x03}{0x0A} チェック     せってい    {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x0A}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Fight    Auto    {0x03}{0x0B}{BREAK}{0x03}{0x0A} PSI      Guard   {0x03}{0x0B}{BREAK}{0x03}{0x0A} Goods    ♪Sing   {0x03}{0x0B}{BREAK}{0x03}{0x0A} Check    Setup   {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F2771E
gUnknown_08F2771E:
    JAPANESE_TEXT("{MOVECURSOR}{0x00}{0x14}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x00}{0x14}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}{BREAK}{DUPICATECHAR}{0x1F}{0x01}\0")

    .global gUnknown_08F27740
gUnknown_08F27740:
    JAPANESE_TEXT("{MOVECURSOR}{0x00}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x08}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x08}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x08}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x0A}{0x01}{BREAK}{DUPICATECHAR}{0x0A}{0x01}{BREAK}{DUPICATECHAR}{0x0A}{0x01}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x00}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x08}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x08}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x08}{0xFB}{0x03}{0x0D}{BREAK}{DUPICATECHAR}{0x0A}{0x01}{BREAK}{DUPICATECHAR}{0x0A}{0x01}{BREAK}{DUPICATECHAR}{0x0A}{0x01}\0")

    .global gUnknown_08F2776E
gUnknown_08F2776E:
    JAPANESE_TEXT("{MOVECURSOR}{0x0F}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x0C}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0C}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0C}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x0D}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x0F}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0F}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0F}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0F}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x0F}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x0F}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F277A8
gUnknown_08F277A8:
    JAPANESE_TEXT("{MOVECURSOR}{0x04}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x18}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x18}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x04}{0x14}{0x03}{0x08}{DUPICATECHAR}{0x18}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x18}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x18}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F277E2
gUnknown_08F277E2:
    JAPANESE_TEXT("{MOVECURSOR}{0x05}{0x14} {0x03}{0x0F}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x05}{0x14} {0x03}{0x0F}\0")

    .global gUnknown_08F277EA
gUnknown_08F277EA:
    JAPANESE_TEXT("{MOVECURSOR}{0xFF}{0xFF}{0x03}{0x21}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0xFF}{0xFF}{0x03}{0x21}\0")

    .global gUnknown_08F277F1
gUnknown_08F277F1:
    JAPANESE_TEXT("{MOVECURSOR}{0x03}{0xFF}{0x03}{0x21}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x03}{0xFF}{0x03}{0x21}\0")

    .global gUnknown_08F277F8
gUnknown_08F277F8:
    JAPANESE_TEXT("{0x03}{0x21}\0")
    ENGLISH_TEXT("{0x03}{0x21}\0")

    .global gUnknown_08F277FB
gUnknown_08F277FB:
    JAPANESE_TEXT("{0x03}{0x3C}\0")
    ENGLISH_TEXT("{0x03}{0x3C}\0")

    .global gUnknown_08F277FE
gUnknown_08F277FE:
    JAPANESE_TEXT("{MOVECURSOR}{0x0A}{0x17}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} せんとうちゅうは つかえない   {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x0A}{0x17}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}  Can't use this  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F2782B
gUnknown_08F2782B:
    JAPANESE_TEXT("{MOVECURSOR}{0x0A}{0x17}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} せんとうちゅうは そうびできない {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x0A}{0x17}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A} Can't equip now  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F27858
gUnknown_08F27858:
    JAPANESE_TEXT("{MOVECURSOR}{0x0A}{0x17}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x12}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x0D}{0x18}{0x03}{0x20}は つかえない\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x0A}{0x17}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}{DUPICATECHAR}{0x12}{0x01}{0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}{MOVECURSOR}{0x0C}{0x18}{0x03}{0x20} can't use\0")

    .global gUnknown_08F27884
gUnknown_08F27884:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F27885
gUnknown_08F27885:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .global gUnknown_08F27886
gUnknown_08F27886:
    JAPANESE_TEXT("{MOVECURSOR}{0x02}{0x15}{0x03}{0x20}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x02}{0x15}{0x03}{0x20}\0")

    .global gUnknown_08F2788D
gUnknown_08F2788D:
    JAPANESE_TEXT("{MOVECURSOR}{0x0A}{0x15}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}      ひょうじそくど     {0x03}{0x0B}{BREAK}{0x03}{0x0A} (おそい) (ふつう) (はやい){0x03}{0x0B}{BREAK}{0x03}{0x0A}   1  2  3  4  5  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")
    ENGLISH_TEXT("{MOVECURSOR}{0x0A}{0x15}{0x03}{0x08}{DUPICATECHAR}{0x12}{0xDB}{0x03}{0x09}{BREAK}{0x03}{0x0A}    Text Speed    {0x03}{0x0B}{BREAK}{0x03}{0x0A} (Slow)     (Fast){0x03}{0x0B}{BREAK}{0x03}{0x0A}   1  2  3  4  5  {0x03}{0x0B}{BREAK}{0x03}{0x0C}{DUPICATECHAR}{0x12}{0xFB}{0x03}{0x0D}\0")

    .global gUnknown_08F278E8
gUnknown_08F278E8:
    JAPANESE_TEXT("  はい     いいえ\0")
    ENGLISH_TEXT("  íÁ     ÁÁÅ\0")

    .global gUnknown_08F278F5
gUnknown_08F278F5:
    JAPANESE_TEXT("たち\0")
    ENGLISH_TEXT("'s party\0")

    .global gUnknown_08F278F8
gUnknown_08F278F8:
    JAPANESE_TEXT("あずかりもの\0")
    ENGLISH_TEXT("Stored Goods\0")

    .global gUnknown_08F278FF
gUnknown_08F278FF:
    JAPANESE_TEXT("{0x03}{0x0E}どこへ?\0")
    ENGLISH_TEXT("{0xDB}Where to?\0")

    .global gUnknown_08F27906
gUnknown_08F27906:
    JAPANESE_TEXT("◆{0x03}{0x1A}は バッグから{BREAK}{0x03}{0x1C}を だして{BREAK}また もどした。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} took out the{BREAK}{0x03}{0x1C} and then put it{BREAK}away again.{BREAK}\0")

    .global gUnknown_08F27923
gUnknown_08F27923:
    JAPANESE_TEXT("◆{0x03}{0x1A}は{BREAK}いしきが ない。{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x1A} is unconscious.{BREAK}\0")

    .global gUnknown_08F27932
gUnknown_08F27932:
    JAPANESE_TEXT("◆あやしげな けはいが……。{BREAK}\0")
    ENGLISH_TEXT("@Danger seems to be lurking{BREAK}nearby...{BREAK} \0")

    .global gUnknown_08F27942
gUnknown_08F27942:
    JAPANESE_TEXT("◆たいへんな ことが おきている!{BREAK}\0")
    ENGLISH_TEXT("@Things are going crazy!{BREAK} \0")

    .global gUnknown_08F27955
gUnknown_08F27955:
    JAPANESE_TEXT("◆わすれられたおとこの はなしを{BREAK}きいたことが あるけど{BREAK}{WAIT}◆どんな はなしか わすれちゃった。{BREAK}\0")
    ENGLISH_TEXT("@I've heard about a man who{BREAK}was forgotten...{BREAK}{WAIT}@But I forget what his story{BREAK}was.{BREAK}\0")

    .global gUnknown_08F27988
gUnknown_08F27988:
    JAPANESE_TEXT("◆しんじようが しんじまいが{BREAK}わたしは ヒ-ラ-。{BREAK}{WAIT}◆PPを かいふくしたり{BREAK}いしになったのを なおせるが{BREAK}さて どうしたい?{BREAK}\0")
    ENGLISH_TEXT("@Though you may not{BREAK}believe it, I'm a{BREAK}healer.{BREAK}{WAIT}@I can restore your{BREAK}PP or heal friends{BREAK}turned to stone.{BREAK}{WAIT}@So, what can I do{BREAK}for you?{BREAK}\0")

    .global gUnknown_08F279CB
gUnknown_08F279CB:
    JAPANESE_TEXT("◆ぶきを おさがしでしたら{BREAK}こちらは いかがでしょうか。{BREAK}\0")
    ENGLISH_TEXT("@If you're looking for a{BREAK}weapon, check these out!{BREAK}\0")

    .global gUnknown_08F279E9
gUnknown_08F279E9:
    JAPANESE_TEXT("◆ありがとうございました。{BREAK}\0")
    ENGLISH_TEXT("@Thank you!{BREAK}\0")

    .global gUnknown_08F279F8
gUnknown_08F279F8:
    JAPANESE_TEXT("◆({0x03}{0x3E}は{BREAK}そっと がくふを よんだ。){BREAK}\0")
    ENGLISH_TEXT("@({0x03}{0x3E} looked over the{BREAK}sheet music.){BREAK}\0")

    .global gUnknown_08F27A0E
gUnknown_08F27A0E:
    JAPANESE_TEXT("◆ぜんいん かんぜんに かいふくした!{BREAK}\0")
    ENGLISH_TEXT("@The entire party was{BREAK}healed!{BREAK}\0")

    .global gUnknown_08F27A23
gUnknown_08F27A23:
    JAPANESE_TEXT("◆{0x03}{0x10}は そうそふの{BREAK}かすかな きおくを かんじた!{BREAK}\0")
    ENGLISH_TEXT("@{0x03}{0x10} sensed a faint{BREAK}memory of his{BREAK}great-grandfather!{BREAK}\0")

    .global gUnknown_08F27A3F
gUnknown_08F27A3F:
    JAPANESE_TEXT("◆おや? イヴの からだの なかに{BREAK}まだ なにか あるようだ……{BREAK}\0")
    ENGLISH_TEXT("@Huh? There still seems to{BREAK}be something inside EVE's{BREAK}body...{BREAK}\0")

    .global gUnknown_08F27A61
gUnknown_08F27A61:
    JAPANESE_TEXT("◆あなたの キャッシュカ-ド{BREAK}おへやに おちてたわよ。{BREAK}\0")
    ENGLISH_TEXT("@I found your ATM Card on{BREAK}the floor in your room.{BREAK}\0")

    .global gUnknown_08F27A7E
gUnknown_08F27A7E:
    JAPANESE_TEXT("◆あら もちきれないみたいね。{BREAK}\0")
    ENGLISH_TEXT("@Oh, it looks like you can't{BREAK}carry any more stuff.{BREAK}\0")

    .global gUnknown_08F27A8F
gUnknown_08F27A8F:
    JAPANESE_TEXT("\0")
    ENGLISH_TEXT("\0")

    .align 2
    .global gUnknown_08F27A90
gUnknown_08F27A90:
    .word gUnknown_08F1BCEC @ 0000 / 0x0000
    .word gUnknown_08F1BCFB @ 0001 / 0x0001
    .word gUnknown_08F1BD23 @ 0002 / 0x0002
    .word gUnknown_08F1BD3D @ 0003 / 0x0003
    .word gUnknown_08F1BD45 @ 0004 / 0x0004
    .word gUnknown_08F1BD62 @ 0005 / 0x0005
    .word gUnknown_08F1BD7B @ 0006 / 0x0006
    .word 0                 @ 0007 / 0x0007
    .word gUnknown_08F1BD9E @ 0008 / 0x0008
    .word gUnknown_08F1BDB9 @ 0009 / 0x0009
    .word gUnknown_08F1BE0C @ 0010 / 0x000A
    .word gUnknown_08F1BE4A @ 0011 / 0x000B
    .word gUnknown_08F1BE5B @ 0012 / 0x000C
    .word gUnknown_08F1BE6C @ 0013 / 0x000D
    .word gUnknown_08F1BE88 @ 0014 / 0x000E
    .word 0                 @ 0015 / 0x000F
    .word 0                 @ 0016 / 0x0010
    .word 0                 @ 0017 / 0x0011
    .word 0                 @ 0018 / 0x0012
    .word gUnknown_08F1BF65 @ 0019 / 0x0013
    .word gUnknown_08F1BF73 @ 0020 / 0x0014
    .word gUnknown_08F1BF7C @ 0021 / 0x0015
    .word gUnknown_08F1BFDD @ 0022 / 0x0016
    .word gUnknown_08F1C000 @ 0023 / 0x0017
    .word gUnknown_08F1C013 @ 0024 / 0x0018
    .word 0                 @ 0025 / 0x0019
    .word 0                 @ 0026 / 0x001A
    .word gUnknown_08F1C02A @ 0027 / 0x001B
    .word gUnknown_08F1C06D @ 0028 / 0x001C
    .word gUnknown_08F1C09D @ 0029 / 0x001D
    .word gUnknown_08F1C0BE @ 0030 / 0x001E
    .word 0                 @ 0031 / 0x001F
    .word 0                 @ 0032 / 0x0020
    .word gUnknown_08F1C0D0 @ 0033 / 0x0021
    .word 0                 @ 0034 / 0x0022
    .word gUnknown_08F1C0D9 @ 0035 / 0x0023
    .word gUnknown_08F1C0F7 @ 0036 / 0x0024
    .word gUnknown_08F1C119 @ 0037 / 0x0025
    .word gUnknown_08F1C125 @ 0038 / 0x0026
    .word gUnknown_08F1C142 @ 0039 / 0x0027
    .word gUnknown_08F1C159 @ 0040 / 0x0028
    .word gUnknown_08F1C167 @ 0041 / 0x0029
    .word gUnknown_08F1C178 @ 0042 / 0x002A
    .word gUnknown_08F1C182 @ 0043 / 0x002B
    .word gUnknown_08F1C198 @ 0044 / 0x002C
    .word gUnknown_08F1C1A4 @ 0045 / 0x002D
    .word gUnknown_08F1C1AC @ 0046 / 0x002E
    .word gUnknown_08F1C1C4 @ 0047 / 0x002F
    .word gUnknown_08F1C1E3 @ 0048 / 0x0030
    .word gUnknown_08F1C1F4 @ 0049 / 0x0031
    .word gUnknown_08F1C210 @ 0050 / 0x0032
    .word gUnknown_08F1C22F @ 0051 / 0x0033
    .word gUnknown_08F1C236 @ 0052 / 0x0034
    .word gUnknown_08F1C259 @ 0053 / 0x0035
    .word gUnknown_08F1C277 @ 0054 / 0x0036
    .word gUnknown_08F1C29A @ 0055 / 0x0037
    .word gUnknown_08F1C2BE @ 0056 / 0x0038
    .word gUnknown_08F1C2D8 @ 0057 / 0x0039
    .word gUnknown_08F1C2F8 @ 0058 / 0x003A
    .word gUnknown_08F1C33C @ 0059 / 0x003B
    .word 0                 @ 0060 / 0x003C
    .word gUnknown_08F1C349 @ 0061 / 0x003D
    .word gUnknown_08F1C378 @ 0062 / 0x003E
    .word gUnknown_08F1C3AF @ 0063 / 0x003F
    .word gUnknown_08F1C3F3 @ 0064 / 0x0040
    .word gUnknown_08F1C40F @ 0065 / 0x0041
    .word gUnknown_08F1C451 @ 0066 / 0x0042
    .word gUnknown_08F1C46E @ 0067 / 0x0043
    .word 0                 @ 0068 / 0x0044
    .word 0                 @ 0069 / 0x0045
    .word gUnknown_08F1C520 @ 0070 / 0x0046
    .word gUnknown_08F1C55C @ 0071 / 0x0047
    .word gUnknown_08F1C5AB @ 0072 / 0x0048
    .word gUnknown_08F1C5C1 @ 0073 / 0x0049
    .word gUnknown_08F1C5F1 @ 0074 / 0x004A
    .word gUnknown_08F1C63F @ 0075 / 0x004B
    .word gUnknown_08F1C679 @ 0076 / 0x004C
    .word gUnknown_08F1C6A3 @ 0077 / 0x004D
    .word gUnknown_08F1C6C1 @ 0078 / 0x004E
    .word gUnknown_08F1C6DA @ 0079 / 0x004F
    .word gUnknown_08F1C6EB @ 0080 / 0x0050
    .word gUnknown_08F1C6FF @ 0081 / 0x0051
    .word gUnknown_08F1C712 @ 0082 / 0x0052
    .word gUnknown_08F1C729 @ 0083 / 0x0053
    .word gUnknown_08F1C73B @ 0084 / 0x0054
    .word gUnknown_08F1C75E @ 0085 / 0x0055
    .word gUnknown_08F1C76F @ 0086 / 0x0056
    .word gUnknown_08F1C776 @ 0087 / 0x0057
    .word gUnknown_08F1C77D @ 0088 / 0x0058
    .word gUnknown_08F1C796 @ 0089 / 0x0059
    .word gUnknown_08F1C7B1 @ 0090 / 0x005A
    .word gUnknown_08F1C7BC @ 0091 / 0x005B
    .word gUnknown_08F1C7E4 @ 0092 / 0x005C
    .word 0                 @ 0093 / 0x005D
    .word gUnknown_08F1C832 @ 0094 / 0x005E
    .word gUnknown_08F1C852 @ 0095 / 0x005F
    .word gUnknown_08F1C884 @ 0096 / 0x0060
    .word gUnknown_08F1C8A9 @ 0097 / 0x0061
    .word gUnknown_08F1C8BA @ 0098 / 0x0062
    .word gUnknown_08F1C8E9 @ 0099 / 0x0063
    .word gUnknown_08F1C8F5 @ 0100 / 0x0064
    .word gUnknown_08F1C911 @ 0101 / 0x0065
    .word gUnknown_08F1C932 @ 0102 / 0x0066
    .word gUnknown_08F1C945 @ 0103 / 0x0067
    .word gUnknown_08F1C965 @ 0104 / 0x0068
    .word gUnknown_08F1C989 @ 0105 / 0x0069
    .word gUnknown_08F1C99D @ 0106 / 0x006A
    .word 0                 @ 0107 / 0x006B
    .word gUnknown_08F1C9ED @ 0108 / 0x006C
    .word gUnknown_08F1CA07 @ 0109 / 0x006D
    .word gUnknown_08F1CA23 @ 0110 / 0x006E
    .word gUnknown_08F1CA48 @ 0111 / 0x006F
    .word 0                 @ 0112 / 0x0070
    .word gUnknown_08F1CA85 @ 0113 / 0x0071
    .word gUnknown_08F1CAAE @ 0114 / 0x0072
    .word gUnknown_08F1CAD0 @ 0115 / 0x0073
    .word gUnknown_08F1CAEB @ 0116 / 0x0074
    .word gUnknown_08F1CB14 @ 0117 / 0x0075
    .word gUnknown_08F1CB44 @ 0118 / 0x0076
    .word gUnknown_08F1CB53 @ 0119 / 0x0077
    .word gUnknown_08F1CB62 @ 0120 / 0x0078
    .word gUnknown_08F1CB7E @ 0121 / 0x0079
    .word gUnknown_08F1CBA7 @ 0122 / 0x007A
    .word gUnknown_08F1CBBA @ 0123 / 0x007B
    .word gUnknown_08F1CBDD @ 0124 / 0x007C
    .word gUnknown_08F1CBF4 @ 0125 / 0x007D
    .word gUnknown_08F1CC05 @ 0126 / 0x007E
    .word gUnknown_08F1CC24 @ 0127 / 0x007F
    .word gUnknown_08F1CC52 @ 0128 / 0x0080
    .word gUnknown_08F1CC7D @ 0129 / 0x0081
    .word gUnknown_08F1CC9E @ 0130 / 0x0082
    .word 0                 @ 0131 / 0x0083
    .word gUnknown_08F1CCF9 @ 0132 / 0x0084
    .word gUnknown_08F1CD26 @ 0133 / 0x0085
    .word gUnknown_08F1CD7F @ 0134 / 0x0086
    .word gUnknown_08F1CD89 @ 0135 / 0x0087
    .word gUnknown_08F1CDAA @ 0136 / 0x0088
    .word gUnknown_08F1CDB2 @ 0137 / 0x0089
    .word gUnknown_08F1CDCC @ 0138 / 0x008A
    .word gUnknown_08F1CE05 @ 0139 / 0x008B
    .word gUnknown_08F1CE21 @ 0140 / 0x008C
    .word 0                 @ 0141 / 0x008D
    .word 0                 @ 0142 / 0x008E
    .word gUnknown_08F1CE49 @ 0143 / 0x008F
    .word gUnknown_08F1CE88 @ 0144 / 0x0090
    .word gUnknown_08F1CE91 @ 0145 / 0x0091
    .word gUnknown_08F1CEB3 @ 0146 / 0x0092
    .word gUnknown_08F1CECB @ 0147 / 0x0093
    .word gUnknown_08F1CEEA @ 0148 / 0x0094
    .word 0                 @ 0149 / 0x0095
    .word gUnknown_08F1CF20 @ 0150 / 0x0096
    .word gUnknown_08F1CF3F @ 0151 / 0x0097
    .word gUnknown_08F1CF61 @ 0152 / 0x0098
    .word gUnknown_08F1CF70 @ 0153 / 0x0099
    .word gUnknown_08F1CF94 @ 0154 / 0x009A
    .word gUnknown_08F1CFAC @ 0155 / 0x009B
    .word gUnknown_08F1CFCF @ 0156 / 0x009C
    .word gUnknown_08F1CFF1 @ 0157 / 0x009D
    .word gUnknown_08F1D004 @ 0158 / 0x009E
    .word 0                 @ 0159 / 0x009F
    .word 0                 @ 0160 / 0x00A0
    .word gUnknown_08F1D04B @ 0161 / 0x00A1
    .word gUnknown_08F1D076 @ 0162 / 0x00A2
    .word gUnknown_08F1D087 @ 0163 / 0x00A3
    .word gUnknown_08F1D0A8 @ 0164 / 0x00A4
    .word gUnknown_08F1D0C5 @ 0165 / 0x00A5
    .word gUnknown_08F1D0EB @ 0166 / 0x00A6
    .word gUnknown_08F1D118 @ 0167 / 0x00A7
    .word gUnknown_08F1D130 @ 0168 / 0x00A8
    .word gUnknown_08F1D14F @ 0169 / 0x00A9
    .word gUnknown_08F1D17A @ 0170 / 0x00AA
    .word gUnknown_08F1D1AE @ 0171 / 0x00AB
    .word 0                 @ 0172 / 0x00AC
    .word gUnknown_08F1D1B8 @ 0173 / 0x00AD
    .word gUnknown_08F1D1CE @ 0174 / 0x00AE
    .word 0                 @ 0175 / 0x00AF
    .word gUnknown_08F1D299 @ 0176 / 0x00B0
    .word gUnknown_08F1D2DF @ 0177 / 0x00B1
    .word gUnknown_08F1D311 @ 0178 / 0x00B2
    .word gUnknown_08F1D41D @ 0179 / 0x00B3
    .word gUnknown_08F27955 @ 0180 / 0x00B4
    .word gUnknown_08F27988 @ 0181 / 0x00B5
    .word gUnknown_08F1D45B @ 0182 / 0x00B6
    .word gUnknown_08F1DA21 @ 0183 / 0x00B7
    .word gUnknown_08F1D46B @ 0184 / 0x00B8
    .word gUnknown_08F1D4A0 @ 0185 / 0x00B9
    .word gUnknown_08F1D4AE @ 0186 / 0x00BA
    .word gUnknown_08F1D503 @ 0187 / 0x00BB
    .word gUnknown_08F1D542 @ 0188 / 0x00BC
    .word gUnknown_08F1D57B @ 0189 / 0x00BD
    .word gUnknown_08F1D639 @ 0190 / 0x00BE
    .word gUnknown_08F1D64E @ 0191 / 0x00BF
    .word 0                 @ 0192 / 0x00C0
    .word gUnknown_08F1D659 @ 0193 / 0x00C1
    .word gUnknown_08F1D662 @ 0194 / 0x00C2
    .word gUnknown_08F1D6B8 @ 0195 / 0x00C3
    .word gUnknown_08F1D6F0 @ 0196 / 0x00C4
    .word 0                 @ 0197 / 0x00C5
    .word 0                 @ 0198 / 0x00C6
    .word 0                 @ 0199 / 0x00C7
    .word 0                 @ 0200 / 0x00C8
    .word 0                 @ 0201 / 0x00C9
    .word gUnknown_08F1D79A @ 0202 / 0x00CA
    .word gUnknown_08F1D7A0 @ 0203 / 0x00CB
    .word gUnknown_08F1D7C0 @ 0204 / 0x00CC
    .word gUnknown_08F1D7D3 @ 0205 / 0x00CD
    .word 0                 @ 0206 / 0x00CE
    .word gUnknown_08F1D7DF @ 0207 / 0x00CF
    .word 0                 @ 0208 / 0x00D0
    .word gUnknown_08F1D81B @ 0209 / 0x00D1
    .word gUnknown_08F1D848 @ 0210 / 0x00D2
    .word gUnknown_08F1D881 @ 0211 / 0x00D3
    .word gUnknown_08F1D89D @ 0212 / 0x00D4
    .word gUnknown_08F1D8D2 @ 0213 / 0x00D5
    .word gUnknown_08F1D8EF @ 0214 / 0x00D6
    .word 0                 @ 0215 / 0x00D7
    .word gUnknown_08F1D90C @ 0216 / 0x00D8
    .word gUnknown_08F1D91E @ 0217 / 0x00D9
    .word 0                 @ 0218 / 0x00DA
    .word gUnknown_08F1D961 @ 0219 / 0x00DB
    .word gUnknown_08F1D991 @ 0220 / 0x00DC
    .word gUnknown_08F1D999 @ 0221 / 0x00DD
    .word gUnknown_08F1D9A6 @ 0222 / 0x00DE
    .word gUnknown_08F1D9B4 @ 0223 / 0x00DF
    .word gUnknown_08F1D9C1 @ 0224 / 0x00E0
    .word gUnknown_08F1D9E7 @ 0225 / 0x00E1
    .word gUnknown_08F1DA04 @ 0226 / 0x00E2
    .word gUnknown_08F1DA42 @ 0227 / 0x00E3
    .word gUnknown_08F1DA8B @ 0228 / 0x00E4
    .word gUnknown_08F1DAD0 @ 0229 / 0x00E5
    .word gUnknown_08F1DB06 @ 0230 / 0x00E6
    .word gUnknown_08F1DB40 @ 0231 / 0x00E7
    .word gUnknown_08F1DB72 @ 0232 / 0x00E8
    .word gUnknown_08F1DB98 @ 0233 / 0x00E9
    .word gUnknown_08F1DBC7 @ 0234 / 0x00EA
    .word gUnknown_08F1DBD6 @ 0235 / 0x00EB
    .word gUnknown_08F1DBF1 @ 0236 / 0x00EC
    .word gUnknown_08F1DC1A @ 0237 / 0x00ED
    .word gUnknown_08F1DC44 @ 0238 / 0x00EE
    .word 0                 @ 0239 / 0x00EF
    .word 0                 @ 0240 / 0x00F0
    .word gUnknown_08F1DCC0 @ 0241 / 0x00F1
    .word 0                 @ 0242 / 0x00F2
    .word gUnknown_08F1DD30 @ 0243 / 0x00F3
    .word gUnknown_08F1DD71 @ 0244 / 0x00F4
    .word gUnknown_08F1DD8E @ 0245 / 0x00F5
    .word gUnknown_08F1DDE3 @ 0246 / 0x00F6
    .word gUnknown_08F1DE07 @ 0247 / 0x00F7
    .word gUnknown_08F1DE2A @ 0248 / 0x00F8
    .word gUnknown_08F1DE5D @ 0249 / 0x00F9
    .word 0                 @ 0250 / 0x00FA
    .word gUnknown_08F1DE98 @ 0251 / 0x00FB
    .word 0                 @ 0252 / 0x00FC
    .word gUnknown_08F1DEC6 @ 0253 / 0x00FD
    .word 0                 @ 0254 / 0x00FE
    .word 0                 @ 0255 / 0x00FF
    .word gUnknown_08F1DF16 @ 0256 / 0x0100
    .word gUnknown_08F1DF37 @ 0257 / 0x0101
    .word gUnknown_08F1DF4A @ 0258 / 0x0102
    .word gUnknown_08F1DF68 @ 0259 / 0x0103
    .word gUnknown_08F1DF75 @ 0260 / 0x0104
    .word gUnknown_08F1DFA9 @ 0261 / 0x0105
    .word gUnknown_08F1DFBB @ 0262 / 0x0106
    .word gUnknown_08F1DFDE @ 0263 / 0x0107
    .word gUnknown_08F1DFEB @ 0264 / 0x0108
    .word gUnknown_08F1E008 @ 0265 / 0x0109
    .word gUnknown_08F1E04A @ 0266 / 0x010A
    .word gUnknown_08F1E055 @ 0267 / 0x010B
    .word gUnknown_08F1E083 @ 0268 / 0x010C
    .word gUnknown_08F1E0A5 @ 0269 / 0x010D
    .word 0                 @ 0270 / 0x010E
    .word gUnknown_08F1E0BE @ 0271 / 0x010F
    .word gUnknown_08F1E0D9 @ 0272 / 0x0110
    .word gUnknown_08F1E0F5 @ 0273 / 0x0111
    .word gUnknown_08F1E127 @ 0274 / 0x0112
    .word 0                 @ 0275 / 0x0113
    .word gUnknown_08F1E15D @ 0276 / 0x0114
    .word gUnknown_08F1E18F @ 0277 / 0x0115
    .word gUnknown_08F1E1B0 @ 0278 / 0x0116
    .word gUnknown_08F1E1D4 @ 0279 / 0x0117
    .word gUnknown_08F1E1E8 @ 0280 / 0x0118
    .word gUnknown_08F1E1FE @ 0281 / 0x0119
    .word gUnknown_08F1E21E @ 0282 / 0x011A
    .word gUnknown_08F1E22F @ 0283 / 0x011B
    .word 0                 @ 0284 / 0x011C
    .word gUnknown_08F1E255 @ 0285 / 0x011D
    .word gUnknown_08F1E285 @ 0286 / 0x011E
    .word gUnknown_08F1E2C1 @ 0287 / 0x011F
    .word gUnknown_08F1E2CA @ 0288 / 0x0120
    .word gUnknown_08F1E303 @ 0289 / 0x0121
    .word 0                 @ 0290 / 0x0122
    .word gUnknown_08F1E318 @ 0291 / 0x0123
    .word gUnknown_08F1E360 @ 0292 / 0x0124
    .word gUnknown_08F1E38A @ 0293 / 0x0125
    .word gUnknown_08F1E3C2 @ 0294 / 0x0126
    .word 0                 @ 0295 / 0x0127
    .word gUnknown_08F1E416 @ 0296 / 0x0128
    .word gUnknown_08F1E426 @ 0297 / 0x0129
    .word 0                 @ 0298 / 0x012A
    .word gUnknown_08F1E43A @ 0299 / 0x012B
    .word gUnknown_08F1E45A @ 0300 / 0x012C
    .word gUnknown_08F1E481 @ 0301 / 0x012D
    .word 0                 @ 0302 / 0x012E
    .word gUnknown_08F1E4B8 @ 0303 / 0x012F
    .word gUnknown_08F1E4EE @ 0304 / 0x0130
    .word 0                 @ 0305 / 0x0131
    .word 0                 @ 0306 / 0x0132
    .word 0                 @ 0307 / 0x0133
    .word gUnknown_08F1E503 @ 0308 / 0x0134
    .word 0                 @ 0309 / 0x0135
    .word 0                 @ 0310 / 0x0136
    .word gUnknown_08F1E513 @ 0311 / 0x0137
    .word gUnknown_08F1E54F @ 0312 / 0x0138
    .word gUnknown_08F1E55C @ 0313 / 0x0139
    .word gUnknown_08F1E59A @ 0314 / 0x013A
    .word 0                 @ 0315 / 0x013B
    .word gUnknown_08F1E5BA @ 0316 / 0x013C
    .word gUnknown_08F1E5C4 @ 0317 / 0x013D
    .word gUnknown_08F1E5DC @ 0318 / 0x013E
    .word gUnknown_08F1E602 @ 0319 / 0x013F
    .word gUnknown_08F1E620 @ 0320 / 0x0140
    .word gUnknown_08F1E653 @ 0321 / 0x0141
    .word gUnknown_08F1E65F @ 0322 / 0x0142
    .word gUnknown_08F1E66C @ 0323 / 0x0143
    .word gUnknown_08F1E68D @ 0324 / 0x0144
    .word gUnknown_08F1E6A3 @ 0325 / 0x0145
    .word gUnknown_08F1E6C7 @ 0326 / 0x0146
    .word gUnknown_08F1E6EB @ 0327 / 0x0147
    .word gUnknown_08F1E6FE @ 0328 / 0x0148
    .word gUnknown_08F1E72D @ 0329 / 0x0149
    .word gUnknown_08F1E740 @ 0330 / 0x014A
    .word gUnknown_08F1E758 @ 0331 / 0x014B
    .word gUnknown_08F1E76C @ 0332 / 0x014C
    .word 0                 @ 0333 / 0x014D
    .word gUnknown_08F1E786 @ 0334 / 0x014E
    .word gUnknown_08F1E799 @ 0335 / 0x014F
    .word 0                 @ 0336 / 0x0150
    .word gUnknown_08F1E7E4 @ 0337 / 0x0151
    .word gUnknown_08F1E810 @ 0338 / 0x0152
    .word gUnknown_08F1E823 @ 0339 / 0x0153
    .word gUnknown_08F1E836 @ 0340 / 0x0154
    .word gUnknown_08F1E841 @ 0341 / 0x0155
    .word gUnknown_08F1E866 @ 0342 / 0x0156
    .word gUnknown_08F1E887 @ 0343 / 0x0157
    .word gUnknown_08F1E8C0 @ 0344 / 0x0158
    .word gUnknown_08F1E8E3 @ 0345 / 0x0159
    .word gUnknown_08F1E907 @ 0346 / 0x015A
    .word 0                 @ 0347 / 0x015B
    .word gUnknown_08F1E979 @ 0348 / 0x015C
    .word gUnknown_08F1E9B5 @ 0349 / 0x015D
    .word gUnknown_08F1E9D2 @ 0350 / 0x015E
    .word gUnknown_08F1E9F4 @ 0351 / 0x015F
    .word gUnknown_08F1EA1B @ 0352 / 0x0160
    .word gUnknown_08F1EA2E @ 0353 / 0x0161
    .word gUnknown_08F1EA3B @ 0354 / 0x0162
    .word gUnknown_08F1EA4E @ 0355 / 0x0163
    .word gUnknown_08F1EA71 @ 0356 / 0x0164
    .word gUnknown_08F1EA7B @ 0357 / 0x0165
    .word gUnknown_08F1EA87 @ 0358 / 0x0166
    .word gUnknown_08F1EAAC @ 0359 / 0x0167
    .word gUnknown_08F1EAD9 @ 0360 / 0x0168
    .word gUnknown_08F1EAF3 @ 0361 / 0x0169
    .word gUnknown_08F1EB31 @ 0362 / 0x016A
    .word 0                 @ 0363 / 0x016B
    .word gUnknown_08F1EB90 @ 0364 / 0x016C
    .word gUnknown_08F1EBB6 @ 0365 / 0x016D
    .word gUnknown_08F1EBD1 @ 0366 / 0x016E
    .word gUnknown_08F1EC0B @ 0367 / 0x016F
    .word gUnknown_08F1EC2F @ 0368 / 0x0170
    .word gUnknown_08F1EC51 @ 0369 / 0x0171
    .word gUnknown_08F1EC8A @ 0370 / 0x0172
    .word 0                 @ 0371 / 0x0173
    .word gUnknown_08F1ECC9 @ 0372 / 0x0174
    .word gUnknown_08F1ED78 @ 0373 / 0x0175
    .word gUnknown_08F1ED9F @ 0374 / 0x0176
    .word gUnknown_08F1EE0B @ 0375 / 0x0177
    .word gUnknown_08F1EE3D @ 0376 / 0x0178
    .word gUnknown_08F1EE5C @ 0377 / 0x0179
    .word gUnknown_08F1EEAC @ 0378 / 0x017A
    .word gUnknown_08F1EEBF @ 0379 / 0x017B
    .word gUnknown_08F1EEE9 @ 0380 / 0x017C
    .word gUnknown_08F1EF20 @ 0381 / 0x017D
    .word gUnknown_08F1EF3D @ 0382 / 0x017E
    .word gUnknown_08F1EF6D @ 0383 / 0x017F
    .word gUnknown_08F1EF88 @ 0384 / 0x0180
    .word 0                 @ 0385 / 0x0181
    .word gUnknown_08F1EFBF @ 0386 / 0x0182
    .word gUnknown_08F1EFE2 @ 0387 / 0x0183
    .word gUnknown_08F1EFFD @ 0388 / 0x0184
    .word 0                 @ 0389 / 0x0185
    .word gUnknown_08F1F020 @ 0390 / 0x0186
    .word gUnknown_08F1F02D @ 0391 / 0x0187
    .word gUnknown_08F1F040 @ 0392 / 0x0188
    .word gUnknown_08F1F068 @ 0393 / 0x0189
    .word gUnknown_08F1F07A @ 0394 / 0x018A
    .word gUnknown_08F1F0E5 @ 0395 / 0x018B
    .word gUnknown_08F1F125 @ 0396 / 0x018C
    .word gUnknown_08F1F130 @ 0397 / 0x018D
    .word gUnknown_08F1F13B @ 0398 / 0x018E
    .word gUnknown_08F1F18E @ 0399 / 0x018F
    .word gUnknown_08F1F1AF @ 0400 / 0x0190
    .word gUnknown_08F1F1BC @ 0401 / 0x0191
    .word gUnknown_08F1F1D0 @ 0402 / 0x0192
    .word gUnknown_08F1F1E0 @ 0403 / 0x0193
    .word gUnknown_08F1F203 @ 0404 / 0x0194
    .word gUnknown_08F1F215 @ 0405 / 0x0195
    .word gUnknown_08F1F224 @ 0406 / 0x0196
    .word gUnknown_08F1F256 @ 0407 / 0x0197
    .word 0                 @ 0408 / 0x0198
    .word gUnknown_08F1F299 @ 0409 / 0x0199
    .word gUnknown_08F1F2C8 @ 0410 / 0x019A
    .word gUnknown_08F1F311 @ 0411 / 0x019B
    .word gUnknown_08F1F330 @ 0412 / 0x019C
    .word gUnknown_08F1F345 @ 0413 / 0x019D
    .word gUnknown_08F1F36C @ 0414 / 0x019E
    .word gUnknown_08F1F398 @ 0415 / 0x019F
    .word gUnknown_08F1F3AE @ 0416 / 0x01A0
    .word gUnknown_08F1F3CE @ 0417 / 0x01A1
    .word gUnknown_08F1F3F5 @ 0418 / 0x01A2
    .word gUnknown_08F1F448 @ 0419 / 0x01A3
    .word gUnknown_08F1F45C @ 0420 / 0x01A4
    .word gUnknown_08F1F49F @ 0421 / 0x01A5
    .word gUnknown_08F1F4BB @ 0422 / 0x01A6
    .word gUnknown_08F1F515 @ 0423 / 0x01A7
    .word gUnknown_08F1F524 @ 0424 / 0x01A8
    .word gUnknown_08F1F590 @ 0425 / 0x01A9
    .word gUnknown_08F1F5A4 @ 0426 / 0x01AA
    .word gUnknown_08F1F5DA @ 0427 / 0x01AB
    .word 0                 @ 0428 / 0x01AC
    .word gUnknown_08F1F62F @ 0429 / 0x01AD
    .word gUnknown_08F1F641 @ 0430 / 0x01AE
    .word 0                 @ 0431 / 0x01AF
    .word gUnknown_08F1F659 @ 0432 / 0x01B0
    .word gUnknown_08F1F669 @ 0433 / 0x01B1
    .word gUnknown_08F1F680 @ 0434 / 0x01B2
    .word gUnknown_08F1F69A @ 0435 / 0x01B3
    .word gUnknown_08F1F6CA @ 0436 / 0x01B4
    .word gUnknown_08F1F6F5 @ 0437 / 0x01B5
    .word gUnknown_08F1F703 @ 0438 / 0x01B6
    .word gUnknown_08F1F711 @ 0439 / 0x01B7
    .word gUnknown_08F1F736 @ 0440 / 0x01B8
    .word gUnknown_08F1F751 @ 0441 / 0x01B9
    .word gUnknown_08F1F760 @ 0442 / 0x01BA
    .word gUnknown_08F1F76C @ 0443 / 0x01BB
    .word gUnknown_08F1F774 @ 0444 / 0x01BC
    .word gUnknown_08F1F78F @ 0445 / 0x01BD
    .word gUnknown_08F1F7BB @ 0446 / 0x01BE
    .word 0                 @ 0447 / 0x01BF
    .word gUnknown_08F1F7E2 @ 0448 / 0x01C0
    .word gUnknown_08F1F7F2 @ 0449 / 0x01C1
    .word 0                 @ 0450 / 0x01C2
    .word 0                 @ 0451 / 0x01C3
    .word 0                 @ 0452 / 0x01C4
    .word 0                 @ 0453 / 0x01C5
    .word gUnknown_08F1F87F @ 0454 / 0x01C6
    .word gUnknown_08F1F8D3 @ 0455 / 0x01C7
    .word gUnknown_08F1F8EC @ 0456 / 0x01C8
    .word gUnknown_08F1F909 @ 0457 / 0x01C9
    .word gUnknown_08F1F926 @ 0458 / 0x01CA
    .word gUnknown_08F1F945 @ 0459 / 0x01CB
    .word gUnknown_08F1F972 @ 0460 / 0x01CC
    .word gUnknown_08F1F990 @ 0461 / 0x01CD
    .word gUnknown_08F1F9C4 @ 0462 / 0x01CE
    .word gUnknown_08F1F9E5 @ 0463 / 0x01CF
    .word gUnknown_08F1F9F7 @ 0464 / 0x01D0
    .word gUnknown_08F1FA1B @ 0465 / 0x01D1
    .word gUnknown_08F1FA39 @ 0466 / 0x01D2
    .word gUnknown_08F1FA51 @ 0467 / 0x01D3
    .word gUnknown_08F1FA60 @ 0468 / 0x01D4
    .word gUnknown_08F1FA77 @ 0469 / 0x01D5
    .word gUnknown_08F1FAAA @ 0470 / 0x01D6
    .word gUnknown_08F1FABA @ 0471 / 0x01D7
    .word 0                 @ 0472 / 0x01D8
    .word gUnknown_08F1FAD9 @ 0473 / 0x01D9
    .word gUnknown_08F1FB02 @ 0474 / 0x01DA
    .word gUnknown_08F1FB23 @ 0475 / 0x01DB
    .word gUnknown_08F1FB34 @ 0476 / 0x01DC
    .word gUnknown_08F1FB3F @ 0477 / 0x01DD
    .word gUnknown_08F1FB6E @ 0478 / 0x01DE
    .word gUnknown_08F1FB86 @ 0479 / 0x01DF
    .word gUnknown_08F1FBB4 @ 0480 / 0x01E0
    .word gUnknown_08F1FBCC @ 0481 / 0x01E1
    .word gUnknown_08F1FC0A @ 0482 / 0x01E2
    .word gUnknown_08F1FC2B @ 0483 / 0x01E3
    .word gUnknown_08F1FC3B @ 0484 / 0x01E4
    .word gUnknown_08F1FC52 @ 0485 / 0x01E5
    .word 0                 @ 0486 / 0x01E6
    .word gUnknown_08F1FC5E @ 0487 / 0x01E7
    .word gUnknown_08F1FC82 @ 0488 / 0x01E8
    .word gUnknown_08F1FC9D @ 0489 / 0x01E9
    .word gUnknown_08F1FCD7 @ 0490 / 0x01EA
    .word gUnknown_08F1FCE0 @ 0491 / 0x01EB
    .word gUnknown_08F1FCEC @ 0492 / 0x01EC
    .word 0                 @ 0493 / 0x01ED
    .word gUnknown_08F1FD46 @ 0494 / 0x01EE
    .word gUnknown_08F1FD65 @ 0495 / 0x01EF
    .word gUnknown_08F1FD7A @ 0496 / 0x01F0
    .word 0                 @ 0497 / 0x01F1
    .word 0                 @ 0498 / 0x01F2
    .word gUnknown_08F1FD9B @ 0499 / 0x01F3
    .word gUnknown_08F1FDB8 @ 0500 / 0x01F4
    .word gUnknown_08F1FDFF @ 0501 / 0x01F5
    .word 0                 @ 0502 / 0x01F6
    .word gUnknown_08F1FE49 @ 0503 / 0x01F7
    .word gUnknown_08F1FE85 @ 0504 / 0x01F8
    .word gUnknown_08F1FEAD @ 0505 / 0x01F9
    .word gUnknown_08F1FEBF @ 0506 / 0x01FA
    .word gUnknown_08F1FEF6 @ 0507 / 0x01FB
    .word gUnknown_08F1FF24 @ 0508 / 0x01FC
    .word gUnknown_08F1FF3D @ 0509 / 0x01FD
    .word gUnknown_08F1FF68 @ 0510 / 0x01FE
    .word gUnknown_08F1FF83 @ 0511 / 0x01FF
    .word gUnknown_08F1FFAA @ 0512 / 0x0200
    .word gUnknown_08F1FFCA @ 0513 / 0x0201
    .word 0                 @ 0514 / 0x0202
    .word 0                 @ 0515 / 0x0203
    .word gUnknown_08F1FFFA @ 0516 / 0x0204
    .word 0                 @ 0517 / 0x0205
    .word gUnknown_08F20035 @ 0518 / 0x0206
    .word gUnknown_08F2005D @ 0519 / 0x0207
    .word gUnknown_08F20078 @ 0520 / 0x0208
    .word 0                 @ 0521 / 0x0209
    .word 0                 @ 0522 / 0x020A
    .word 0                 @ 0523 / 0x020B
    .word 0                 @ 0524 / 0x020C
    .word gUnknown_08F200D6 @ 0525 / 0x020D
    .word gUnknown_08F200ED @ 0526 / 0x020E
    .word gUnknown_08F2011A @ 0527 / 0x020F
    .word gUnknown_08F20150 @ 0528 / 0x0210
    .word gUnknown_08F20170 @ 0529 / 0x0211
    .word gUnknown_08F2017B @ 0530 / 0x0212
    .word gUnknown_08F20198 @ 0531 / 0x0213
    .word gUnknown_08F201B2 @ 0532 / 0x0214
    .word gUnknown_08F201F1 @ 0533 / 0x0215
    .word gUnknown_08F20208 @ 0534 / 0x0216
    .word gUnknown_08F2021B @ 0535 / 0x0217
    .word gUnknown_08F2023C @ 0536 / 0x0218
    .word gUnknown_08F2024A @ 0537 / 0x0219
    .word gUnknown_08F2026E @ 0538 / 0x021A
    .word gUnknown_08F2029D @ 0539 / 0x021B
    .word gUnknown_08F202AF @ 0540 / 0x021C
    .word gUnknown_08F202C4 @ 0541 / 0x021D
    .word gUnknown_08F202EE @ 0542 / 0x021E
    .word gUnknown_08F20309 @ 0543 / 0x021F
    .word gUnknown_08F20333 @ 0544 / 0x0220
    .word 0                 @ 0545 / 0x0221
    .word gUnknown_08F20340 @ 0546 / 0x0222
    .word gUnknown_08F2035A @ 0547 / 0x0223
    .word gUnknown_08F20398 @ 0548 / 0x0224
    .word 0                 @ 0549 / 0x0225
    .word 0                 @ 0550 / 0x0226
    .word 0                 @ 0551 / 0x0227
    .word gUnknown_08F203BF @ 0552 / 0x0228
    .word gUnknown_08F20443 @ 0553 / 0x0229
    .word gUnknown_08F20455 @ 0554 / 0x022A
    .word gUnknown_08F2047A @ 0555 / 0x022B
    .word 0                 @ 0556 / 0x022C
    .word 0                 @ 0557 / 0x022D
    .word gUnknown_08F204B8 @ 0558 / 0x022E
    .word gUnknown_08F204D3 @ 0559 / 0x022F
    .word gUnknown_08F2050E @ 0560 / 0x0230
    .word 0                 @ 0561 / 0x0231
    .word gUnknown_08F2051B @ 0562 / 0x0232
    .word gUnknown_08F279F8 @ 0563 / 0x0233
    .word gUnknown_08F2053C @ 0564 / 0x0234
    .word 0                 @ 0565 / 0x0235
    .word gUnknown_08F20547 @ 0566 / 0x0236
    .word gUnknown_08F2056B @ 0567 / 0x0237
    .word gUnknown_08F20579 @ 0568 / 0x0238
    .word gUnknown_08F2059A @ 0569 / 0x0239
    .word gUnknown_08F205C7 @ 0570 / 0x023A
    .word gUnknown_08F205D5 @ 0571 / 0x023B
    .word 0                 @ 0572 / 0x023C
    .word gUnknown_08F205F6 @ 0573 / 0x023D
    .word gUnknown_08F20609 @ 0574 / 0x023E
    .word gUnknown_08F2061A @ 0575 / 0x023F
    .word gUnknown_08F20638 @ 0576 / 0x0240
    .word 0                 @ 0577 / 0x0241
    .word gUnknown_08F2064A @ 0578 / 0x0242
    .word gUnknown_08F2066C @ 0579 / 0x0243
    .word gUnknown_08F20678 @ 0580 / 0x0244
    .word 0                 @ 0581 / 0x0245
    .word gUnknown_08F20689 @ 0582 / 0x0246
    .word gUnknown_08F20698 @ 0583 / 0x0247
    .word gUnknown_08F206A6 @ 0584 / 0x0248
    .word gUnknown_08F206B5 @ 0585 / 0x0249
    .word gUnknown_08F206D0 @ 0586 / 0x024A
    .word gUnknown_08F206E2 @ 0587 / 0x024B
    .word 0                 @ 0588 / 0x024C
    .word gUnknown_08F206F3 @ 0589 / 0x024D
    .word 0                 @ 0590 / 0x024E
    .word 0                 @ 0591 / 0x024F
    .word gUnknown_08F20702 @ 0592 / 0x0250
    .word gUnknown_08F2071B @ 0593 / 0x0251
    .word 0                 @ 0594 / 0x0252
    .word 0                 @ 0595 / 0x0253
    .word 0                 @ 0596 / 0x0254
    .word 0                 @ 0597 / 0x0255
    .word 0                 @ 0598 / 0x0256
    .word 0                 @ 0599 / 0x0257
    .word gUnknown_08F2072B @ 0600 / 0x0258
    .word gUnknown_08F20746 @ 0601 / 0x0259
    .word gUnknown_08F20750 @ 0602 / 0x025A
    .word gUnknown_08F2076A @ 0603 / 0x025B
    .word 0                 @ 0604 / 0x025C
    .word gUnknown_08F2077D @ 0605 / 0x025D
    .word gUnknown_08F2078E @ 0606 / 0x025E
    .word gUnknown_08F207AC @ 0607 / 0x025F
    .word gUnknown_08F207C0 @ 0608 / 0x0260
    .word gUnknown_08F207D7 @ 0609 / 0x0261
    .word gUnknown_08F2080E @ 0610 / 0x0262
    .word gUnknown_08F20879 @ 0611 / 0x0263
    .word gUnknown_08F208BA @ 0612 / 0x0264
    .word gUnknown_08F208E6 @ 0613 / 0x0265
    .word gUnknown_08F208F3 @ 0614 / 0x0266
    .word gUnknown_08F20912 @ 0615 / 0x0267
    .word gUnknown_08F2092D @ 0616 / 0x0268
    .word gUnknown_08F20945 @ 0617 / 0x0269
    .word gUnknown_08F2099D @ 0618 / 0x026A
    .word gUnknown_08F209AC @ 0619 / 0x026B
    .word gUnknown_08F209D2 @ 0620 / 0x026C
    .word 0                 @ 0621 / 0x026D
    .word 0                 @ 0622 / 0x026E
    .word 0                 @ 0623 / 0x026F
    .word gUnknown_08F209DF @ 0624 / 0x0270
    .word gUnknown_08F20A0F @ 0625 / 0x0271
    .word 0                 @ 0626 / 0x0272
    .word gUnknown_08F20A3E @ 0627 / 0x0273
    .word gUnknown_08F20A57 @ 0628 / 0x0274
    .word gUnknown_08F20A73 @ 0629 / 0x0275
    .word gUnknown_08F20A83 @ 0630 / 0x0276
    .word gUnknown_08F20A8B @ 0631 / 0x0277
    .word gUnknown_08F20AAB @ 0632 / 0x0278
    .word gUnknown_08F20AC1 @ 0633 / 0x0279
    .word gUnknown_08F20AD8 @ 0634 / 0x027A
    .word gUnknown_08F20AEC @ 0635 / 0x027B
    .word gUnknown_08F20AFE @ 0636 / 0x027C
    .word gUnknown_08F20B0F @ 0637 / 0x027D
    .word gUnknown_08F20B1C @ 0638 / 0x027E
    .word gUnknown_08F20B46 @ 0639 / 0x027F
    .word gUnknown_08F20B63 @ 0640 / 0x0280
    .word gUnknown_08F20B81 @ 0641 / 0x0281
    .word gUnknown_08F20BA8 @ 0642 / 0x0282
    .word gUnknown_08F20BC4 @ 0643 / 0x0283
    .word 0                 @ 0644 / 0x0284
    .word gUnknown_08F20BD5 @ 0645 / 0x0285
    .word gUnknown_08F20BFF @ 0646 / 0x0286
    .word gUnknown_08F20C33 @ 0647 / 0x0287
    .word gUnknown_08F20C47 @ 0648 / 0x0288
    .word gUnknown_08F20C68 @ 0649 / 0x0289
    .word gUnknown_08F20C7B @ 0650 / 0x028A
    .word gUnknown_08F20C8C @ 0651 / 0x028B
    .word gUnknown_08F20CCA @ 0652 / 0x028C
    .word gUnknown_08F20CF3 @ 0653 / 0x028D
    .word gUnknown_08F20D15 @ 0654 / 0x028E
    .word gUnknown_08F20D49 @ 0655 / 0x028F
    .word gUnknown_08F20D61 @ 0656 / 0x0290
    .word gUnknown_08F20D7C @ 0657 / 0x0291
    .word gUnknown_08F20DC3 @ 0658 / 0x0292
    .word gUnknown_08F20DEC @ 0659 / 0x0293
    .word gUnknown_08F20DFB @ 0660 / 0x0294
    .word gUnknown_08F20E0F @ 0661 / 0x0295
    .word gUnknown_08F20E48 @ 0662 / 0x0296
    .word gUnknown_08F20E5B @ 0663 / 0x0297
    .word gUnknown_08F20E6D @ 0664 / 0x0298
    .word gUnknown_08F20E7A @ 0665 / 0x0299
    .word 0                 @ 0666 / 0x029A
    .word gUnknown_08F20EAC @ 0667 / 0x029B
    .word gUnknown_08F20ECB @ 0668 / 0x029C
    .word 0                 @ 0669 / 0x029D
    .word 0                 @ 0670 / 0x029E
    .word gUnknown_08F20EDD @ 0671 / 0x029F
    .word gUnknown_08F20F08 @ 0672 / 0x02A0
    .word gUnknown_08F20F35 @ 0673 / 0x02A1
    .word gUnknown_08F20FAE @ 0674 / 0x02A2
    .word gUnknown_08F20FD7 @ 0675 / 0x02A3
    .word gUnknown_08F20FFF @ 0676 / 0x02A4
    .word gUnknown_08F2101B @ 0677 / 0x02A5
    .word gUnknown_08F2103C @ 0678 / 0x02A6
    .word gUnknown_08F21077 @ 0679 / 0x02A7
    .word gUnknown_08F2109D @ 0680 / 0x02A8
    .word gUnknown_08F210AC @ 0681 / 0x02A9
    .word gUnknown_08F210D3 @ 0682 / 0x02AA
    .word gUnknown_08F210FB @ 0683 / 0x02AB
    .word gUnknown_08F21111 @ 0684 / 0x02AC
    .word gUnknown_08F2114A @ 0685 / 0x02AD
    .word gUnknown_08F2116A @ 0686 / 0x02AE
    .word gUnknown_08F21197 @ 0687 / 0x02AF
    .word gUnknown_08F211D7 @ 0688 / 0x02B0
    .word gUnknown_08F211FB @ 0689 / 0x02B1
    .word gUnknown_08F21219 @ 0690 / 0x02B2
    .word 0                 @ 0691 / 0x02B3
    .word 0                 @ 0692 / 0x02B4
    .word gUnknown_08F2123A @ 0693 / 0x02B5
    .word gUnknown_08F21250 @ 0694 / 0x02B6
    .word gUnknown_08F2125C @ 0695 / 0x02B7
    .word gUnknown_08F2126F @ 0696 / 0x02B8
    .word 0                 @ 0697 / 0x02B9
    .word 0                 @ 0698 / 0x02BA
    .word gUnknown_08F2127E @ 0699 / 0x02BB
    .word gUnknown_08F212BD @ 0700 / 0x02BC
    .word gUnknown_08F212FD @ 0701 / 0x02BD
    .word gUnknown_08F21335 @ 0702 / 0x02BE
    .word gUnknown_08F2134D @ 0703 / 0x02BF
    .word 0                 @ 0704 / 0x02C0
    .word gUnknown_08F21363 @ 0705 / 0x02C1
    .word gUnknown_08F213B5 @ 0706 / 0x02C2
    .word gUnknown_08F213C9 @ 0707 / 0x02C3
    .word gUnknown_08F213F2 @ 0708 / 0x02C4
    .word gUnknown_08F2141F @ 0709 / 0x02C5
    .word gUnknown_08F2145A @ 0710 / 0x02C6
    .word gUnknown_08F21480 @ 0711 / 0x02C7
    .word gUnknown_08F2148C @ 0712 / 0x02C8
    .word gUnknown_08F214BA @ 0713 / 0x02C9
    .word gUnknown_08F214CF @ 0714 / 0x02CA
    .word gUnknown_08F21500 @ 0715 / 0x02CB
    .word gUnknown_08F2152A @ 0716 / 0x02CC
    .word gUnknown_08F21549 @ 0717 / 0x02CD
    .word gUnknown_08F21563 @ 0718 / 0x02CE
    .word gUnknown_08F215A4 @ 0719 / 0x02CF
    .word gUnknown_08F215DB @ 0720 / 0x02D0
    .word gUnknown_08F21603 @ 0721 / 0x02D1
    .word gUnknown_08F21647 @ 0722 / 0x02D2
    .word gUnknown_08F21684 @ 0723 / 0x02D3
    .word gUnknown_08F2169B @ 0724 / 0x02D4
    .word gUnknown_08F216DB @ 0725 / 0x02D5
    .word gUnknown_08F2170C @ 0726 / 0x02D6
    .word gUnknown_08F21737 @ 0727 / 0x02D7
    .word gUnknown_08F2176B @ 0728 / 0x02D8
    .word gUnknown_08F2179F @ 0729 / 0x02D9
    .word gUnknown_08F217BC @ 0730 / 0x02DA
    .word gUnknown_08F217F4 @ 0731 / 0x02DB
    .word gUnknown_08F21831 @ 0732 / 0x02DC
    .word gUnknown_08F21847 @ 0733 / 0x02DD
    .word gUnknown_08F21870 @ 0734 / 0x02DE
    .word gUnknown_08F2188D @ 0735 / 0x02DF
    .word gUnknown_08F218A8 @ 0736 / 0x02E0
    .word gUnknown_08F218CF @ 0737 / 0x02E1
    .word gUnknown_08F218F8 @ 0738 / 0x02E2
    .word gUnknown_08F2190E @ 0739 / 0x02E3
    .word gUnknown_08F21936 @ 0740 / 0x02E4
    .word gUnknown_08F2196C @ 0741 / 0x02E5
    .word gUnknown_08F219BF @ 0742 / 0x02E6
    .word gUnknown_08F219D7 @ 0743 / 0x02E7
    .word gUnknown_08F21A0B @ 0744 / 0x02E8
    .word gUnknown_08F21A15 @ 0745 / 0x02E9
    .word gUnknown_08F21A62 @ 0746 / 0x02EA
    .word gUnknown_08F21A8F @ 0747 / 0x02EB
    .word gUnknown_08F21ABB @ 0748 / 0x02EC
    .word gUnknown_08F21AE6 @ 0749 / 0x02ED
    .word gUnknown_08F21B17 @ 0750 / 0x02EE
    .word gUnknown_08F21B5A @ 0751 / 0x02EF
    .word gUnknown_08F21B84 @ 0752 / 0x02F0
    .word gUnknown_08F21BB8 @ 0753 / 0x02F1
    .word gUnknown_08F21C0A @ 0754 / 0x02F2
    .word gUnknown_08F21C19 @ 0755 / 0x02F3
    .word gUnknown_08F21C22 @ 0756 / 0x02F4
    .word gUnknown_08F21C39 @ 0757 / 0x02F5
    .word gUnknown_08F21C5B @ 0758 / 0x02F6
    .word gUnknown_08F21C72 @ 0759 / 0x02F7
    .word gUnknown_08F21C95 @ 0760 / 0x02F8
    .word gUnknown_08F21CAE @ 0761 / 0x02F9
    .word gUnknown_08F21CE0 @ 0762 / 0x02FA
    .word gUnknown_08F21D01 @ 0763 / 0x02FB
    .word gUnknown_08F21D27 @ 0764 / 0x02FC
    .word gUnknown_08F21D48 @ 0765 / 0x02FD
    .word gUnknown_08F21D92 @ 0766 / 0x02FE
    .word gUnknown_08F21DA4 @ 0767 / 0x02FF
    .word gUnknown_08F21DC4 @ 0768 / 0x0300
    .word gUnknown_08F21DF1 @ 0769 / 0x0301
    .word gUnknown_08F21DFC @ 0770 / 0x0302
    .word gUnknown_08F21E26 @ 0771 / 0x0303
    .word gUnknown_08F21E33 @ 0772 / 0x0304
    .word gUnknown_08F21E59 @ 0773 / 0x0305
    .word gUnknown_08F21E75 @ 0774 / 0x0306
    .word gUnknown_08F21E8F @ 0775 / 0x0307
    .word gUnknown_08F21EB4 @ 0776 / 0x0308
    .word gUnknown_08F21EE8 @ 0777 / 0x0309
    .word gUnknown_08F21F04 @ 0778 / 0x030A
    .word gUnknown_08F21F20 @ 0779 / 0x030B
    .word gUnknown_08F21F43 @ 0780 / 0x030C
    .word gUnknown_08F21F65 @ 0781 / 0x030D
    .word gUnknown_08F21F85 @ 0782 / 0x030E
    .word gUnknown_08F21F9D @ 0783 / 0x030F
    .word gUnknown_08F21FB8 @ 0784 / 0x0310
    .word 0                 @ 0785 / 0x0311
    .word gUnknown_08F21FC9 @ 0786 / 0x0312
    .word gUnknown_08F21FEB @ 0787 / 0x0313
    .word gUnknown_08F21FFD @ 0788 / 0x0314
    .word gUnknown_08F2200F @ 0789 / 0x0315
    .word gUnknown_08F22038 @ 0790 / 0x0316
    .word gUnknown_08F22054 @ 0791 / 0x0317
    .word gUnknown_08F22060 @ 0792 / 0x0318
    .word gUnknown_08F22086 @ 0793 / 0x0319
    .word gUnknown_08F220CD @ 0794 / 0x031A
    .word 0                 @ 0795 / 0x031B
    .word gUnknown_08F220DE @ 0796 / 0x031C
    .word gUnknown_08F22124 @ 0797 / 0x031D
    .word gUnknown_08F22148 @ 0798 / 0x031E
    .word gUnknown_08F22183 @ 0799 / 0x031F
    .word gUnknown_08F2219B @ 0800 / 0x0320
    .word 0                 @ 0801 / 0x0321
    .word gUnknown_08F221AD @ 0802 / 0x0322
    .word gUnknown_08F221BB @ 0803 / 0x0323
    .word gUnknown_08F221CB @ 0804 / 0x0324
    .word gUnknown_08F221DC @ 0805 / 0x0325
    .word gUnknown_08F22204 @ 0806 / 0x0326
    .word gUnknown_08F2220F @ 0807 / 0x0327
    .word 0                 @ 0808 / 0x0328
    .word gUnknown_08F2221D @ 0809 / 0x0329
    .word gUnknown_08F2222A @ 0810 / 0x032A
    .word gUnknown_08F2225A @ 0811 / 0x032B
    .word gUnknown_08F22269 @ 0812 / 0x032C
    .word gUnknown_08F222B4 @ 0813 / 0x032D
    .word gUnknown_08F222B9 @ 0814 / 0x032E
    .word gUnknown_08F222C9 @ 0815 / 0x032F
    .word 0                 @ 0816 / 0x0330
    .word gUnknown_08F22303 @ 0817 / 0x0331
    .word gUnknown_08F22316 @ 0818 / 0x0332
    .word gUnknown_08F22324 @ 0819 / 0x0333
    .word gUnknown_08F2233C @ 0820 / 0x0334
    .word gUnknown_08F2234A @ 0821 / 0x0335
    .word gUnknown_08F22359 @ 0822 / 0x0336
    .word gUnknown_08F22371 @ 0823 / 0x0337
    .word gUnknown_08F22380 @ 0824 / 0x0338
    .word gUnknown_08F2238D @ 0825 / 0x0339
    .word gUnknown_08F2239E @ 0826 / 0x033A
    .word gUnknown_08F223BA @ 0827 / 0x033B
    .word gUnknown_08F223D3 @ 0828 / 0x033C
    .word gUnknown_08F22406 @ 0829 / 0x033D
    .word gUnknown_08F2241E @ 0830 / 0x033E
    .word gUnknown_08F22439 @ 0831 / 0x033F
    .word gUnknown_08F22466 @ 0832 / 0x0340
    .word gUnknown_08F22478 @ 0833 / 0x0341
    .word gUnknown_08F22488 @ 0834 / 0x0342
    .word gUnknown_08F2249E @ 0835 / 0x0343
    .word gUnknown_08F224B3 @ 0836 / 0x0344
    .word gUnknown_08F224DE @ 0837 / 0x0345
    .word gUnknown_08F224E7 @ 0838 / 0x0346
    .word 0                 @ 0839 / 0x0347
    .word gUnknown_08F224F2 @ 0840 / 0x0348
    .word 0                 @ 0841 / 0x0349
    .word gUnknown_08F22511 @ 0842 / 0x034A
    .word gUnknown_08F22569 @ 0843 / 0x034B
    .word gUnknown_08F2259E @ 0844 / 0x034C
    .word gUnknown_08F225B1 @ 0845 / 0x034D
    .word gUnknown_08F225C5 @ 0846 / 0x034E
    .word gUnknown_08F225D1 @ 0847 / 0x034F
    .word gUnknown_08F225E3 @ 0848 / 0x0350
    .word gUnknown_08F22609 @ 0849 / 0x0351
    .word gUnknown_08F2262B @ 0850 / 0x0352
    .word gUnknown_08F22647 @ 0851 / 0x0353
    .word gUnknown_08F2267C @ 0852 / 0x0354
    .word gUnknown_08F226AE @ 0853 / 0x0355
    .word gUnknown_08F226C1 @ 0854 / 0x0356
    .word gUnknown_08F226DB @ 0855 / 0x0357
    .word gUnknown_08F226F3 @ 0856 / 0x0358
    .word 0                 @ 0857 / 0x0359
    .word gUnknown_08F22737 @ 0858 / 0x035A
    .word gUnknown_08F22777 @ 0859 / 0x035B
    .word gUnknown_08F227A1 @ 0860 / 0x035C
    .word gUnknown_08F227C2 @ 0861 / 0x035D
    .word gUnknown_08F227D6 @ 0862 / 0x035E
    .word gUnknown_08F227FB @ 0863 / 0x035F
    .word gUnknown_08F2281F @ 0864 / 0x0360
    .word gUnknown_08F22850 @ 0865 / 0x0361
    .word gUnknown_08F22889 @ 0866 / 0x0362
    .word gUnknown_08F228B9 @ 0867 / 0x0363
    .word gUnknown_08F228DF @ 0868 / 0x0364
    .word gUnknown_08F22912 @ 0869 / 0x0365
    .word gUnknown_08F22920 @ 0870 / 0x0366
    .word gUnknown_08F2293E @ 0871 / 0x0367
    .word gUnknown_08F22965 @ 0872 / 0x0368
    .word gUnknown_08F22979 @ 0873 / 0x0369
    .word gUnknown_08F22995 @ 0874 / 0x036A
    .word gUnknown_08F229BC @ 0875 / 0x036B
    .word gUnknown_08F229EA @ 0876 / 0x036C
    .word gUnknown_08F22A18 @ 0877 / 0x036D
    .word gUnknown_08F22A46 @ 0878 / 0x036E
    .word gUnknown_08F22A76 @ 0879 / 0x036F
    .word gUnknown_08F22AA2 @ 0880 / 0x0370
    .word gUnknown_08F22AF1 @ 0881 / 0x0371
    .word gUnknown_08F22B2B @ 0882 / 0x0372
    .word gUnknown_08F22B68 @ 0883 / 0x0373
    .word gUnknown_08F22B7E @ 0884 / 0x0374
    .word gUnknown_08F22BBB @ 0885 / 0x0375
    .word gUnknown_08F22BD6 @ 0886 / 0x0376
    .word gUnknown_08F22C13 @ 0887 / 0x0377
    .word 0                 @ 0888 / 0x0378
    .word gUnknown_08F22C35 @ 0889 / 0x0379
    .word gUnknown_08F22C54 @ 0890 / 0x037A
    .word gUnknown_08F22C6E @ 0891 / 0x037B
    .word gUnknown_08F22C95 @ 0892 / 0x037C
    .word gUnknown_08F22CC6 @ 0893 / 0x037D
    .word gUnknown_08F22CEB @ 0894 / 0x037E
    .word gUnknown_08F22D0A @ 0895 / 0x037F
    .word gUnknown_08F22D1F @ 0896 / 0x0380
    .word gUnknown_08F22D2D @ 0897 / 0x0381
    .word gUnknown_08F22D42 @ 0898 / 0x0382
    .word gUnknown_08F22D5A @ 0899 / 0x0383
    .word gUnknown_08F22D99 @ 0900 / 0x0384
    .word gUnknown_08F22D9A @ 0901 / 0x0385
    .word gUnknown_08F22DAA @ 0902 / 0x0386
    .word gUnknown_08F22DB0 @ 0903 / 0x0387
    .word gUnknown_08F22DBA @ 0904 / 0x0388
    .word 0                 @ 0905 / 0x0389
    .word 0                 @ 0906 / 0x038A
    .word gUnknown_08F279CB @ 0907 / 0x038B
    .word gUnknown_08F279E9 @ 0908 / 0x038C
    .word 0                 @ 0909 / 0x038D
    .word gUnknown_08F22EA2 @ 0910 / 0x038E
    .word gUnknown_08F22EB2 @ 0911 / 0x038F
    .word gUnknown_08F22EC3 @ 0912 / 0x0390
    .word gUnknown_08F22ECE @ 0913 / 0x0391
    .word gUnknown_08F22EDF @ 0914 / 0x0392
    .word gUnknown_08F22EF2 @ 0915 / 0x0393
    .word gUnknown_08F22F05 @ 0916 / 0x0394
    .word gUnknown_08F22F15 @ 0917 / 0x0395
    .word gUnknown_08F22F29 @ 0918 / 0x0396
    .word gUnknown_08F22F36 @ 0919 / 0x0397
    .word gUnknown_08F22F4C @ 0920 / 0x0398
    .word gUnknown_08F22F59 @ 0921 / 0x0399
    .word gUnknown_08F22F6E @ 0922 / 0x039A
    .word gUnknown_08F22F79 @ 0923 / 0x039B
    .word 0                 @ 0924 / 0x039C
    .word gUnknown_08F22F8C @ 0925 / 0x039D
    .word 0                 @ 0926 / 0x039E
    .word 0                 @ 0927 / 0x039F
    .word 0                 @ 0928 / 0x03A0
    .word gUnknown_08F22FA3 @ 0929 / 0x03A1
    .word gUnknown_08F22FB2 @ 0930 / 0x03A2
    .word gUnknown_08F22FC3 @ 0931 / 0x03A3
    .word gUnknown_08F22FED @ 0932 / 0x03A4
    .word gUnknown_08F2300D @ 0933 / 0x03A5
    .word gUnknown_08F2301D @ 0934 / 0x03A6
    .word gUnknown_08F2304B @ 0935 / 0x03A7
    .word gUnknown_08F23077 @ 0936 / 0x03A8
    .word gUnknown_08F230A5 @ 0937 / 0x03A9
    .word gUnknown_08F230C1 @ 0938 / 0x03AA
    .word gUnknown_08F230E3 @ 0939 / 0x03AB
    .word gUnknown_08F230F6 @ 0940 / 0x03AC
    .word gUnknown_08F2310F @ 0941 / 0x03AD
    .word gUnknown_08F2313B @ 0942 / 0x03AE
    .word gUnknown_08F23146 @ 0943 / 0x03AF
    .word gUnknown_08F23172 @ 0944 / 0x03B0
    .word gUnknown_08F2319E @ 0945 / 0x03B1
    .word gUnknown_08F231CE @ 0946 / 0x03B2
    .word gUnknown_08F231DB @ 0947 / 0x03B3
    .word gUnknown_08F231F3 @ 0948 / 0x03B4
    .word gUnknown_08F23204 @ 0949 / 0x03B5
    .word gUnknown_08F2322C @ 0950 / 0x03B6
    .word gUnknown_08F2326F @ 0951 / 0x03B7
    .word gUnknown_08F2328B @ 0952 / 0x03B8
    .word gUnknown_08F232B6 @ 0953 / 0x03B9
    .word gUnknown_08F232D7 @ 0954 / 0x03BA
    .word gUnknown_08F232E6 @ 0955 / 0x03BB
    .word gUnknown_08F232FE @ 0956 / 0x03BC
    .word gUnknown_08F2331E @ 0957 / 0x03BD
    .word gUnknown_08F2332A @ 0958 / 0x03BE
    .word gUnknown_08F2333B @ 0959 / 0x03BF
    .word gUnknown_08F23364 @ 0960 / 0x03C0
    .word gUnknown_08F23376 @ 0961 / 0x03C1
    .word gUnknown_08F23380 @ 0962 / 0x03C2
    .word gUnknown_08F2339E @ 0963 / 0x03C3
    .word gUnknown_08F233AE @ 0964 / 0x03C4
    .word gUnknown_08F233C9 @ 0965 / 0x03C5
    .word gUnknown_08F233DE @ 0966 / 0x03C6
    .word gUnknown_08F23400 @ 0967 / 0x03C7
    .word gUnknown_08F23439 @ 0968 / 0x03C8
    .word gUnknown_08F2345F @ 0969 / 0x03C9
    .word gUnknown_08F23470 @ 0970 / 0x03CA
    .word gUnknown_08F234A6 @ 0971 / 0x03CB
    .word gUnknown_08F234BA @ 0972 / 0x03CC
    .word 0                 @ 0973 / 0x03CD
    .word gUnknown_08F234EB @ 0974 / 0x03CE
    .word gUnknown_08F23506 @ 0975 / 0x03CF
    .word gUnknown_08F23523 @ 0976 / 0x03D0
    .word 0                 @ 0977 / 0x03D1
    .word gUnknown_08F235AA @ 0978 / 0x03D2
    .word gUnknown_08F235C7 @ 0979 / 0x03D3
    .word gUnknown_08F235E2 @ 0980 / 0x03D4
    .word gUnknown_08F23606 @ 0981 / 0x03D5
    .word gUnknown_08F23642 @ 0982 / 0x03D6
    .word gUnknown_08F23656 @ 0983 / 0x03D7
    .word gUnknown_08F23671 @ 0984 / 0x03D8
    .word gUnknown_08F23691 @ 0985 / 0x03D9
    .word gUnknown_08F236B3 @ 0986 / 0x03DA
    .word gUnknown_08F236C8 @ 0987 / 0x03DB
    .word gUnknown_08F236E0 @ 0988 / 0x03DC
    .word gUnknown_08F23710 @ 0989 / 0x03DD
    .word gUnknown_08F2372F @ 0990 / 0x03DE
    .word gUnknown_08F2373E @ 0991 / 0x03DF
    .word gUnknown_08F237B0 @ 0992 / 0x03E0
    .word gUnknown_08F23803 @ 0993 / 0x03E1
    .word gUnknown_08F2386B @ 0994 / 0x03E2
    .word gUnknown_08F23887 @ 0995 / 0x03E3
    .word gUnknown_08F23895 @ 0996 / 0x03E4
    .word gUnknown_08F2391E @ 0997 / 0x03E5
    .word 0                 @ 0998 / 0x03E6
    .word gUnknown_08F23944 @ 0999 / 0x03E7
    .word gUnknown_08F25B42 @ 1000 / 0x03E8
    .word gUnknown_08F25B43 @ 1001 / 0x03E9
    .word gUnknown_08F25B49 @ 1002 / 0x03EA
    .word gUnknown_08F25B51 @ 1003 / 0x03EB
    .word gUnknown_08F25B56 @ 1004 / 0x03EC
    .word gUnknown_08F25B5E @ 1005 / 0x03ED
    .word gUnknown_08F25B65 @ 1006 / 0x03EE
    .word gUnknown_08F25B6D @ 1007 / 0x03EF
    .word gUnknown_08F25B6E @ 1008 / 0x03F0
    .word gUnknown_08F25B6F @ 1009 / 0x03F1
    .word gUnknown_08F25B70 @ 1010 / 0x03F2
    .word gUnknown_08F25B74 @ 1011 / 0x03F3
    .word gUnknown_08F25B7D @ 1012 / 0x03F4
    .word gUnknown_08F25B85 @ 1013 / 0x03F5
    .word gUnknown_08F25B8C @ 1014 / 0x03F6
    .word gUnknown_08F25B93 @ 1015 / 0x03F7
    .word gUnknown_08F25B98 @ 1016 / 0x03F8
    .word gUnknown_08F25B9F @ 1017 / 0x03F9
    .word gUnknown_08F25BA7 @ 1018 / 0x03FA
    .word gUnknown_08F25BAD @ 1019 / 0x03FB
    .word gUnknown_08F25BB6 @ 1020 / 0x03FC
    .word gUnknown_08F25BBC @ 1021 / 0x03FD
    .word gUnknown_08F25BC4 @ 1022 / 0x03FE
    .word gUnknown_08F25BCF @ 1023 / 0x03FF
    .word gUnknown_08F25BD8 @ 1024 / 0x0400
    .word gUnknown_08F25BDE @ 1025 / 0x0401
    .word gUnknown_08F25BE8 @ 1026 / 0x0402
    .word gUnknown_08F25BF1 @ 1027 / 0x0403
    .word gUnknown_08F25BF8 @ 1028 / 0x0404
    .word gUnknown_08F25BFF @ 1029 / 0x0405
    .word gUnknown_08F25C07 @ 1030 / 0x0406
    .word gUnknown_08F25C0F @ 1031 / 0x0407
    .word gUnknown_08F25C16 @ 1032 / 0x0408
    .word gUnknown_08F25C1C @ 1033 / 0x0409
    .word gUnknown_08F25C21 @ 1034 / 0x040A
    .word gUnknown_08F25C2A @ 1035 / 0x040B
    .word gUnknown_08F25C2D @ 1036 / 0x040C
    .word gUnknown_08F25C34 @ 1037 / 0x040D
    .word gUnknown_08F25C3C @ 1038 / 0x040E
    .word gUnknown_08F25C42 @ 1039 / 0x040F
    .word gUnknown_08F25C49 @ 1040 / 0x0410
    .word gUnknown_08F25C4D @ 1041 / 0x0411
    .word gUnknown_08F25C4E @ 1042 / 0x0412
    .word gUnknown_08F25C4F @ 1043 / 0x0413
    .word gUnknown_08F25C50 @ 1044 / 0x0414
    .word gUnknown_08F25C51 @ 1045 / 0x0415
    .word gUnknown_08F25C5A @ 1046 / 0x0416
    .word gUnknown_08F25C62 @ 1047 / 0x0417
    .word gUnknown_08F25C6B @ 1048 / 0x0418
    .word gUnknown_08F25C74 @ 1049 / 0x0419
    .word gUnknown_08F25C7C @ 1050 / 0x041A
    .word gUnknown_08F25C84 @ 1051 / 0x041B
    .word gUnknown_08F25C8E @ 1052 / 0x041C
    .word gUnknown_08F25C98 @ 1053 / 0x041D
    .word gUnknown_08F25CA2 @ 1054 / 0x041E
    .word gUnknown_08F25CAB @ 1055 / 0x041F
    .word gUnknown_08F25CB2 @ 1056 / 0x0420
    .word gUnknown_08F25CB9 @ 1057 / 0x0421
    .word gUnknown_08F25CC0 @ 1058 / 0x0422
    .word gUnknown_08F25CC1 @ 1059 / 0x0423
    .word gUnknown_08F25CC2 @ 1060 / 0x0424
    .word gUnknown_08F25CCB @ 1061 / 0x0425
    .word gUnknown_08F25CD3 @ 1062 / 0x0426
    .word gUnknown_08F25CDB @ 1063 / 0x0427
    .word gUnknown_08F25CE2 @ 1064 / 0x0428
    .word gUnknown_08F25CEB @ 1065 / 0x0429
    .word gUnknown_08F25CF1 @ 1066 / 0x042A
    .word gUnknown_08F25CFA @ 1067 / 0x042B
    .word gUnknown_08F25CFF @ 1068 / 0x042C
    .word gUnknown_08F25D06 @ 1069 / 0x042D
    .word gUnknown_08F25D0D @ 1070 / 0x042E
    .word gUnknown_08F25D14 @ 1071 / 0x042F
    .word gUnknown_08F25D17 @ 1072 / 0x0430
    .word gUnknown_08F25D20 @ 1073 / 0x0431
    .word gUnknown_08F25D2A @ 1074 / 0x0432
    .word gUnknown_08F25D2B @ 1075 / 0x0433
    .word gUnknown_08F25D33 @ 1076 / 0x0434
    .word gUnknown_08F25D3D @ 1077 / 0x0435
    .word gUnknown_08F25D44 @ 1078 / 0x0436
    .word gUnknown_08F25D4D @ 1079 / 0x0437
    .word gUnknown_08F25D57 @ 1080 / 0x0438
    .word gUnknown_08F25D61 @ 1081 / 0x0439
    .word gUnknown_08F25D6A @ 1082 / 0x043A
    .word gUnknown_08F25D73 @ 1083 / 0x043B
    .word gUnknown_08F25D74 @ 1084 / 0x043C
    .word gUnknown_08F25D75 @ 1085 / 0x043D
    .word gUnknown_08F25D7D @ 1086 / 0x043E
    .word gUnknown_08F25D87 @ 1087 / 0x043F
    .word gUnknown_08F25D92 @ 1088 / 0x0440
    .word gUnknown_08F25D9B @ 1089 / 0x0441
    .word gUnknown_08F25DA6 @ 1090 / 0x0442
    .word gUnknown_08F25DAF @ 1091 / 0x0443
    .word gUnknown_08F25DB0 @ 1092 / 0x0444
    .word gUnknown_08F25DB1 @ 1093 / 0x0445
    .word gUnknown_08F25DB2 @ 1094 / 0x0446
    .word gUnknown_08F25DB3 @ 1095 / 0x0447
    .word gUnknown_08F25DBC @ 1096 / 0x0448
    .word gUnknown_08F25DC3 @ 1097 / 0x0449
    .word gUnknown_08F25DCC @ 1098 / 0x044A
    .word gUnknown_08F25DD0 @ 1099 / 0x044B
    .word gUnknown_08F25DD4 @ 1100 / 0x044C
    .word gUnknown_08F25DDE @ 1101 / 0x044D
    .word gUnknown_08F25DE4 @ 1102 / 0x044E
    .word gUnknown_08F25DED @ 1103 / 0x044F
    .word gUnknown_08F25DF5 @ 1104 / 0x0450
    .word gUnknown_08F25DFF @ 1105 / 0x0451
    .word gUnknown_08F25E09 @ 1106 / 0x0452
    .word gUnknown_08F25E11 @ 1107 / 0x0453
    .word gUnknown_08F25E1A @ 1108 / 0x0454
    .word gUnknown_08F25E23 @ 1109 / 0x0455
    .word gUnknown_08F25E28 @ 1110 / 0x0456
    .word gUnknown_08F25E31 @ 1111 / 0x0457
    .word gUnknown_08F25E37 @ 1112 / 0x0458
    .word gUnknown_08F25E40 @ 1113 / 0x0459
    .word gUnknown_08F25E43 @ 1114 / 0x045A
    .word gUnknown_08F25E44 @ 1115 / 0x045B
    .word gUnknown_08F25E45 @ 1116 / 0x045C
    .word gUnknown_08F25E46 @ 1117 / 0x045D
    .word gUnknown_08F25E47 @ 1118 / 0x045E
    .word gUnknown_08F25E48 @ 1119 / 0x045F
    .word gUnknown_08F25E49 @ 1120 / 0x0460
    .word gUnknown_08F25E4A @ 1121 / 0x0461
    .word gUnknown_08F25E4B @ 1122 / 0x0462
    .word gUnknown_08F25E4C @ 1123 / 0x0463
    .word gUnknown_08F25E4D @ 1124 / 0x0464
    .word gUnknown_08F25E4E @ 1125 / 0x0465
    .word gUnknown_08F25E4F @ 1126 / 0x0466
    .word gUnknown_08F25E50 @ 1127 / 0x0467
    .word gUnknown_08F25E55 @ 1128 / 0x0468
    .word gUnknown_08F25E56 @ 1129 / 0x0469
    .word gUnknown_08F25E5C @ 1130 / 0x046A
    .word gUnknown_08F25E66 @ 1131 / 0x046B
    .word gUnknown_08F25E67 @ 1132 / 0x046C
    .word gUnknown_08F25E68 @ 1133 / 0x046D
    .word gUnknown_08F25E69 @ 1134 / 0x046E
    .word gUnknown_08F25E6A @ 1135 / 0x046F
    .word gUnknown_08F25E6B @ 1136 / 0x0470
    .word gUnknown_08F25E73 @ 1137 / 0x0471
    .word gUnknown_08F25E7B @ 1138 / 0x0472
    .word gUnknown_08F25E83 @ 1139 / 0x0473
    .word gUnknown_08F25E8B @ 1140 / 0x0474
    .word gUnknown_08F25E93 @ 1141 / 0x0475
    .word gUnknown_08F25E94 @ 1142 / 0x0476
    .word gUnknown_08F25E95 @ 1143 / 0x0477
    .word gUnknown_08F25E96 @ 1144 / 0x0478
    .word gUnknown_08F25E9D @ 1145 / 0x0479
    .word gUnknown_08F25EA4 @ 1146 / 0x047A
    .word gUnknown_08F25EAB @ 1147 / 0x047B
    .word gUnknown_08F25EB2 @ 1148 / 0x047C
    .word gUnknown_08F25EBC @ 1149 / 0x047D
    .word gUnknown_08F25EC5 @ 1150 / 0x047E
    .word gUnknown_08F25ECE @ 1151 / 0x047F
    .word gUnknown_08F25ED6 @ 1152 / 0x0480
    .word gUnknown_08F25EDF @ 1153 / 0x0481
    .word gUnknown_08F25EE9 @ 1154 / 0x0482
    .word gUnknown_08F25EF1 @ 1155 / 0x0483
    .word gUnknown_08F25EF8 @ 1156 / 0x0484
    .word gUnknown_08F25EFE @ 1157 / 0x0485
    .word gUnknown_08F25F06 @ 1158 / 0x0486
    .word gUnknown_08F25F0D @ 1159 / 0x0487
    .word gUnknown_08F25F15 @ 1160 / 0x0488
    .word gUnknown_08F25F1E @ 1161 / 0x0489
    .word gUnknown_08F25F29 @ 1162 / 0x048A
    .word gUnknown_08F25F34 @ 1163 / 0x048B
    .word gUnknown_08F25F3C @ 1164 / 0x048C
    .word gUnknown_08F25F47 @ 1165 / 0x048D
    .word gUnknown_08F25F52 @ 1166 / 0x048E
    .word gUnknown_08F25F5A @ 1167 / 0x048F
    .word gUnknown_08F25F62 @ 1168 / 0x0490
    .word gUnknown_08F25F6A @ 1169 / 0x0491
    .word gUnknown_08F25F72 @ 1170 / 0x0492
    .word gUnknown_08F25F7A @ 1171 / 0x0493
    .word gUnknown_08F25F82 @ 1172 / 0x0494
    .word gUnknown_08F25F8B @ 1173 / 0x0495
    .word gUnknown_08F25F94 @ 1174 / 0x0496
    .word gUnknown_08F25F9D @ 1175 / 0x0497
    .word gUnknown_08F25FA6 @ 1176 / 0x0498
    .word gUnknown_08F25FAD @ 1177 / 0x0499
    .word gUnknown_08F25FB4 @ 1178 / 0x049A
    .word gUnknown_08F25FBB @ 1179 / 0x049B
    .word gUnknown_08F25FC2 @ 1180 / 0x049C
    .word gUnknown_08F25FCA @ 1181 / 0x049D
    .word gUnknown_08F25FD2 @ 1182 / 0x049E
    .word gUnknown_08F25FDA @ 1183 / 0x049F
    .word gUnknown_08F25FDB @ 1184 / 0x04A0
    .word gUnknown_08F25FDC @ 1185 / 0x04A1
    .word gUnknown_08F25FDD @ 1186 / 0x04A2
    .word gUnknown_08F25FDE @ 1187 / 0x04A3
    .word gUnknown_08F25FDF @ 1188 / 0x04A4
    .word gUnknown_08F25FE0 @ 1189 / 0x04A5
    .word gUnknown_08F25FE1 @ 1190 / 0x04A6
    .word gUnknown_08F25FE2 @ 1191 / 0x04A7
    .word gUnknown_08F25FE3 @ 1192 / 0x04A8
    .word gUnknown_08F25FEA @ 1193 / 0x04A9
    .word gUnknown_08F25FF1 @ 1194 / 0x04AA
    .word gUnknown_08F25FF8 @ 1195 / 0x04AB
    .word gUnknown_08F25FFF @ 1196 / 0x04AC
    .word gUnknown_08F26006 @ 1197 / 0x04AD
    .word gUnknown_08F2600D @ 1198 / 0x04AE
    .word gUnknown_08F26014 @ 1199 / 0x04AF
    .word gUnknown_08F2601B @ 1200 / 0x04B0
    .word gUnknown_08F2601C @ 1201 / 0x04B1
    .word gUnknown_08F26021 @ 1202 / 0x04B2
    .word gUnknown_08F26026 @ 1203 / 0x04B3
    .word gUnknown_08F2602B @ 1204 / 0x04B4
    .word gUnknown_08F26030 @ 1205 / 0x04B5
    .word gUnknown_08F26035 @ 1206 / 0x04B6
    .word gUnknown_08F2603A @ 1207 / 0x04B7
    .word gUnknown_08F2603F @ 1208 / 0x04B8
    .word gUnknown_08F26044 @ 1209 / 0x04B9
    .word gUnknown_08F26049 @ 1210 / 0x04BA
    .word gUnknown_08F2604E @ 1211 / 0x04BB
    .word gUnknown_08F26059 @ 1212 / 0x04BC
    .word 0                 @ 1213 / 0x04BD
    .word 0                 @ 1214 / 0x04BE
    .word 0                 @ 1215 / 0x04BF
    .word 0                 @ 1216 / 0x04C0
    .word 0                 @ 1217 / 0x04C1
    .word 0                 @ 1218 / 0x04C2
    .word 0                 @ 1219 / 0x04C3
    .word 0                 @ 1220 / 0x04C4
    .word 0                 @ 1221 / 0x04C5
    .word 0                 @ 1222 / 0x04C6
    .word 0                 @ 1223 / 0x04C7
    .word 0                 @ 1224 / 0x04C8
    .word 0                 @ 1225 / 0x04C9
    .word 0                 @ 1226 / 0x04CA
    .word 0                 @ 1227 / 0x04CB
    .word 0                 @ 1228 / 0x04CC
    .word 0                 @ 1229 / 0x04CD
    .word gUnknown_08F26060 @ 1230 / 0x04CE
    .word gUnknown_08F26061 @ 1231 / 0x04CF
    .word gUnknown_08F26067 @ 1232 / 0x04D0
    .word gUnknown_08F2606E @ 1233 / 0x04D1
    .word gUnknown_08F26077 @ 1234 / 0x04D2
    .word gUnknown_08F2607E @ 1235 / 0x04D3
    .word gUnknown_08F26085 @ 1236 / 0x04D4
    .word gUnknown_08F2608B @ 1237 / 0x04D5
    .word gUnknown_08F26091 @ 1238 / 0x04D6
    .word gUnknown_08F26098 @ 1239 / 0x04D7
    .word 0                 @ 1240 / 0x04D8
    .word 0                 @ 1241 / 0x04D9
    .word 0                 @ 1242 / 0x04DA
    .word 0                 @ 1243 / 0x04DB
    .word 0                 @ 1244 / 0x04DC
    .word 0                 @ 1245 / 0x04DD
    .word 0                 @ 1246 / 0x04DE
    .word 0                 @ 1247 / 0x04DF
    .word 0                 @ 1248 / 0x04E0
    .word 0                 @ 1249 / 0x04E1
    .word 0                 @ 1250 / 0x04E2
    .word 0                 @ 1251 / 0x04E3
    .word 0                 @ 1252 / 0x04E4
    .word 0                 @ 1253 / 0x04E5
    .word 0                 @ 1254 / 0x04E6
    .word 0                 @ 1255 / 0x04E7
    .word 0                 @ 1256 / 0x04E8
    .word 0                 @ 1257 / 0x04E9
    .word 0                 @ 1258 / 0x04EA
    .word 0                 @ 1259 / 0x04EB
    .word 0                 @ 1260 / 0x04EC
    .word 0                 @ 1261 / 0x04ED
    .word 0                 @ 1262 / 0x04EE
    .word 0                 @ 1263 / 0x04EF
    .word 0                 @ 1264 / 0x04F0
    .word 0                 @ 1265 / 0x04F1
    .word 0                 @ 1266 / 0x04F2
    .word 0                 @ 1267 / 0x04F3
    .word 0                 @ 1268 / 0x04F4
    .word 0                 @ 1269 / 0x04F5
    .word 0                 @ 1270 / 0x04F6
    .word 0                 @ 1271 / 0x04F7
    .word 0                 @ 1272 / 0x04F8
    .word 0                 @ 1273 / 0x04F9
    .word 0                 @ 1274 / 0x04FA
    .word 0                 @ 1275 / 0x04FB
    .word 0                 @ 1276 / 0x04FC
    .word 0                 @ 1277 / 0x04FD
    .word 0                 @ 1278 / 0x04FE
    .word 0                 @ 1279 / 0x04FF
    .word 0                 @ 1280 / 0x0500
    .word 0                 @ 1281 / 0x0501
    .word 0                 @ 1282 / 0x0502
    .word 0                 @ 1283 / 0x0503
    .word 0                 @ 1284 / 0x0504
    .word 0                 @ 1285 / 0x0505
    .word 0                 @ 1286 / 0x0506
    .word 0                 @ 1287 / 0x0507
    .word 0                 @ 1288 / 0x0508
    .word 0                 @ 1289 / 0x0509
    .word 0                 @ 1290 / 0x050A
    .word 0                 @ 1291 / 0x050B
    .word 0                 @ 1292 / 0x050C
    .word 0                 @ 1293 / 0x050D
    .word 0                 @ 1294 / 0x050E
    .word 0                 @ 1295 / 0x050F
    .word 0                 @ 1296 / 0x0510
    .word 0                 @ 1297 / 0x0511
    .word 0                 @ 1298 / 0x0512
    .word 0                 @ 1299 / 0x0513
    .word gUnknown_08F23FEE @ 1300 / 0x0514
    .word gUnknown_08F23FEF @ 1301 / 0x0515
    .word gUnknown_08F24000 @ 1302 / 0x0516
    .word gUnknown_08F2401D @ 1303 / 0x0517
    .word gUnknown_08F2403C @ 1304 / 0x0518
    .word gUnknown_08F24062 @ 1305 / 0x0519
    .word gUnknown_08F24082 @ 1306 / 0x051A
    .word gUnknown_08F2409E @ 1307 / 0x051B
    .word gUnknown_08F240B8 @ 1308 / 0x051C
    .word gUnknown_08F240D4 @ 1309 / 0x051D
    .word gUnknown_08F240F7 @ 1310 / 0x051E
    .word gUnknown_08F24114 @ 1311 / 0x051F
    .word gUnknown_08F24135 @ 1312 / 0x0520
    .word gUnknown_08F24159 @ 1313 / 0x0521
    .word gUnknown_08F24176 @ 1314 / 0x0522
    .word gUnknown_08F24189 @ 1315 / 0x0523
    .word gUnknown_08F2419D @ 1316 / 0x0524
    .word gUnknown_08F241B0 @ 1317 / 0x0525
    .word gUnknown_08F241CA @ 1318 / 0x0526
    .word gUnknown_08F241DD @ 1319 / 0x0527
    .word gUnknown_08F241DE @ 1320 / 0x0528
    .word gUnknown_08F241F0 @ 1321 / 0x0529
    .word gUnknown_08F2420A @ 1322 / 0x052A
    .word gUnknown_08F24215 @ 1323 / 0x052B
    .word gUnknown_08F24234 @ 1324 / 0x052C
    .word gUnknown_08F24244 @ 1325 / 0x052D
    .word gUnknown_08F24256 @ 1326 / 0x052E
    .word gUnknown_08F24278 @ 1327 / 0x052F
    .word gUnknown_08F2428B @ 1328 / 0x0530
    .word gUnknown_08F2429C @ 1329 / 0x0531
    .word gUnknown_08F242B0 @ 1330 / 0x0532
    .word gUnknown_08F242C2 @ 1331 / 0x0533
    .word gUnknown_08F242D6 @ 1332 / 0x0534
    .word gUnknown_08F242F7 @ 1333 / 0x0535
    .word gUnknown_08F2430B @ 1334 / 0x0536
    .word gUnknown_08F2431F @ 1335 / 0x0537
    .word gUnknown_08F2432F @ 1336 / 0x0538
    .word gUnknown_08F24341 @ 1337 / 0x0539
    .word gUnknown_08F24362 @ 1338 / 0x053A
    .word gUnknown_08F24386 @ 1339 / 0x053B
    .word gUnknown_08F243AA @ 1340 / 0x053C
    .word gUnknown_08F243C2 @ 1341 / 0x053D
    .word gUnknown_08F243C3 @ 1342 / 0x053E
    .word gUnknown_08F243DD @ 1343 / 0x053F
    .word gUnknown_08F243F0 @ 1344 / 0x0540
    .word gUnknown_08F2440E @ 1345 / 0x0541
    .word gUnknown_08F24424 @ 1346 / 0x0542
    .word gUnknown_08F24435 @ 1347 / 0x0543
    .word gUnknown_08F2444D @ 1348 / 0x0544
    .word gUnknown_08F2445F @ 1349 / 0x0545
    .word gUnknown_08F2446C @ 1350 / 0x0546
    .word gUnknown_08F2447D @ 1351 / 0x0547
    .word gUnknown_08F2448F @ 1352 / 0x0548
    .word gUnknown_08F244B2 @ 1353 / 0x0549
    .word gUnknown_08F244C4 @ 1354 / 0x054A
    .word gUnknown_08F244DE @ 1355 / 0x054B
    .word gUnknown_08F244FB @ 1356 / 0x054C
    .word gUnknown_08F2451F @ 1357 / 0x054D
    .word gUnknown_08F24531 @ 1358 / 0x054E
    .word gUnknown_08F24550 @ 1359 / 0x054F
    .word gUnknown_08F2456F @ 1360 / 0x0550
    .word gUnknown_08F24589 @ 1361 / 0x0551
    .word gUnknown_08F24593 @ 1362 / 0x0552
    .word gUnknown_08F245B1 @ 1363 / 0x0553
    .word gUnknown_08F245C5 @ 1364 / 0x0554
    .word gUnknown_08F245D9 @ 1365 / 0x0555
    .word gUnknown_08F245DA @ 1366 / 0x0556
    .word gUnknown_08F245ED @ 1367 / 0x0557
    .word gUnknown_08F245FF @ 1368 / 0x0558
    .word gUnknown_08F24600 @ 1369 / 0x0559
    .word gUnknown_08F24601 @ 1370 / 0x055A
    .word gUnknown_08F24624 @ 1371 / 0x055B
    .word gUnknown_08F24634 @ 1372 / 0x055C
    .word gUnknown_08F24635 @ 1373 / 0x055D
    .word gUnknown_08F24636 @ 1374 / 0x055E
    .word gUnknown_08F2464A @ 1375 / 0x055F
    .word gUnknown_08F2465E @ 1376 / 0x0560
    .word gUnknown_08F2467E @ 1377 / 0x0561
    .word gUnknown_08F2467F @ 1378 / 0x0562
    .word gUnknown_08F24680 @ 1379 / 0x0563
    .word gUnknown_08F24681 @ 1380 / 0x0564
    .word gUnknown_08F24682 @ 1381 / 0x0565
    .word gUnknown_08F24694 @ 1382 / 0x0566
    .word gUnknown_08F246A3 @ 1383 / 0x0567
    .word gUnknown_08F246B7 @ 1384 / 0x0568
    .word gUnknown_08F246B8 @ 1385 / 0x0569
    .word gUnknown_08F246D3 @ 1386 / 0x056A
    .word gUnknown_08F246D4 @ 1387 / 0x056B
    .word gUnknown_08F246E6 @ 1388 / 0x056C
    .word gUnknown_08F246F9 @ 1389 / 0x056D
    .word gUnknown_08F24714 @ 1390 / 0x056E
    .word gUnknown_08F24730 @ 1391 / 0x056F
    .word gUnknown_08F2474A @ 1392 / 0x0570
    .word gUnknown_08F2475B @ 1393 / 0x0571
    .word gUnknown_08F2475C @ 1394 / 0x0572
    .word gUnknown_08F2476C @ 1395 / 0x0573
    .word gUnknown_08F24785 @ 1396 / 0x0574
    .word gUnknown_08F24796 @ 1397 / 0x0575
    .word gUnknown_08F24797 @ 1398 / 0x0576
    .word gUnknown_08F24798 @ 1399 / 0x0577
    .word gUnknown_08F247A4 @ 1400 / 0x0578
    .word gUnknown_08F247A5 @ 1401 / 0x0579
    .word gUnknown_08F247B8 @ 1402 / 0x057A
    .word gUnknown_08F247C6 @ 1403 / 0x057B
    .word gUnknown_08F247E0 @ 1404 / 0x057C
    .word gUnknown_08F247F3 @ 1405 / 0x057D
    .word gUnknown_08F24812 @ 1406 / 0x057E
    .word gUnknown_08F24825 @ 1407 / 0x057F
    .word gUnknown_08F24838 @ 1408 / 0x0580
    .word gUnknown_08F24859 @ 1409 / 0x0581
    .word gUnknown_08F2487E @ 1410 / 0x0582
    .word gUnknown_08F2489F @ 1411 / 0x0583
    .word gUnknown_08F248B2 @ 1412 / 0x0584
    .word gUnknown_08F248C3 @ 1413 / 0x0585
    .word gUnknown_08F248DF @ 1414 / 0x0586
    .word gUnknown_08F248E0 @ 1415 / 0x0587
    .word gUnknown_08F248F2 @ 1416 / 0x0588
    .word gUnknown_08F24911 @ 1417 / 0x0589
    .word gUnknown_08F24932 @ 1418 / 0x058A
    .word gUnknown_08F2493F @ 1419 / 0x058B
    .word gUnknown_08F2495D @ 1420 / 0x058C
    .word gUnknown_08F2497B @ 1421 / 0x058D
    .word 0                 @ 1422 / 0x058E
    .word 0                 @ 1423 / 0x058F
    .word 0                 @ 1424 / 0x0590
    .word 0                 @ 1425 / 0x0591
    .word 0                 @ 1426 / 0x0592
    .word gUnknown_08F2498C @ 1427 / 0x0593
    .word 0                 @ 1428 / 0x0594
    .word 0                 @ 1429 / 0x0595
    .word 0                 @ 1430 / 0x0596
    .word 0                 @ 1431 / 0x0597
    .word 0                 @ 1432 / 0x0598
    .word 0                 @ 1433 / 0x0599
    .word 0                 @ 1434 / 0x059A
    .word 0                 @ 1435 / 0x059B
    .word 0                 @ 1436 / 0x059C
    .word 0                 @ 1437 / 0x059D
    .word 0                 @ 1438 / 0x059E
    .word 0                 @ 1439 / 0x059F
    .word 0                 @ 1440 / 0x05A0
    .word 0                 @ 1441 / 0x05A1
    .word 0                 @ 1442 / 0x05A2
    .word 0                 @ 1443 / 0x05A3
    .word 0                 @ 1444 / 0x05A4
    .word 0                 @ 1445 / 0x05A5
    .word 0                 @ 1446 / 0x05A6
    .word 0                 @ 1447 / 0x05A7
    .word 0                 @ 1448 / 0x05A8
    .word 0                 @ 1449 / 0x05A9
    .word 0                 @ 1450 / 0x05AA
    .word 0                 @ 1451 / 0x05AB
    .word 0                 @ 1452 / 0x05AC
    .word 0                 @ 1453 / 0x05AD
    .word 0                 @ 1454 / 0x05AE
    .word 0                 @ 1455 / 0x05AF
    .word 0                 @ 1456 / 0x05B0
    .word 0                 @ 1457 / 0x05B1
    .word 0                 @ 1458 / 0x05B2
    .word 0                 @ 1459 / 0x05B3
    .word 0                 @ 1460 / 0x05B4
    .word 0                 @ 1461 / 0x05B5
    .word 0                 @ 1462 / 0x05B6
    .word 0                 @ 1463 / 0x05B7
    .word 0                 @ 1464 / 0x05B8
    .word 0                 @ 1465 / 0x05B9
    .word 0                 @ 1466 / 0x05BA
    .word 0                 @ 1467 / 0x05BB
    .word 0                 @ 1468 / 0x05BC
    .word 0                 @ 1469 / 0x05BD
    .word 0                 @ 1470 / 0x05BE
    .word 0                 @ 1471 / 0x05BF
    .word 0                 @ 1472 / 0x05C0
    .word 0                 @ 1473 / 0x05C1
    .word 0                 @ 1474 / 0x05C2
    .word 0                 @ 1475 / 0x05C3
    .word 0                 @ 1476 / 0x05C4
    .word 0                 @ 1477 / 0x05C5
    .word 0                 @ 1478 / 0x05C6
    .word 0                 @ 1479 / 0x05C7
    .word 0                 @ 1480 / 0x05C8
    .word 0                 @ 1481 / 0x05C9
    .word 0                 @ 1482 / 0x05CA
    .word 0                 @ 1483 / 0x05CB
    .word 0                 @ 1484 / 0x05CC
    .word 0                 @ 1485 / 0x05CD
    .word 0                 @ 1486 / 0x05CE
    .word 0                 @ 1487 / 0x05CF
    .word 0                 @ 1488 / 0x05D0
    .word 0                 @ 1489 / 0x05D1
    .word 0                 @ 1490 / 0x05D2
    .word 0                 @ 1491 / 0x05D3
    .word 0                 @ 1492 / 0x05D4
    .word 0                 @ 1493 / 0x05D5
    .word 0                 @ 1494 / 0x05D6
    .word 0                 @ 1495 / 0x05D7
    .word 0                 @ 1496 / 0x05D8
    .word 0                 @ 1497 / 0x05D9
    .word 0                 @ 1498 / 0x05DA
    .word 0                 @ 1499 / 0x05DB
    .word gUnknown_08F25898 @ 1500 / 0x05DC
    .word gUnknown_08F25899 @ 1501 / 0x05DD
    .word gUnknown_08F258A0 @ 1502 / 0x05DE
    .word gUnknown_08F258A5 @ 1503 / 0x05DF
    .word gUnknown_08F258AC @ 1504 / 0x05E0
    .word gUnknown_08F258B1 @ 1505 / 0x05E1
    .word gUnknown_08F258B4 @ 1506 / 0x05E2
    .word gUnknown_08F258BB @ 1507 / 0x05E3
    .word gUnknown_08F258C3 @ 1508 / 0x05E4
    .word gUnknown_08F258CA @ 1509 / 0x05E5
    .word gUnknown_08F258D0 @ 1510 / 0x05E6
    .word gUnknown_08F258D6 @ 1511 / 0x05E7
    .word gUnknown_08F258DB @ 1512 / 0x05E8
    .word gUnknown_08F258DF @ 1513 / 0x05E9
    .word gUnknown_08F258E4 @ 1514 / 0x05EA
    .word gUnknown_08F258E9 @ 1515 / 0x05EB
    .word gUnknown_08F258EF @ 1516 / 0x05EC
    .word gUnknown_08F258F3 @ 1517 / 0x05ED
    .word gUnknown_08F258FB @ 1518 / 0x05EE
    .word gUnknown_08F25901 @ 1519 / 0x05EF
    .word gUnknown_08F25905 @ 1520 / 0x05F0
    .word gUnknown_08F2590A @ 1521 / 0x05F1
    .word gUnknown_08F2590F @ 1522 / 0x05F2
    .word gUnknown_08F25917 @ 1523 / 0x05F3
    .word gUnknown_08F2591A @ 1524 / 0x05F4
    .word gUnknown_08F25921 @ 1525 / 0x05F5
    .word gUnknown_08F2592A @ 1526 / 0x05F6
    .word gUnknown_08F25931 @ 1527 / 0x05F7
    .word gUnknown_08F25939 @ 1528 / 0x05F8
    .word gUnknown_08F2593F @ 1529 / 0x05F9
    .word gUnknown_08F25944 @ 1530 / 0x05FA
    .word gUnknown_08F2594A @ 1531 / 0x05FB
    .word gUnknown_08F2594E @ 1532 / 0x05FC
    .word gUnknown_08F25954 @ 1533 / 0x05FD
    .word gUnknown_08F25958 @ 1534 / 0x05FE
    .word gUnknown_08F2595E @ 1535 / 0x05FF
    .word gUnknown_08F25963 @ 1536 / 0x0600
    .word gUnknown_08F25968 @ 1537 / 0x0601
    .word gUnknown_08F2596E @ 1538 / 0x0602
    .word gUnknown_08F25973 @ 1539 / 0x0603
    .word gUnknown_08F2597A @ 1540 / 0x0604
    .word gUnknown_08F25981 @ 1541 / 0x0605
    .word gUnknown_08F25982 @ 1542 / 0x0606
    .word gUnknown_08F2598A @ 1543 / 0x0607
    .word gUnknown_08F25991 @ 1544 / 0x0608
    .word gUnknown_08F25995 @ 1545 / 0x0609
    .word gUnknown_08F2599A @ 1546 / 0x060A
    .word gUnknown_08F2599F @ 1547 / 0x060B
    .word gUnknown_08F259A4 @ 1548 / 0x060C
    .word gUnknown_08F259A8 @ 1549 / 0x060D
    .word gUnknown_08F259B0 @ 1550 / 0x060E
    .word gUnknown_08F259B4 @ 1551 / 0x060F
    .word gUnknown_08F259BA @ 1552 / 0x0610
    .word gUnknown_08F259BE @ 1553 / 0x0611
    .word gUnknown_08F259C2 @ 1554 / 0x0612
    .word gUnknown_08F259CA @ 1555 / 0x0613
    .word gUnknown_08F259CF @ 1556 / 0x0614
    .word gUnknown_08F259D7 @ 1557 / 0x0615
    .word gUnknown_08F259DC @ 1558 / 0x0616
    .word gUnknown_08F259E4 @ 1559 / 0x0617
    .word gUnknown_08F259EB @ 1560 / 0x0618
    .word gUnknown_08F259F5 @ 1561 / 0x0619
    .word gUnknown_08F259FA @ 1562 / 0x061A
    .word gUnknown_08F25A02 @ 1563 / 0x061B
    .word gUnknown_08F25A06 @ 1564 / 0x061C
    .word gUnknown_08F25A0A @ 1565 / 0x061D
    .word gUnknown_08F25A0B @ 1566 / 0x061E
    .word gUnknown_08F25A11 @ 1567 / 0x061F
    .word gUnknown_08F25A19 @ 1568 / 0x0620
    .word gUnknown_08F25A1A @ 1569 / 0x0621
    .word gUnknown_08F25A1B @ 1570 / 0x0622
    .word gUnknown_08F25A22 @ 1571 / 0x0623
    .word gUnknown_08F25A29 @ 1572 / 0x0624
    .word gUnknown_08F25A2A @ 1573 / 0x0625
    .word gUnknown_08F25A2B @ 1574 / 0x0626
    .word gUnknown_08F25A33 @ 1575 / 0x0627
    .word gUnknown_08F25A3C @ 1576 / 0x0628
    .word gUnknown_08F25A41 @ 1577 / 0x0629
    .word gUnknown_08F25A42 @ 1578 / 0x062A
    .word gUnknown_08F25A43 @ 1579 / 0x062B
    .word gUnknown_08F25A44 @ 1580 / 0x062C
    .word gUnknown_08F25A45 @ 1581 / 0x062D
    .word gUnknown_08F25A4C @ 1582 / 0x062E
    .word gUnknown_08F25A53 @ 1583 / 0x062F
    .word gUnknown_08F25A59 @ 1584 / 0x0630
    .word gUnknown_08F25A5A @ 1585 / 0x0631
    .word gUnknown_08F25A61 @ 1586 / 0x0632
    .word gUnknown_08F25A62 @ 1587 / 0x0633
    .word gUnknown_08F25A6A @ 1588 / 0x0634
    .word gUnknown_08F25A6F @ 1589 / 0x0635
    .word gUnknown_08F25A75 @ 1590 / 0x0636
    .word gUnknown_08F25A7D @ 1591 / 0x0637
    .word gUnknown_08F25A84 @ 1592 / 0x0638
    .word gUnknown_08F25A8D @ 1593 / 0x0639
    .word gUnknown_08F25A8E @ 1594 / 0x063A
    .word gUnknown_08F25A96 @ 1595 / 0x063B
    .word gUnknown_08F25A9D @ 1596 / 0x063C
    .word gUnknown_08F25AA2 @ 1597 / 0x063D
    .word gUnknown_08F25AA3 @ 1598 / 0x063E
    .word gUnknown_08F25AA4 @ 1599 / 0x063F
    .word gUnknown_08F25AAB @ 1600 / 0x0640
    .word gUnknown_08F25AAC @ 1601 / 0x0641
    .word gUnknown_08F25AB2 @ 1602 / 0x0642
    .word gUnknown_08F25AB9 @ 1603 / 0x0643
    .word gUnknown_08F25AC0 @ 1604 / 0x0644
    .word gUnknown_08F25AC8 @ 1605 / 0x0645
    .word gUnknown_08F25AD0 @ 1606 / 0x0646
    .word gUnknown_08F25AD7 @ 1607 / 0x0647
    .word gUnknown_08F25ADF @ 1608 / 0x0648
    .word gUnknown_08F25AE8 @ 1609 / 0x0649
    .word gUnknown_08F25AED @ 1610 / 0x064A
    .word gUnknown_08F25AF6 @ 1611 / 0x064B
    .word gUnknown_08F25AFC @ 1612 / 0x064C
    .word gUnknown_08F25B03 @ 1613 / 0x064D
    .word gUnknown_08F25B08 @ 1614 / 0x064E
    .word gUnknown_08F25B09 @ 1615 / 0x064F
    .word gUnknown_08F25B0D @ 1616 / 0x0650
    .word gUnknown_08F25B16 @ 1617 / 0x0651
    .word gUnknown_08F25B1D @ 1618 / 0x0652
    .word gUnknown_08F25B24 @ 1619 / 0x0653
    .word gUnknown_08F25B2A @ 1620 / 0x0654
    .word gUnknown_08F25B33 @ 1621 / 0x0655
    .word gUnknown_08F25B3C @ 1622 / 0x0656
    .word gUnknown_08F25B3D @ 1623 / 0x0657
    .word gUnknown_08F25B3E @ 1624 / 0x0658
    .word gUnknown_08F25B3F @ 1625 / 0x0659
    .word gUnknown_08F25B40 @ 1626 / 0x065A
    .word gUnknown_08F25B41 @ 1627 / 0x065B
    .word 0                 @ 1628 / 0x065C
    .word 0                 @ 1629 / 0x065D
    .word 0                 @ 1630 / 0x065E
    .word 0                 @ 1631 / 0x065F
    .word 0                 @ 1632 / 0x0660
    .word 0                 @ 1633 / 0x0661
    .word 0                 @ 1634 / 0x0662
    .word 0                 @ 1635 / 0x0663
    .word 0                 @ 1636 / 0x0664
    .word 0                 @ 1637 / 0x0665
    .word 0                 @ 1638 / 0x0666
    .word 0                 @ 1639 / 0x0667
    .word 0                 @ 1640 / 0x0668
    .word 0                 @ 1641 / 0x0669
    .word 0                 @ 1642 / 0x066A
    .word 0                 @ 1643 / 0x066B
    .word 0                 @ 1644 / 0x066C
    .word 0                 @ 1645 / 0x066D
    .word 0                 @ 1646 / 0x066E
    .word 0                 @ 1647 / 0x066F
    .word 0                 @ 1648 / 0x0670
    .word 0                 @ 1649 / 0x0671
    .word 0                 @ 1650 / 0x0672
    .word 0                 @ 1651 / 0x0673
    .word 0                 @ 1652 / 0x0674
    .word 0                 @ 1653 / 0x0675
    .word 0                 @ 1654 / 0x0676
    .word 0                 @ 1655 / 0x0677
    .word 0                 @ 1656 / 0x0678
    .word 0                 @ 1657 / 0x0679
    .word 0                 @ 1658 / 0x067A
    .word 0                 @ 1659 / 0x067B
    .word 0                 @ 1660 / 0x067C
    .word 0                 @ 1661 / 0x067D
    .word 0                 @ 1662 / 0x067E
    .word 0                 @ 1663 / 0x067F
    .word 0                 @ 1664 / 0x0680
    .word 0                 @ 1665 / 0x0681
    .word 0                 @ 1666 / 0x0682
    .word 0                 @ 1667 / 0x0683
    .word 0                 @ 1668 / 0x0684
    .word 0                 @ 1669 / 0x0685
    .word 0                 @ 1670 / 0x0686
    .word 0                 @ 1671 / 0x0687
    .word 0                 @ 1672 / 0x0688
    .word 0                 @ 1673 / 0x0689
    .word 0                 @ 1674 / 0x068A
    .word 0                 @ 1675 / 0x068B
    .word 0                 @ 1676 / 0x068C
    .word 0                 @ 1677 / 0x068D
    .word 0                 @ 1678 / 0x068E
    .word 0                 @ 1679 / 0x068F
    .word 0                 @ 1680 / 0x0690
    .word 0                 @ 1681 / 0x0691
    .word 0                 @ 1682 / 0x0692
    .word 0                 @ 1683 / 0x0693
    .word 0                 @ 1684 / 0x0694
    .word 0                 @ 1685 / 0x0695
    .word 0                 @ 1686 / 0x0696
    .word 0                 @ 1687 / 0x0697
    .word 0                 @ 1688 / 0x0698
    .word 0                 @ 1689 / 0x0699
    .word 0                 @ 1690 / 0x069A
    .word 0                 @ 1691 / 0x069B
    .word 0                 @ 1692 / 0x069C
    .word 0                 @ 1693 / 0x069D
    .word 0                 @ 1694 / 0x069E
    .word 0                 @ 1695 / 0x069F
    .word 0                 @ 1696 / 0x06A0
    .word 0                 @ 1697 / 0x06A1
    .word 0                 @ 1698 / 0x06A2
    .word 0                 @ 1699 / 0x06A3
    .word gUnknown_08F23945 @ 1700 / 0x06A4
    .word gUnknown_08F23946 @ 1701 / 0x06A5
    .word gUnknown_08F23957 @ 1702 / 0x06A6
    .word gUnknown_08F2396B @ 1703 / 0x06A7
    .word gUnknown_08F23983 @ 1704 / 0x06A8
    .word gUnknown_08F2399C @ 1705 / 0x06A9
    .word gUnknown_08F239B5 @ 1706 / 0x06AA
    .word 0                 @ 1707 / 0x06AB
    .word 0                 @ 1708 / 0x06AC
    .word 0                 @ 1709 / 0x06AD
    .word 0                 @ 1710 / 0x06AE
    .word gUnknown_08F239DD @ 1711 / 0x06AF
    .word gUnknown_08F239EC @ 1712 / 0x06B0
    .word gUnknown_08F239FB @ 1713 / 0x06B1
    .word gUnknown_08F23A07 @ 1714 / 0x06B2
    .word gUnknown_08F23A11 @ 1715 / 0x06B3
    .word gUnknown_08F23A1B @ 1716 / 0x06B4
    .word gUnknown_08F23A25 @ 1717 / 0x06B5
    .word gUnknown_08F23A31 @ 1718 / 0x06B6
    .word gUnknown_08F23A3D @ 1719 / 0x06B7
    .word gUnknown_08F23A49 @ 1720 / 0x06B8
    .word gUnknown_08F23A56 @ 1721 / 0x06B9
    .word gUnknown_08F23A62 @ 1722 / 0x06BA
    .word gUnknown_08F23A85 @ 1723 / 0x06BB
    .word gUnknown_08F23AA2 @ 1724 / 0x06BC
    .word gUnknown_08F23AC2 @ 1725 / 0x06BD
    .word gUnknown_08F23AE5 @ 1726 / 0x06BE
    .word gUnknown_08F23AF9 @ 1727 / 0x06BF
    .word gUnknown_08F23B0D @ 1728 / 0x06C0
    .word gUnknown_08F23B23 @ 1729 / 0x06C1
    .word gUnknown_08F23B3E @ 1730 / 0x06C2
    .word gUnknown_08F23B55 @ 1731 / 0x06C3
    .word gUnknown_08F23B6A @ 1732 / 0x06C4
    .word gUnknown_08F23B79 @ 1733 / 0x06C5
    .word gUnknown_08F23B91 @ 1734 / 0x06C6
    .word gUnknown_08F23BAD @ 1735 / 0x06C7
    .word gUnknown_08F23BBD @ 1736 / 0x06C8
    .word gUnknown_08F23BDA @ 1737 / 0x06C9
    .word gUnknown_08F23BE9 @ 1738 / 0x06CA
    .word gUnknown_08F23C39 @ 1739 / 0x06CB
    .word gUnknown_08F23C4E @ 1740 / 0x06CC
    .word gUnknown_08F23C5F @ 1741 / 0x06CD
    .word gUnknown_08F23C6B @ 1742 / 0x06CE
    .word gUnknown_08F23C80 @ 1743 / 0x06CF
    .word gUnknown_08F23C90 @ 1744 / 0x06D0
    .word gUnknown_08F23CB1 @ 1745 / 0x06D1
    .word 0                 @ 1746 / 0x06D2
    .word 0                 @ 1747 / 0x06D3
    .word 0                 @ 1748 / 0x06D4
    .word 0                 @ 1749 / 0x06D5
    .word gUnknown_08F27906 @ 1750 / 0x06D6
    .word gUnknown_08F27923 @ 1751 / 0x06D7
    .word gUnknown_08F27A0E @ 1752 / 0x06D8
    .word gUnknown_08F27A23 @ 1753 / 0x06D9
    .word gUnknown_08F27A3F @ 1754 / 0x06DA
    .word gUnknown_08F27A61 @ 1755 / 0x06DB
    .word gUnknown_08F27A7E @ 1756 / 0x06DC
    .word 0                 @ 1757 / 0x06DD
    .word 0                 @ 1758 / 0x06DE
    .word 0                 @ 1759 / 0x06DF
    .word gUnknown_08F27932 @ 1760 / 0x06E0
    .word gUnknown_08F27942 @ 1761 / 0x06E1
    .word 0                 @ 1762 / 0x06E2
    .word 0                 @ 1763 / 0x06E3
    .word 0                 @ 1764 / 0x06E4
    .word 0                 @ 1765 / 0x06E5
    .word 0                 @ 1766 / 0x06E6
    .word 0                 @ 1767 / 0x06E7
    .word 0                 @ 1768 / 0x06E8
    .word 0                 @ 1769 / 0x06E9
    .word 0                 @ 1770 / 0x06EA
    .word 0                 @ 1771 / 0x06EB
    .word 0                 @ 1772 / 0x06EC
    .word 0                 @ 1773 / 0x06ED
    .word 0                 @ 1774 / 0x06EE
    .word 0                 @ 1775 / 0x06EF
    .word 0                 @ 1776 / 0x06F0
    .word 0                 @ 1777 / 0x06F1
    .word 0                 @ 1778 / 0x06F2
    .word 0                 @ 1779 / 0x06F3
    .word gUnknown_08F23CCA @ 1780 / 0x06F4
    .word gUnknown_08F23CCB @ 1781 / 0x06F5
    .word 0                 @ 1782 / 0x06F6
    .word 0                 @ 1783 / 0x06F7
    .word 0                 @ 1784 / 0x06F8
    .word 0                 @ 1785 / 0x06F9
    .word 0                 @ 1786 / 0x06FA
    .word 0                 @ 1787 / 0x06FB
    .word 0                 @ 1788 / 0x06FC
    .word 0                 @ 1789 / 0x06FD
    .word gUnknown_08F23D90 @ 1790 / 0x06FE
    .word gUnknown_08F23D95 @ 1791 / 0x06FF
    .word gUnknown_08F23DDC @ 1792 / 0x0700
    .word gUnknown_08F23E0D @ 1793 / 0x0701
    .word gUnknown_08F23E4F @ 1794 / 0x0702
    .word gUnknown_08F23E9A @ 1795 / 0x0703
    .word gUnknown_08F23EDC @ 1796 / 0x0704
    .word gUnknown_08F23F17 @ 1797 / 0x0705
    .word gUnknown_08F23F5A @ 1798 / 0x0706
    .word gUnknown_08F23FA7 @ 1799 / 0x0707
    .word 0                 @ 1800 / 0x0708
    .word gUnknown_08F2498E @ 1801 / 0x0709
    .word gUnknown_08F249B3 @ 1802 / 0x070A
    .word gUnknown_08F249DB @ 1803 / 0x070B
    .word gUnknown_08F24A04 @ 1804 / 0x070C
    .word gUnknown_08F24A30 @ 1805 / 0x070D
    .word gUnknown_08F24A31 @ 1806 / 0x070E
    .word gUnknown_08F24A7B @ 1807 / 0x070F
    .word gUnknown_08F24A7C @ 1808 / 0x0710
    .word gUnknown_08F24A7D @ 1809 / 0x0711
    .word gUnknown_08F24A7E @ 1810 / 0x0712
    .word gUnknown_08F24A95 @ 1811 / 0x0713
    .word gUnknown_08F24ABB @ 1812 / 0x0714
    .word gUnknown_08F24AE1 @ 1813 / 0x0715
    .word gUnknown_08F24B16 @ 1814 / 0x0716
    .word gUnknown_08F24B2E @ 1815 / 0x0717
    .word gUnknown_08F24B52 @ 1816 / 0x0718
    .word gUnknown_08F24B73 @ 1817 / 0x0719
    .word gUnknown_08F24B97 @ 1818 / 0x071A
    .word gUnknown_08F24BBD @ 1819 / 0x071B
    .word gUnknown_08F24BE6 @ 1820 / 0x071C
    .word gUnknown_08F24C01 @ 1821 / 0x071D
    .word gUnknown_08F24C36 @ 1822 / 0x071E
    .word gUnknown_08F24C6F @ 1823 / 0x071F
    .word gUnknown_08F24C92 @ 1824 / 0x0720
    .word gUnknown_08F24CC7 @ 1825 / 0x0721
    .word gUnknown_08F24CE8 @ 1826 / 0x0722
    .word gUnknown_08F24D0E @ 1827 / 0x0723
    .word gUnknown_08F24D2F @ 1828 / 0x0724
    .word gUnknown_08F24D3E @ 1829 / 0x0725
    .word gUnknown_08F24D4E @ 1830 / 0x0726
    .word gUnknown_08F24D72 @ 1831 / 0x0727
    .word gUnknown_08F24D95 @ 1832 / 0x0728
    .word gUnknown_08F24D96 @ 1833 / 0x0729
    .word gUnknown_08F24D97 @ 1834 / 0x072A
    .word gUnknown_08F24DC0 @ 1835 / 0x072B
    .word gUnknown_08F24DDD @ 1836 / 0x072C
    .word gUnknown_08F24E15 @ 1837 / 0x072D
    .word gUnknown_08F24E34 @ 1838 / 0x072E
    .word gUnknown_08F24E59 @ 1839 / 0x072F
    .word gUnknown_08F24E5A @ 1840 / 0x0730
    .word gUnknown_08F24E74 @ 1841 / 0x0731
    .word gUnknown_08F24E75 @ 1842 / 0x0732
    .word gUnknown_08F24E76 @ 1843 / 0x0733
    .word gUnknown_08F24E77 @ 1844 / 0x0734
    .word gUnknown_08F24E78 @ 1845 / 0x0735
    .word gUnknown_08F24E9F @ 1846 / 0x0736
    .word gUnknown_08F24EC6 @ 1847 / 0x0737
    .word gUnknown_08F24EEE @ 1848 / 0x0738
    .word gUnknown_08F24F16 @ 1849 / 0x0739
    .word gUnknown_08F24F3D @ 1850 / 0x073A
    .word gUnknown_08F24F64 @ 1851 / 0x073B
    .word gUnknown_08F24F97 @ 1852 / 0x073C
    .word gUnknown_08F24FC9 @ 1853 / 0x073D
    .word gUnknown_08F24FFB @ 1854 / 0x073E
    .word gUnknown_08F2503E @ 1855 / 0x073F
    .word gUnknown_08F2503F @ 1856 / 0x0740
    .word gUnknown_08F25040 @ 1857 / 0x0741
    .word gUnknown_08F25041 @ 1858 / 0x0742
    .word gUnknown_08F25042 @ 1859 / 0x0743
    .word gUnknown_08F25043 @ 1860 / 0x0744
    .word gUnknown_08F2506D @ 1861 / 0x0745
    .word gUnknown_08F25099 @ 1862 / 0x0746
    .word gUnknown_08F250BE @ 1863 / 0x0747
    .word gUnknown_08F250E9 @ 1864 / 0x0748
    .word gUnknown_08F25116 @ 1865 / 0x0749
    .word gUnknown_08F25130 @ 1866 / 0x074A
    .word gUnknown_08F25161 @ 1867 / 0x074B
    .word gUnknown_08F2517B @ 1868 / 0x074C
    .word gUnknown_08F2519E @ 1869 / 0x074D
    .word gUnknown_08F251BF @ 1870 / 0x074E
    .word gUnknown_08F251C0 @ 1871 / 0x074F
    .word gUnknown_08F251FD @ 1872 / 0x0750
    .word gUnknown_08F2521E @ 1873 / 0x0751
    .word gUnknown_08F25246 @ 1874 / 0x0752
    .word gUnknown_08F25247 @ 1875 / 0x0753
    .word gUnknown_08F25276 @ 1876 / 0x0754
    .word gUnknown_08F252A2 @ 1877 / 0x0755
    .word gUnknown_08F252A3 @ 1878 / 0x0756
    .word gUnknown_08F252C0 @ 1879 / 0x0757
    .word gUnknown_08F252DE @ 1880 / 0x0758
    .word gUnknown_08F252FD @ 1881 / 0x0759
    .word gUnknown_08F2531A @ 1882 / 0x075A
    .word gUnknown_08F25337 @ 1883 / 0x075B
    .word gUnknown_08F25338 @ 1884 / 0x075C
    .word gUnknown_08F25339 @ 1885 / 0x075D
    .word gUnknown_08F2535A @ 1886 / 0x075E
    .word gUnknown_08F2538A @ 1887 / 0x075F
    .word gUnknown_08F253AE @ 1888 / 0x0760
    .word gUnknown_08F253F7 @ 1889 / 0x0761
    .word gUnknown_08F25422 @ 1890 / 0x0762
    .word gUnknown_08F2545A @ 1891 / 0x0763
    .word gUnknown_08F2545B @ 1892 / 0x0764
    .word gUnknown_08F2545C @ 1893 / 0x0765
    .word gUnknown_08F2545D @ 1894 / 0x0766
    .word gUnknown_08F2545E @ 1895 / 0x0767
    .word gUnknown_08F2547C @ 1896 / 0x0768
    .word gUnknown_08F2547D @ 1897 / 0x0769
    .word gUnknown_08F2549F @ 1898 / 0x076A
    .word gUnknown_08F254C6 @ 1899 / 0x076B
    .word gUnknown_08F254FA @ 1900 / 0x076C
    .word gUnknown_08F25529 @ 1901 / 0x076D
    .word gUnknown_08F2552A @ 1902 / 0x076E
    .word gUnknown_08F25555 @ 1903 / 0x076F
    .word gUnknown_08F25556 @ 1904 / 0x0770
    .word gUnknown_08F255A5 @ 1905 / 0x0771
    .word gUnknown_08F255A6 @ 1906 / 0x0772
    .word gUnknown_08F255A7 @ 1907 / 0x0773
    .word gUnknown_08F255D2 @ 1908 / 0x0774
    .word gUnknown_08F255E3 @ 1909 / 0x0775
    .word gUnknown_08F25609 @ 1910 / 0x0776
    .word gUnknown_08F25637 @ 1911 / 0x0777
    .word gUnknown_08F2565A @ 1912 / 0x0778
    .word gUnknown_08F25679 @ 1913 / 0x0779
    .word gUnknown_08F2567A @ 1914 / 0x077A
    .word gUnknown_08F2567B @ 1915 / 0x077B
    .word gUnknown_08F2567C @ 1916 / 0x077C
    .word gUnknown_08F2567D @ 1917 / 0x077D
    .word gUnknown_08F2567E @ 1918 / 0x077E
    .word gUnknown_08F2567F @ 1919 / 0x077F
    .word gUnknown_08F25680 @ 1920 / 0x0780
    .word gUnknown_08F25681 @ 1921 / 0x0781
    .word gUnknown_08F25682 @ 1922 / 0x0782
    .word gUnknown_08F25683 @ 1923 / 0x0783
    .word gUnknown_08F25684 @ 1924 / 0x0784
    .word gUnknown_08F25685 @ 1925 / 0x0785
    .word gUnknown_08F25686 @ 1926 / 0x0786
    .word gUnknown_08F25687 @ 1927 / 0x0787
    .word 0                 @ 1928 / 0x0788
    .word 0                 @ 1929 / 0x0789
    .word gUnknown_08F25699 @ 1930 / 0x078A
    .word gUnknown_08F2569C @ 1931 / 0x078B
    .word gUnknown_08F256AB @ 1932 / 0x078C
    .word gUnknown_08F256B7 @ 1933 / 0x078D
    .word gUnknown_08F256C3 @ 1934 / 0x078E
    .word gUnknown_08F256D3 @ 1935 / 0x078F
    .word gUnknown_08F256E2 @ 1936 / 0x0790
    .word gUnknown_08F256F2 @ 1937 / 0x0791
    .word gUnknown_08F25700 @ 1938 / 0x0792
    .word gUnknown_08F2570E @ 1939 / 0x0793
    .word gUnknown_08F25716 @ 1940 / 0x0794
    .word gUnknown_08F25726 @ 1941 / 0x0795
    .word gUnknown_08F25737 @ 1942 / 0x0796
    .word gUnknown_08F25744 @ 1943 / 0x0797
    .word gUnknown_08F25756 @ 1944 / 0x0798
    .word gUnknown_08F25760 @ 1945 / 0x0799
    .word gUnknown_08F25771 @ 1946 / 0x079A
    .word gUnknown_08F25780 @ 1947 / 0x079B
    .word gUnknown_08F25792 @ 1948 / 0x079C
    .word gUnknown_08F257A4 @ 1949 / 0x079D
    .word gUnknown_08F257B1 @ 1950 / 0x079E
    .word gUnknown_08F257C0 @ 1951 / 0x079F
    .word gUnknown_08F257CD @ 1952 / 0x07A0
    .word gUnknown_08F257DB @ 1953 / 0x07A1
    .word gUnknown_08F257E8 @ 1954 / 0x07A2
    .word gUnknown_08F257F7 @ 1955 / 0x07A3
    .word gUnknown_08F25803 @ 1956 / 0x07A4
    .word gUnknown_08F25813 @ 1957 / 0x07A5
    .word gUnknown_08F2581F @ 1958 / 0x07A6
    .word gUnknown_08F2582B @ 1959 / 0x07A7
    .word gUnknown_08F2583B @ 1960 / 0x07A8
    .word gUnknown_08F25848 @ 1961 / 0x07A9
    .word gUnknown_08F25857 @ 1962 / 0x07AA
    .word gUnknown_08F25867 @ 1963 / 0x07AB
    .word gUnknown_08F25875 @ 1964 / 0x07AC
    .word gUnknown_08F25886 @ 1965 / 0x07AD
    .word 0                 @ 1966 / 0x07AE
    .word 0                 @ 1967 / 0x07AF
    .word 0                 @ 1968 / 0x07B0
    .word 0                 @ 1969 / 0x07B1
    .word 0                 @ 1970 / 0x07B2
    .word 0                 @ 1971 / 0x07B3
    .word 0                 @ 1972 / 0x07B4
    .word 0                 @ 1973 / 0x07B5
    .word 0                 @ 1974 / 0x07B6
    .word 0                 @ 1975 / 0x07B7
    .word 0                 @ 1976 / 0x07B8
    .word 0                 @ 1977 / 0x07B9
    .word 0                 @ 1978 / 0x07BA
    .word 0                 @ 1979 / 0x07BB
    .word 0                 @ 1980 / 0x07BC
    .word 0                 @ 1981 / 0x07BD
    .word 0                 @ 1982 / 0x07BE
    .word 0                 @ 1983 / 0x07BF
    .word 0                 @ 1984 / 0x07C0
    .word 0                 @ 1985 / 0x07C1
    .word 0                 @ 1986 / 0x07C2
    .word 0                 @ 1987 / 0x07C3
    .word 0                 @ 1988 / 0x07C4
    .word 0                 @ 1989 / 0x07C5
    .word 0                 @ 1990 / 0x07C6
    .word 0                 @ 1991 / 0x07C7
    .word 0                 @ 1992 / 0x07C8
    .word 0                 @ 1993 / 0x07C9
    .word 0                 @ 1994 / 0x07CA
    .word 0                 @ 1995 / 0x07CB
    .word 0                 @ 1996 / 0x07CC
    .word 0                 @ 1997 / 0x07CD
    .word 0                 @ 1998 / 0x07CE
    .word gUnknown_08F25897 @ 1999 / 0x07CF
    .word gUnknown_08F26CAA @ 2000 / 0x07D0
    .word gUnknown_08F26CAB @ 2001 / 0x07D1
    .word gUnknown_08F260A0 @ 2002 / 0x07D2
    .word gUnknown_08F260B1 @ 2003 / 0x07D3
    .word gUnknown_08F260BD @ 2004 / 0x07D4
    .word gUnknown_08F260C7 @ 2005 / 0x07D5
    .word gUnknown_08F266B9 @ 2006 / 0x07D6
    .word gUnknown_08F263B6 @ 2007 / 0x07D7
    .word gUnknown_08F260D8 @ 2008 / 0x07D8
    .word gUnknown_08F260E7 @ 2009 / 0x07D9
    .word gUnknown_08F260F6 @ 2010 / 0x07DA
    .word gUnknown_08F266C8 @ 2011 / 0x07DB
    .word gUnknown_08F266CD @ 2012 / 0x07DC
    .word gUnknown_08F263C0 @ 2013 / 0x07DD
    .word gUnknown_08F263D0 @ 2014 / 0x07DE
    .word gUnknown_08F266E0 @ 2015 / 0x07DF
    .word gUnknown_08F266ED @ 2016 / 0x07E0
    .word gUnknown_08F266FC @ 2017 / 0x07E1
    .word gUnknown_08F2670F @ 2018 / 0x07E2
    .word gUnknown_08F26106 @ 2019 / 0x07E3
    .word gUnknown_08F2671F @ 2020 / 0x07E4
    .word gUnknown_08F26112 @ 2021 / 0x07E5
    .word gUnknown_08F26123 @ 2022 / 0x07E6
    .word gUnknown_08F2672B @ 2023 / 0x07E7
    .word gUnknown_08F2673C @ 2024 / 0x07E8
    .word gUnknown_08F26755 @ 2025 / 0x07E9
    .word gUnknown_08F2613C @ 2026 / 0x07EA
    .word gUnknown_08F26761 @ 2027 / 0x07EB
    .word gUnknown_08F2614D @ 2028 / 0x07EC
    .word gUnknown_08F2615B @ 2029 / 0x07ED
    .word gUnknown_08F26772 @ 2030 / 0x07EE
    .word gUnknown_08F26780 @ 2031 / 0x07EF
    .word gUnknown_08F2678E @ 2032 / 0x07F0
    .word gUnknown_08F267A2 @ 2033 / 0x07F1
    .word gUnknown_08F267B6 @ 2034 / 0x07F2
    .word gUnknown_08F267CB @ 2035 / 0x07F3
    .word gUnknown_08F26437 @ 2036 / 0x07F4
    .word gUnknown_08F26444 @ 2037 / 0x07F5
    .word gUnknown_08F267DE @ 2038 / 0x07F6
    .word gUnknown_08F267F1 @ 2039 / 0x07F7
    .word gUnknown_08F2616E @ 2040 / 0x07F8
    .word gUnknown_08F26806 @ 2041 / 0x07F9
    .word gUnknown_08F2617D @ 2042 / 0x07FA
    .word gUnknown_08F26819 @ 2043 / 0x07FB
    .word gUnknown_08F26189 @ 2044 / 0x07FC
    .word gUnknown_08F2619A @ 2045 / 0x07FD
    .word gUnknown_08F261A8 @ 2046 / 0x07FE
    .word gUnknown_08F2682C @ 2047 / 0x07FF
    .word gUnknown_08F261B5 @ 2048 / 0x0800
    .word gUnknown_08F263F0 @ 2049 / 0x0801
    .word gUnknown_08F261C1 @ 2050 / 0x0802
    .word gUnknown_08F261D4 @ 2051 / 0x0803
    .word gUnknown_08F261E8 @ 2052 / 0x0804
    .word gUnknown_08F26842 @ 2053 / 0x0805
    .word gUnknown_08F26850 @ 2054 / 0x0806
    .word gUnknown_08F2685E @ 2055 / 0x0807
    .word gUnknown_08F26869 @ 2056 / 0x0808
    .word gUnknown_08F26880 @ 2057 / 0x0809
    .word gUnknown_08F261F8 @ 2058 / 0x080A
    .word gUnknown_08F26892 @ 2059 / 0x080B
    .word gUnknown_08F2620A @ 2060 / 0x080C
    .word gUnknown_08F2689D @ 2061 / 0x080D
    .word gUnknown_08F268B1 @ 2062 / 0x080E
    .word gUnknown_08F26216 @ 2063 / 0x080F
    .word gUnknown_08F268C5 @ 2064 / 0x0810
    .word gUnknown_08F268D8 @ 2065 / 0x0811
    .word gUnknown_08F268E0 @ 2066 / 0x0812
    .word gUnknown_08F2622B @ 2067 / 0x0813
    .word gUnknown_08F26236 @ 2068 / 0x0814
    .word gUnknown_08F2623F @ 2069 / 0x0815
    .word gUnknown_08F26248 @ 2070 / 0x0816
    .word gUnknown_08F26254 @ 2071 / 0x0817
    .word gUnknown_08F268EC @ 2072 / 0x0818
    .word gUnknown_08F268FD @ 2073 / 0x0819
    .word gUnknown_08F26263 @ 2074 / 0x081A
    .word gUnknown_08F2690C @ 2075 / 0x081B
    .word gUnknown_08F2691C @ 2076 / 0x081C
    .word gUnknown_08F2692F @ 2077 / 0x081D
    .word gUnknown_08F26946 @ 2078 / 0x081E
    .word gUnknown_08F26956 @ 2079 / 0x081F
    .word gUnknown_08F26968 @ 2080 / 0x0820
    .word gUnknown_08F26971 @ 2081 / 0x0821
    .word gUnknown_08F2698A @ 2082 / 0x0822
    .word gUnknown_08F269AE @ 2083 / 0x0823
    .word gUnknown_08F269C2 @ 2084 / 0x0824
    .word gUnknown_08F269CC @ 2085 / 0x0825
    .word gUnknown_08F26275 @ 2086 / 0x0826
    .word gUnknown_08F26292 @ 2087 / 0x0827
    .word gUnknown_08F262A0 @ 2088 / 0x0828
    .word gUnknown_08F262B3 @ 2089 / 0x0829
    .word gUnknown_08F262BF @ 2090 / 0x082A
    .word gUnknown_08F262CD @ 2091 / 0x082B
    .word gUnknown_08F262D9 @ 2092 / 0x082C
    .word gUnknown_08F269DD @ 2093 / 0x082D
    .word gUnknown_08F269EF @ 2094 / 0x082E
    .word gUnknown_08F269FE @ 2095 / 0x082F
    .word gUnknown_08F26A0E @ 2096 / 0x0830
    .word gUnknown_08F26A20 @ 2097 / 0x0831
    .word gUnknown_08F26A2D @ 2098 / 0x0832
    .word gUnknown_08F262E7 @ 2099 / 0x0833
    .word gUnknown_08F262F5 @ 2100 / 0x0834
    .word gUnknown_08F26304 @ 2101 / 0x0835
    .word gUnknown_08F26319 @ 2102 / 0x0836
    .word gUnknown_08F26329 @ 2103 / 0x0837
    .word gUnknown_08F2633B @ 2104 / 0x0838
    .word gUnknown_08F26A3F @ 2105 / 0x0839
    .word gUnknown_08F26348 @ 2106 / 0x083A
    .word gUnknown_08F263FF @ 2107 / 0x083B
    .word gUnknown_08F26409 @ 2108 / 0x083C
    .word gUnknown_08F26414 @ 2109 / 0x083D
    .word gUnknown_08F26420 @ 2110 / 0x083E
    .word gUnknown_08F2642B @ 2111 / 0x083F
    .word gUnknown_08F26A51 @ 2112 / 0x0840
    .word gUnknown_08F26A61 @ 2113 / 0x0841
    .word gUnknown_08F26A70 @ 2114 / 0x0842
    .word gUnknown_08F26A76 @ 2115 / 0x0843
    .word gUnknown_08F26A7D @ 2116 / 0x0844
    .word gUnknown_08F26B27 @ 2117 / 0x0845
    .word gUnknown_08F26357 @ 2118 / 0x0846
    .word gUnknown_08F26369 @ 2119 / 0x0847
    .word gUnknown_08F26B38 @ 2120 / 0x0848
    .word gUnknown_08F26A90 @ 2121 / 0x0849
    .word gUnknown_08F26A9F @ 2122 / 0x084A
    .word gUnknown_08F26AAF @ 2123 / 0x084B
    .word gUnknown_08F26ABA @ 2124 / 0x084C
    .word gUnknown_08F26AC8 @ 2125 / 0x084D
    .word gUnknown_08F26AD7 @ 2126 / 0x084E
    .word gUnknown_08F26AE6 @ 2127 / 0x084F
    .word gUnknown_08F26AF6 @ 2128 / 0x0850
    .word gUnknown_08F26378 @ 2129 / 0x0851
    .word gUnknown_08F26B5A @ 2130 / 0x0852
    .word gUnknown_08F26BF1 @ 2131 / 0x0853
    .word gUnknown_08F26B6E @ 2132 / 0x0854
    .word gUnknown_08F26B82 @ 2133 / 0x0855
    .word gUnknown_08F26B96 @ 2134 / 0x0856
    .word gUnknown_08F26BA8 @ 2135 / 0x0857
    .word gUnknown_08F26BBA @ 2136 / 0x0858
    .word gUnknown_08F26BCC @ 2137 / 0x0859
    .word gUnknown_08F26BDF @ 2138 / 0x085A
    .word gUnknown_08F2638A @ 2139 / 0x085B
    .word gUnknown_08F26C0E @ 2140 / 0x085C
    .word gUnknown_08F26B04 @ 2141 / 0x085D
    .word gUnknown_08F2639A @ 2142 / 0x085E
    .word gUnknown_08F263A5 @ 2143 / 0x085F
    .word gUnknown_08F26B18 @ 2144 / 0x0860
    .word gUnknown_08F26B4B @ 2145 / 0x0861
    .word gUnknown_08F263E3 @ 2146 / 0x0862
    .word gUnknown_08F26C1D @ 2147 / 0x0863
    .word gUnknown_08F26C96 @ 2148 / 0x0864
    .word gUnknown_08F26CAC @ 2149 / 0x0865
    .word gUnknown_08F26451 @ 2150 / 0x0866
    .word gUnknown_08F2647B @ 2151 / 0x0867
    .word gUnknown_08F264A1 @ 2152 / 0x0868
    .word gUnknown_08F264E0 @ 2153 / 0x0869
    .word gUnknown_08F26522 @ 2154 / 0x086A
    .word gUnknown_08F26552 @ 2155 / 0x086B
    .word gUnknown_08F26578 @ 2156 / 0x086C
    .word gUnknown_08F265B3 @ 2157 / 0x086D
    .word gUnknown_08F265E6 @ 2158 / 0x086E
    .word gUnknown_08F265F4 @ 2159 / 0x086F
    .word gUnknown_08F265FF @ 2160 / 0x0870
    .word gUnknown_08F2660C @ 2161 / 0x0871
    .word gUnknown_08F26619 @ 2162 / 0x0872
    .word gUnknown_08F26634 @ 2163 / 0x0873
    .word gUnknown_08F2663C @ 2164 / 0x0874
    .word gUnknown_08F26643 @ 2165 / 0x0875
    .word gUnknown_08F26649 @ 2166 / 0x0876
    .word gUnknown_08F2664F @ 2167 / 0x0877
    .word gUnknown_08F26656 @ 2168 / 0x0878
    .word gUnknown_08F2665E @ 2169 / 0x0879
    .word gUnknown_08F2667F @ 2170 / 0x087A
    .word gUnknown_08F266A5 @ 2171 / 0x087B
