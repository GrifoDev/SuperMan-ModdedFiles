.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "Emoji.java"


# static fields
.field public static CANCEL_TAG:I

.field public static COMBINING_ENCLOSING_KEYCAP:I

.field public static VARIATION_SELECTOR_16:I

.field public static ZERO_WIDTH_JOINER:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20e3

    sput v0, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    const/16 v0, 0x200d

    sput v0, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    const v0, 0xfe0f

    sput v0, Landroid/text/Emoji;->VARIATION_SELECTOR_16:I

    const v0, 0xe007f

    sput v0, Landroid/text/Emoji;->CANCEL_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmoji(I)Z
    .locals 1

    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x39

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isEmojiModifier(I)Z
    .locals 1

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isEmojiModifierBase(I)Z
    .locals 2

    const/4 v1, 0x1

    const v0, 0x1f91d

    if-eq p0, v0, :cond_0

    const v0, 0x1f93c

    if-ne p0, v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const v0, 0x1f91f

    if-eq p0, v0, :cond_2

    const v0, 0x1f931

    if-gt v0, p0, :cond_3

    const v0, 0x1f932

    if-gt p0, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const v0, 0x1f9d1

    if-gt v0, p0, :cond_4

    const v0, 0x1f9dd

    if-le p0, v0, :cond_2

    :cond_4
    const/16 v0, 0x3c

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method public static isKeycapBase(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-gt v1, p0, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNewEmoji(I)Z
    .locals 4

    const v3, 0x1f9e6

    const v2, 0x1f6f7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p0, v2, :cond_0

    if-le p0, v3, :cond_1

    :cond_0
    return v1

    :cond_1
    if-gt v2, p0, :cond_3

    const v2, 0x1f6f8

    if-gt p0, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const v2, 0x1f91f

    if-eq p0, v2, :cond_2

    const v2, 0x1f928

    if-gt v2, p0, :cond_4

    const v2, 0x1f92f

    if-le p0, v2, :cond_2

    :cond_4
    const v2, 0x1f931

    if-gt v2, p0, :cond_5

    const v2, 0x1f932

    if-le p0, v2, :cond_2

    :cond_5
    const v2, 0x1f94c

    if-eq p0, v2, :cond_2

    const v2, 0x1f95f

    if-gt v2, p0, :cond_6

    const v2, 0x1f96b

    if-le p0, v2, :cond_2

    :cond_6
    const v2, 0x1f992

    if-gt v2, p0, :cond_7

    const v2, 0x1f997

    if-le p0, v2, :cond_2

    :cond_7
    const v2, 0x1f9d0

    if-gt v2, p0, :cond_8

    if-le p0, v3, :cond_2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public static isRegionalIndicatorSymbol(I)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1f1e6

    if-gt v1, p0, :cond_0

    const v1, 0x1f1ff

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTagSpecChar(I)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0xe0020

    if-gt v1, p0, :cond_0

    const v1, 0xe007e

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
