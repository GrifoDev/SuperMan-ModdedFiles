.class Landroid/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x700

    new-array v1, v3, [B

    sput-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iput-boolean p2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    return-void
.end method

.method private static getCachedDirectionality(C)B
    .locals 1

    const/16 v0, 0x700

    if-ge p0, v0, :cond_0

    sget-object v0, Landroid/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v0

    goto :goto_0
.end method

.method private static getDirectionality(I)B
    .locals 1

    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    return v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method private skipEntityBackward()B
    .locals 4

    const/16 v3, 0x3b

    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_0
    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc

    return v1

    :cond_1
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_0

    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0xd

    return v1
.end method

.method private skipEntityForward()B
    .locals 3

    :cond_0
    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    :cond_1
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .locals 5

    const/16 v4, 0x3e

    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    const/16 v2, 0xc

    return v2

    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v4, :cond_3

    :cond_2
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0xd

    return v2

    :cond_3
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    :cond_4
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_0
.end method

.method private skipTagForward()B
    .locals 5

    iget v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1

    const/16 v2, 0xc

    return v2

    :cond_1
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_0

    :cond_2
    iget-char v1, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    :goto_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_3
    iput v0, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0xd

    return v2
.end method


# virtual methods
.method dirTypeBackward()B
    .locals 4

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v2

    return v2

    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_0
.end method

.method dirTypeForward()B
    .locals 4

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getDirectionality(I)B

    move-result v2

    return v2

    :cond_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    iget-boolean v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_1

    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-char v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_0
.end method

.method getEntryDir()I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    iput v5, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    :pswitch_0
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v4, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    move v2, v0

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v0, 0x1

    const/4 v1, -0x1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_5
    if-nez v0, :cond_0

    return v6

    :cond_0
    move v2, v0

    goto :goto_0

    :pswitch_6
    if-nez v0, :cond_1

    return v7

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return v5

    :cond_3
    if-eqz v1, :cond_4

    return v1

    :cond_4
    :goto_1
    iget v3, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_7

    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_7
    if-ne v2, v0, :cond_5

    return v6

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_8
    if-ne v2, v0, :cond_6

    return v7

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method getExitDir()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    iget v2, p0, Landroid/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_5

    invoke-virtual {p0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_1
    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :pswitch_2
    if-nez v0, :cond_1

    return v4

    :cond_1
    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :pswitch_3
    if-ne v1, v0, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_4
    if-nez v0, :cond_3

    return v5

    :cond_3
    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :pswitch_5
    if-ne v1, v0, :cond_4

    return v5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
