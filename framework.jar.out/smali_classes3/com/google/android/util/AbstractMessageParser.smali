.class public abstract Lcom/google/android/util/AbstractMessageParser;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Acronym;,
        Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;,
        Lcom/google/android/util/AbstractMessageParser$Format;,
        Lcom/google/android/util/AbstractMessageParser$Html;,
        Lcom/google/android/util/AbstractMessageParser$Link;,
        Lcom/google/android/util/AbstractMessageParser$MusicTrack;,
        Lcom/google/android/util/AbstractMessageParser$Part;,
        Lcom/google/android/util/AbstractMessageParser$Photo;,
        Lcom/google/android/util/AbstractMessageParser$Resources;,
        Lcom/google/android/util/AbstractMessageParser$Smiley;,
        Lcom/google/android/util/AbstractMessageParser$Token;,
        Lcom/google/android/util/AbstractMessageParser$TrieNode;,
        Lcom/google/android/util/AbstractMessageParser$Video;,
        Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;
    }
.end annotation


# static fields
.field private static final synthetic -com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I = null

.field public static final musicNote:Ljava/lang/String; = "\u266b "


# instance fields
.field private formatStart:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$Format;",
            ">;"
        }
    .end annotation
.end field

.field private nextChar:I

.field private nextClass:I

.field private parseAcronyms:Z

.field private parseFormatting:Z

.field private parseMeText:Z

.field private parseMusic:Z

.field private parseSmilies:Z

.field private parseUrls:Z

.field private parts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getcom-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/google/android/util/AbstractMessageParser;->-com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/util/AbstractMessageParser;->-com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_4
    :try_start_5
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    sput-object v0, Lcom/google/android/util/AbstractMessageParser;->-com-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v1

    goto :goto_8

    :catch_2
    move-exception v1

    goto :goto_7

    :catch_3
    move-exception v1

    goto :goto_6

    :catch_4
    move-exception v1

    goto :goto_5

    :catch_5
    move-exception v1

    goto :goto_4

    :catch_6
    move-exception v1

    goto :goto_3

    :catch_7
    move-exception v1

    goto :goto_2

    :catch_8
    move-exception v1

    goto :goto_1

    :catch_9
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    iput-boolean p3, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    iput-boolean p4, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    iput-boolean p5, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    iput-boolean p6, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    iput-boolean p7, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    return-void
.end method

.method private addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addURLToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/util/AbstractMessageParser;->tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    return-void
.end method

.method private buildParts(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-direct {v3}, Lcom/google/android/util/AbstractMessageParser$Part;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/util/AbstractMessageParser$Part;->add(Lcom/google/android/util/AbstractMessageParser$Token;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->lastPart()Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->isMedia()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Part;

    invoke-virtual {v2, p1}, Lcom/google/android/util/AbstractMessageParser$Part;->setMeText(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private getCharClass(I)I
    .locals 3

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    return v1

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    return v1

    :cond_4
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextClass:I

    return v1

    :cond_5
    const/4 v1, 0x4

    return v1
.end method

.method private isDomainChar(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isFormatChar(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static isPunctuation(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2e -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3f -> :sswitch_0
    .end sparse-switch
.end method

.method private static isSmileyBreak(CC)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2f -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x23 -> :sswitch_1
        0x24 -> :sswitch_1
        0x25 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2f -> :sswitch_1
        0x3c -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x40 -> :sswitch_1
        0x5b -> :sswitch_1
        0x5c -> :sswitch_1
        0x5e -> :sswitch_1
        0x7e -> :sswitch_1
    .end sparse-switch
.end method

.method private isSmileyBreak(I)Z
    .locals 3

    const/4 v2, 0x0

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(CC)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method private isURLBreak(I)Z
    .locals 1

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidDomain(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/util/AbstractMessageParser$Resources;->getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/util/AbstractMessageParser;->reverse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/util/AbstractMessageParser;->matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWordBreak(I)Z
    .locals 2

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lastPart()Lcom/google/android/util/AbstractMessageParser$Part;
    .locals 2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    return-object v0
.end method

.method private static longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 4

    move v1, p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/util/AbstractMessageParser;->getRawText()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    if-nez p0, :cond_1

    move v1, v2

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p0

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_2

    invoke-direct {p1, v2}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p0

    goto :goto_1
.end method

.method private static matches(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    if-nez p0, :cond_1

    move v0, v1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private parseAcronym()Z
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/google/android/util/AbstractMessageParser;->parseAcronyms:Z

    if-nez v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/util/AbstractMessageParser$Resources;->getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v1

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v1, p0, v2}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;I)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Acronym;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Acronym;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    iget v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v1, 0x1

    return v1
.end method

.method private parseFormatting()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v8, p0, Lcom/google/android/util/AbstractMessageParser;->parseFormatting:Z

    if-nez v8, :cond_0

    return v10

    :cond_0
    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    :goto_0
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/google/android/util/AbstractMessageParser;->isFormatChar(C)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v8, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    if-eq v2, v8, :cond_2

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    :cond_2
    return v10

    :cond_3
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    :goto_1
    if-ge v3, v2, :cond_6

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v8, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v8, v0, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-direct {p0, v8}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Format;

    if-eqz v7, :cond_5

    invoke-virtual {v7, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    new-instance v7, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-direct {v7, v0, v11}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    iget-object v8, p0, Lcom/google/android/util/AbstractMessageParser;->formatStart:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v7}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v4, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_7

    new-instance v1, Lcom/google/android/util/AbstractMessageParser$Format;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-direct {v1, v8, v10}, Lcom/google/android/util/AbstractMessageParser$Format;-><init>(CZ)V

    invoke-virtual {v1, v11}, Lcom/google/android/util/AbstractMessageParser$Format;->setMatched(Z)V

    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    goto :goto_3

    :cond_8
    iput v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    return v11
.end method

.method private parseMusicTrack()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser;->parseMusic:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v1, "\u266b "

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    iget-object v1, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v2, "\u266b "

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private parseSmiley()Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseSmilies:Z

    if-nez v3, :cond_0

    return v5

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v3

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-static {v3, p0, v4, v6}, Lcom/google/android/util/AbstractMessageParser;->longestMatch(Lcom/google/android/util/AbstractMessageParser$TrieNode;Lcom/google/android/util/AbstractMessageParser;IZ)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object v0

    if-nez v0, :cond_1

    return v5

    :cond_1
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v2

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->getCharClass(I)I

    move-result v1

    if-eq v2, v7, :cond_2

    if-ne v2, v8, :cond_4

    :cond_2
    if-eq v1, v7, :cond_3

    if-ne v1, v8, :cond_4

    :cond_3
    return v5

    :cond_4
    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Smiley;

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Smiley;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    return v6
.end method

.method private parseText()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    :cond_0
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/util/AbstractMessageParser$Html;

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/google/android/util/AbstractMessageParser$Html;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->addToken(Lcom/google/android/util/AbstractMessageParser$Token;)V

    return-void

    :sswitch_0
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "&apos;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_5
    const-string/jumbo v3, "<br>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private parseURL()Z
    .locals 13

    const/16 v12, 0x3a

    const/16 v10, 0x2e

    const/4 v11, 0x0

    iget-boolean v9, p0, Lcom/google/android/util/AbstractMessageParser;->parseUrls:Z

    if-eqz v9, :cond_0

    iget v9, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isURLBreak(I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    :cond_0
    return v11

    :cond_1
    iget v6, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    move v4, v6

    :goto_0
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v7, ""

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_3

    return v11

    :cond_3
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_4

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser;->getResources()Lcom/google/android/util/AbstractMessageParser$Resources;

    move-result-object v9

    invoke-interface {v9}, Lcom/google/android/util/AbstractMessageParser$Resources;->getSchemes()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    return v11

    :cond_4
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v10, :cond_11

    :goto_1
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_5

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_6

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser;->isDomainChar(C)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    :cond_5
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    iget v10, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-virtual {v9, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/util/AbstractMessageParser;->isValidDomain(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    return v11

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_8

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v12, :cond_8

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v4, v4, 0x1

    :goto_2
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v4, v9, :cond_b

    const/4 v3, 0x1

    :cond_9
    :goto_3
    const-string/jumbo v7, "http://"

    :cond_a
    if-nez v3, :cond_12

    :goto_4
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_12

    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_12

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x3f

    if-ne v0, v9, :cond_e

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v9, v10, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_d

    invoke-static {v1}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_9

    :cond_d
    const/4 v3, 0x1

    goto :goto_3

    :cond_e
    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser;->isPunctuation(C)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v3, 0x1

    goto :goto_3

    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v3, 0x1

    goto :goto_3

    :cond_10
    const/16 v9, 0x2f

    if-eq v0, v9, :cond_9

    const/16 v9, 0x23

    if-eq v0, v9, :cond_9

    return v11

    :cond_11
    return v11

    :cond_12
    iget-object v9, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v9, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v8}, Lcom/google/android/util/AbstractMessageParser;->addURLToken(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    const/4 v9, 0x1

    return v9
.end method

.method protected static reverse(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static tokenForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Video;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Video;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Photo;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Photo;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-static {p0, p1}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->matchURL(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    new-instance v4, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-direct {v4, p0, p1}, Lcom/google/android/util/AbstractMessageParser$Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public final getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/util/AbstractMessageParser$Part;

    return-object v0
.end method

.method public final getPartCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/util/AbstractMessageParser$Part;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getRawText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
.end method

.method public parse()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseMusicTrack()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/google/android/util/AbstractMessageParser;->parseMeText:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    const-string/jumbo v4, "/me"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isWordBreak(I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    iget v3, p0, Lcom/google/android/util/AbstractMessageParser;->nextChar:I

    invoke-direct {p0, v3}, Lcom/google/android/util/AbstractMessageParser;->isSmileyBreak(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "last chunk did not end at word break"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_4
    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseSmiley()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseAcronym()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseURL()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseFormatting()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/google/android/util/AbstractMessageParser;->parseText()V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isMedia()Z

    move-result v3

    if-eqz v3, :cond_8

    if-lez v0, :cond_7

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace()V

    :cond_7
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/util/AbstractMessageParser$Html;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Html;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace()V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Token;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    invoke-direct {p0, v1}, Lcom/google/android/util/AbstractMessageParser;->buildParts(Ljava/lang/String;)V

    return-void
.end method

.method public toHtml()Ljava/lang/String;
    .locals 10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/google/android/util/AbstractMessageParser;->parts:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/util/AbstractMessageParser$Part;

    const/4 v0, 0x0

    const-string/jumbo v7, "<p>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v0}, Lcom/google/android/util/AbstractMessageParser$Token;->toHtml(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->controlCaps()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->setCaps()Z

    move-result v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/util/AbstractMessageParser;->-getcom-google-android-util-AbstractMessageParser$Token$TypeSwitchesValues()[I

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown token type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    :pswitch_0
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Link;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Link;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$MusicTrack;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$MusicTrack;->getTrack()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Video;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Video;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Video;->getDocID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/util/AbstractMessageParser$Video;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_5
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getDocID()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/util/AbstractMessageParser$YouTubeVideo;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_6
    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Photo;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getUser()Ljava/lang/String;

    move-result-object v8

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$Photo;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbum()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/google/android/util/AbstractMessageParser$Photo;->getAlbumURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :pswitch_7
    move-object v2, v5

    check-cast v2, Lcom/google/android/util/AbstractMessageParser$Photo;

    const-string/jumbo v7, "<a href=\""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v5

    check-cast v7, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;

    invoke-virtual {v7}, Lcom/google/android/util/AbstractMessageParser$FlickrPhoto;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\">"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "</a>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    const-string/jumbo v7, "</p>\n"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
