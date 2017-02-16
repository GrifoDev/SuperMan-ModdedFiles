.class final Ljava/text/DigitList;
.super Ljava/lang/Object;
.source "DigitList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-math-RoundingModeSwitchesValues:[I = null

.field private static final LONG_MIN_REP:[C

.field public static final MAX_COUNT:I = 0x13


# instance fields
.field public count:I

.field private data:[C

.field public decimalAt:I

.field public digits:[C

.field private isNegative:Z

.field private roundingMode:Ljava/math/RoundingMode;

.field private tempBuffer:Ljava/lang/StringBuffer;


# direct methods
.method private static synthetic -getjava-math-RoundingModeSwitchesValues()[I
    .locals 3

    sget-object v0, Ljava/text/DigitList;->-java-math-RoundingModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Ljava/text/DigitList;->-java-math-RoundingModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Ljava/text/DigitList;->-java-math-RoundingModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/text/DigitList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/text/DigitList;->-assertionsDisabled:Z

    .line 678
    const-string/jumbo v0, "9223372036854775808"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/text/DigitList;->LONG_MIN_REP:[C

    .line 73
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v1, p0, Ljava/text/DigitList;->decimalAt:I

    .line 103
    iput v1, p0, Ljava/text/DigitList;->count:I

    .line 104
    const/16 v0, 0x13

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    .line 107
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    .line 108
    iput-boolean v1, p0, Ljava/text/DigitList;->isNegative:Z

    .line 73
    return-void
.end method

.method private extendDigits(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 704
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 705
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    .line 703
    :cond_0
    return-void
.end method

.method private final getDataChars(I)[C
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 710
    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 711
    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/text/DigitList;->data:[C

    .line 713
    :cond_1
    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    return-object v0
.end method

.method private getStringBuffer()Ljava/lang/StringBuffer;
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    .line 700
    :goto_0
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    return-object v0

    .line 698
    :cond_0
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0
.end method

.method private isLongMIN_VALUE()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 644
    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljava/text/DigitList;->count:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    .line 645
    :cond_0
    return v3

    .line 648
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v1, :cond_3

    .line 649
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    aget-char v1, v1, v0

    sget-object v2, Ljava/text/DigitList;->LONG_MIN_REP:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_2

    return v3

    .line 648
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private static final parseInt([CII)I
    .locals 6
    .param p0, "str"    # [C
    .param p1, "offset"    # I
    .param p2, "strLen"    # I

    .prologue
    .line 657
    const/4 v2, 0x1

    .line 658
    .local v2, "positive":Z
    aget-char v0, p0, p1

    .local v0, "c":C
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    .line 659
    const/4 v2, 0x0

    .line 660
    add-int/lit8 p1, p1, 0x1

    .line 665
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .local v3, "value":I
    move v1, p1

    .line 666
    .end local p1    # "offset":I
    .local v1, "offset":I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 667
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    aget-char v0, p0, v1

    .line 668
    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    .line 669
    mul-int/lit8 v4, v3, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v3, v4, v5

    move v1, p1

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    .line 661
    .end local v1    # "offset":I
    .end local v3    # "value":I
    .restart local p1    # "offset":I
    :cond_1
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_0

    .line 662
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    .restart local v3    # "value":I
    :cond_2
    move p1, v1

    .line 674
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_3
    if-eqz v2, :cond_4

    .end local v3    # "value":I
    :goto_2
    return v3

    .restart local v3    # "value":I
    :cond_4
    neg-int v3, v3

    goto :goto_2
.end method

.method private final round(I)V
    .locals 3
    .param p1, "maximumDigits"    # I

    .prologue
    const/4 v2, 0x0

    .line 379
    if-ltz p1, :cond_3

    iget v0, p0, Ljava/text/DigitList;->count:I

    if-ge p1, v0, :cond_3

    .line 380
    invoke-direct {p0, p1}, Ljava/text/DigitList;->shouldRoundUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 386
    if-gez p1, :cond_2

    .line 389
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    const/16 v1, 0x31

    aput-char v1, v0, v2

    .line 390
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    .line 391
    const/4 p1, 0x0

    .line 399
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 401
    :cond_1
    iput p1, p0, Ljava/text/DigitList;->count:I

    .line 404
    :goto_1
    iget v0, p0, Ljava/text/DigitList;->count:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    iget v1, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-char v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    .line 405
    iget v0, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/DigitList;->count:I

    goto :goto_1

    .line 395
    :cond_2
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    aget-char v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    aput-char v1, v0, p1

    .line 396
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    aget-char v0, v0, p1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 376
    :cond_3
    return-void
.end method

.method private shouldRoundUp(I)Z
    .locals 7
    .param p1, "maximumDigits"    # I

    .prologue
    const/16 v6, 0x35

    const/16 v5, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 427
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge p1, v3, :cond_b

    .line 428
    invoke-static {}, Ljava/text/DigitList;->-getjava-math-RoundingModeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 490
    sget-boolean v2, Ljava/text/DigitList;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 430
    :pswitch_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_b

    .line 431
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_0

    .line 432
    return v2

    .line 430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    .end local v0    # "i":I
    :pswitch_1
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_b

    .line 440
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_2

    .line 441
    iget-boolean v3, p0, Ljava/text/DigitList;->isNegative:Z

    if-eqz v3, :cond_1

    :goto_2
    return v1

    :cond_1
    move v1, v2

    goto :goto_2

    .line 439
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "i":I
    :pswitch_2
    move v0, p1

    .restart local v0    # "i":I
    :goto_3
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v2, :cond_b

    .line 447
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v0

    if-eq v2, v5, :cond_3

    .line 448
    iget-boolean v1, p0, Ljava/text/DigitList;->isNegative:Z

    return v1

    .line 446
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 453
    .end local v0    # "i":I
    :pswitch_3
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-lt v3, v6, :cond_b

    .line 454
    return v2

    .line 458
    :pswitch_4
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-le v3, v6, :cond_4

    .line 459
    return v2

    .line 460
    :cond_4
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-ne v3, v6, :cond_b

    .line 461
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_4
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_b

    .line 462
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_5

    .line 463
    return v2

    .line 461
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 470
    .end local v0    # "i":I
    :pswitch_5
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-le v3, v6, :cond_6

    .line 471
    return v2

    .line 472
    :cond_6
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-ne v3, v6, :cond_b

    .line 473
    add-int/lit8 v0, p1, 0x1

    .restart local v0    # "i":I
    :goto_5
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_8

    .line 474
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_7

    .line 475
    return v2

    .line 473
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 478
    :cond_8
    if-lez p1, :cond_9

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    add-int/lit8 v4, p1, -0x1

    aget-char v3, v3, v4

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 482
    .end local v0    # "i":I
    :pswitch_6
    move v0, p1

    .restart local v0    # "i":I
    :goto_6
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v2, :cond_b

    .line 483
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v0

    if-eq v2, v5, :cond_a

    .line 484
    new-instance v1, Ljava/lang/ArithmeticException;

    .line 485
    const-string/jumbo v2, "Rounding needed with the rounding mode being set to RoundingMode.UNNECESSARY"

    .line 484
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 482
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 493
    .end local v0    # "i":I
    :cond_b
    :pswitch_7
    return v1

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public append(C)V
    .locals 4
    .param p1, "digit"    # C

    .prologue
    const/4 v3, 0x0

    .line 145
    iget v1, p0, Ljava/text/DigitList;->count:I

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 146
    iget v1, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v1, v1, 0x64

    new-array v0, v1, [C

    .line 147
    .local v0, "data":[C
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 148
    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    .line 150
    .end local v0    # "data":[C
    :cond_0
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/text/DigitList;->count:I

    aput-char p1, v1, v2

    .line 144
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 137
    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    .line 138
    iput v0, p0, Ljava/text/DigitList;->count:I

    .line 136
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 628
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DigitList;

    .line 629
    .local v2, "other":Ljava/text/DigitList;
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    array-length v3, v3

    new-array v1, v3, [C

    .line 630
    .local v1, "newDigits":[C
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    iget-object v4, p0, Ljava/text/DigitList;->digits:[C

    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 631
    iput-object v1, v2, Ljava/text/DigitList;->digits:[C

    .line 632
    const/4 v3, 0x0

    iput-object v3, v2, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    return-object v2

    .line 634
    .end local v1    # "newDigits":[C
    .end local v2    # "other":Ljava/text/DigitList;
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 595
    if-ne p0, p1, :cond_0

    .line 596
    return v5

    .line 597
    :cond_0
    instance-of v2, p1, Ljava/text/DigitList;

    if-nez v2, :cond_1

    .line 598
    return v4

    :cond_1
    move-object v1, p1

    .line 599
    nop

    nop

    .line 600
    .local v1, "other":Ljava/text/DigitList;
    iget v2, p0, Ljava/text/DigitList;->count:I

    iget v3, v1, Ljava/text/DigitList;->count:I

    if-ne v2, v3, :cond_2

    .line 601
    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    iget v3, v1, Ljava/text/DigitList;->decimalAt:I

    if-eq v2, v3, :cond_3

    .line 602
    :cond_2
    return v4

    .line 603
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v2, :cond_5

    .line 604
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v0

    iget-object v3, v1, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v2, v3, :cond_4

    .line 605
    return v4

    .line 603
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_5
    return v5
.end method

.method fitsIntoLong(ZZ)Z
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "ignoreNegativeZero"    # Z

    .prologue
    const/16 v7, 0x13

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 229
    :goto_0
    iget v5, p0, Ljava/text/DigitList;->count:I

    if-lez v5, :cond_0

    iget-object v5, p0, Ljava/text/DigitList;->digits:[C

    iget v6, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v6, v6, -0x1

    aget-char v5, v5, v6

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 230
    iget v5, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/text/DigitList;->count:I

    goto :goto_0

    .line 233
    :cond_0
    iget v5, p0, Ljava/text/DigitList;->count:I

    if-nez v5, :cond_2

    .line 236
    if-nez p1, :cond_1

    .end local p2    # "ignoreNegativeZero":Z
    :goto_1
    return p2

    .restart local p2    # "ignoreNegativeZero":Z
    :cond_1
    move p2, v3

    goto :goto_1

    .line 239
    :cond_2
    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    iget v6, p0, Ljava/text/DigitList;->count:I

    if-lt v5, v6, :cond_3

    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    if-le v5, v7, :cond_4

    .line 240
    :cond_3
    return v4

    .line 243
    :cond_4
    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    if-ge v5, v7, :cond_5

    return v3

    .line 248
    :cond_5
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v5, p0, Ljava/text/DigitList;->count:I

    if-ge v1, v5, :cond_8

    .line 249
    iget-object v5, p0, Ljava/text/DigitList;->digits:[C

    aget-char v0, v5, v1

    .local v0, "dig":C
    sget-object v5, Ljava/text/DigitList;->LONG_MIN_REP:[C

    aget-char v2, v5, v1

    .line 250
    .local v2, "max":C
    if-le v0, v2, :cond_6

    return v4

    .line 251
    :cond_6
    if-ge v0, v2, :cond_7

    return v3

    .line 248
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 256
    .end local v0    # "dig":C
    .end local v2    # "max":C
    :cond_8
    iget v5, p0, Ljava/text/DigitList;->count:I

    iget v6, p0, Ljava/text/DigitList;->decimalAt:I

    if-ge v5, v6, :cond_9

    return v3

    .line 261
    :cond_9
    if-eqz p1, :cond_a

    move v3, v4

    :cond_a
    return v3
.end method

.method public final getBigDecimal()Ljava/math/BigDecimal;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    iget v0, p0, Ljava/text/DigitList;->count:I

    if-nez v0, :cond_1

    .line 199
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    if-nez v0, :cond_0

    .line 200
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0E"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 206
    :cond_1
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    iget v1, p0, Ljava/text/DigitList;->count:I

    if-ne v0, v1, :cond_2

    .line 207
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    invoke-direct {v0, v1, v3, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 209
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    invoke-direct {v0, v1, v3, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    iget v2, p0, Ljava/text/DigitList;->count:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public final getDouble()D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 159
    iget v1, p0, Ljava/text/DigitList;->count:I

    if-nez v1, :cond_0

    .line 160
    const-wide/16 v2, 0x0

    return-wide v2

    .line 163
    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 164
    .local v0, "temp":Ljava/lang/StringBuffer;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 166
    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 167
    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public final getLong()J
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 178
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-nez v2, :cond_0

    .line 179
    const-wide/16 v2, 0x0

    return-wide v2

    .line 185
    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->isLongMIN_VALUE()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    .line 189
    :cond_1
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    .line 190
    .local v1, "temp":Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    iget v3, p0, Ljava/text/DigitList;->count:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 191
    iget v0, p0, Ljava/text/DigitList;->count:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    if-ge v0, v2, :cond_2

    .line 192
    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 613
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    .line 615
    .local v0, "hashcode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v1, v2, :cond_0

    .line 616
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v1

    add-int v0, v2, v3

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    :cond_0
    return v0
.end method

.method isZero()Z
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 116
    const/4 v1, 0x0

    return v1

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final set(ZDI)V
    .locals 6
    .param p1, "isNegative"    # Z
    .param p2, "source"    # D
    .param p4, "maximumFractionDigits"    # I

    .prologue
    .line 274
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/text/DigitList;->set(ZDIZ)V

    .line 273
    return-void
.end method

.method final set(ZDIZ)V
    .locals 2
    .param p1, "isNegative"    # Z
    .param p2, "source"    # D
    .param p4, "maximumDigits"    # I
    .param p5, "fixedPoint"    # Z

    .prologue
    .line 289
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Ljava/text/DigitList;->set(ZLjava/lang/String;IZ)V

    .line 288
    return-void
.end method

.method public final set(ZJ)V
    .locals 2
    .param p1, "isNegative"    # Z
    .param p2, "source"    # J

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/text/DigitList;->set(ZJI)V

    .line 499
    return-void
.end method

.method public final set(ZJI)V
    .locals 8
    .param p1, "isNegative"    # Z
    .param p2, "source"    # J
    .param p4, "maximumDigits"    # I

    .prologue
    .line 513
    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    .line 521
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_2

    .line 522
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 523
    const/16 v2, 0x13

    iput v2, p0, Ljava/text/DigitList;->count:I

    const/16 v2, 0x13

    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    .line 524
    sget-object v2, Ljava/text/DigitList;->LONG_MIN_REP:[C

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    iget v4, p0, Ljava/text/DigitList;->count:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 545
    :goto_0
    if-lez p4, :cond_0

    invoke-direct {p0, p4}, Ljava/text/DigitList;->round(I)V

    .line 512
    :cond_0
    return-void

    .line 526
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Ljava/text/DigitList;->count:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    goto :goto_0

    .line 531
    :cond_2
    const/16 v0, 0x13

    .line 533
    .local v0, "left":I
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    .line 534
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v4, 0xa

    rem-long v4, p2, v4

    const-wide/16 v6, 0x30

    add-long/2addr v4, v6

    long-to-int v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 535
    const-wide/16 v2, 0xa

    div-long/2addr p2, v2

    goto :goto_1

    .line 537
    :cond_3
    rsub-int/lit8 v2, v0, 0x13

    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    .line 540
    const/16 v1, 0x12

    .local v1, "right":I
    :goto_2
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 542
    :cond_4
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/text/DigitList;->count:I

    .line 543
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    iget v4, p0, Ljava/text/DigitList;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method final set(ZLjava/lang/String;IZ)V
    .locals 11
    .param p1, "isNegative"    # Z
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "maximumDigits"    # I
    .param p4, "fixedPoint"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 299
    .local v5, "len":I
    invoke-direct {p0, v5}, Ljava/text/DigitList;->getDataChars(I)[C

    move-result-object v7

    .line 300
    .local v7, "source":[C
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v5, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    .line 302
    const/4 v8, -0x1

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    .line 303
    const/4 v8, 0x0

    iput v8, p0, Ljava/text/DigitList;->count:I

    .line 304
    const/4 v1, 0x0

    .line 307
    .local v1, "exponent":I
    const/4 v4, 0x0

    .line 308
    .local v4, "leadingZerosAfterDecimal":I
    const/4 v6, 0x0

    .line 310
    .local v6, "nonZeroDigitSeen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .end local v6    # "nonZeroDigitSeen":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_d

    .line 311
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-char v0, v7, v3

    .line 312
    .local v0, "c":C
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_1

    .line 313
    iget v8, p0, Ljava/text/DigitList;->count:I

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    :cond_0
    :goto_1
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 314
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    const/16 v8, 0x65

    if-eq v0, v8, :cond_2

    const/16 v8, 0x45

    if-ne v0, v8, :cond_5

    .line 315
    :cond_2
    invoke-static {v7, v2, v5}, Ljava/text/DigitList;->parseInt([CII)I

    move-result v1

    .line 328
    .end local v0    # "c":C
    :goto_2
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 329
    iget v8, p0, Ljava/text/DigitList;->count:I

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    .line 331
    :cond_3
    if-eqz v6, :cond_4

    .line 332
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    sub-int v9, v1, v4

    add-int/2addr v8, v9

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    .line 335
    :cond_4
    if-eqz p4, :cond_a

    .line 341
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    neg-int v8, v8

    if-le v8, p3, :cond_8

    .line 344
    const/4 v8, 0x0

    iput v8, p0, Ljava/text/DigitList;->count:I

    .line 345
    return-void

    .line 318
    .restart local v0    # "c":C
    :cond_5
    if-nez v6, :cond_6

    .line 319
    const/16 v8, 0x30

    if-eq v0, v8, :cond_7

    const/4 v6, 0x1

    .line 320
    .local v6, "nonZeroDigitSeen":Z
    :goto_3
    if-nez v6, :cond_6

    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 321
    add-int/lit8 v4, v4, 0x1

    .line 323
    .end local v6    # "nonZeroDigitSeen":Z
    :cond_6
    if-eqz v6, :cond_0

    .line 324
    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    iget v9, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Ljava/text/DigitList;->count:I

    aput-char v0, v8, v9

    goto :goto_1

    .line 319
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 346
    .end local v0    # "c":C
    :cond_8
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    neg-int v8, v8

    if-ne v8, p3, :cond_a

    .line 349
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/text/DigitList;->shouldRoundUp(I)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 350
    const/4 v8, 0x1

    iput v8, p0, Ljava/text/DigitList;->count:I

    .line 351
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    .line 352
    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    const/16 v9, 0x31

    const/4 v10, 0x0

    aput-char v9, v8, v10

    .line 356
    :goto_4
    return-void

    .line 354
    :cond_9
    const/4 v8, 0x0

    iput v8, p0, Ljava/text/DigitList;->count:I

    goto :goto_4

    .line 362
    :cond_a
    :goto_5
    iget v8, p0, Ljava/text/DigitList;->count:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_b

    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    iget v9, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v9, v9, -0x1

    aget-char v8, v8, v9

    const/16 v9, 0x30

    if-ne v8, v9, :cond_b

    .line 363
    iget v8, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/text/DigitList;->count:I

    goto :goto_5

    .line 368
    :cond_b
    if-eqz p4, :cond_c

    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    add-int/2addr p3, v8

    .end local p3    # "maximumDigits":I
    :cond_c
    invoke-direct {p0, p3}, Ljava/text/DigitList;->round(I)V

    .line 296
    return-void

    .end local v2    # "i":I
    .restart local v3    # "i":I
    .restart local p3    # "maximumDigits":I
    :cond_d
    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method final set(ZLjava/math/BigDecimal;IZ)V
    .locals 2
    .param p1, "isNegative"    # Z
    .param p2, "source"    # Ljava/math/BigDecimal;
    .param p3, "maximumDigits"    # I
    .param p4, "fixedPoint"    # Z

    .prologue
    .line 559
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/text/DigitList;->extendDigits(I)V

    .line 562
    invoke-virtual {p0, p1, v0, p3, p4}, Ljava/text/DigitList;->set(ZLjava/lang/String;IZ)V

    .line 558
    return-void
.end method

.method final set(ZLjava/math/BigInteger;I)V
    .locals 5
    .param p1, "isNegative"    # Z
    .param p2, "source"    # Ljava/math/BigInteger;
    .param p3, "maximumDigits"    # I

    .prologue
    const/4 v4, 0x0

    .line 574
    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    .line 575
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 577
    .local v0, "len":I
    invoke-direct {p0, v0}, Ljava/text/DigitList;->extendDigits(I)V

    .line 578
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    invoke-virtual {v2, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 580
    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    .line 582
    add-int/lit8 v1, v0, -0x1

    .local v1, "right":I
    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v1

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 584
    :cond_0
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/text/DigitList;->count:I

    .line 586
    if-lez p3, :cond_1

    .line 587
    invoke-direct {p0, p3}, Ljava/text/DigitList;->round(I)V

    .line 573
    :cond_1
    return-void
.end method

.method setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 0
    .param p1, "r"    # Ljava/math/RoundingMode;

    .prologue
    .line 126
    iput-object p1, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 681
    invoke-virtual {p0}, Ljava/text/DigitList;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    const-string/jumbo v1, "0"

    return-object v1

    .line 684
    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    .line 685
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 686
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 687
    const-string/jumbo v1, "x10^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
