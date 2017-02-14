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

    const-class v0, Ljava/text/DigitList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/text/DigitList;->-assertionsDisabled:Z

    const-string/jumbo v0, "9223372036854775808"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/text/DigitList;->LONG_MIN_REP:[C

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Ljava/text/DigitList;->decimalAt:I

    iput v1, p0, Ljava/text/DigitList;->count:I

    const/16 v0, 0x13

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    iput-object v0, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    iput-boolean v1, p0, Ljava/text/DigitList;->isNegative:Z

    return-void
.end method

.method private extendDigits(I)V
    .locals 1

    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    new-array v0, p1, [C

    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    :cond_0
    return-void
.end method

.method private final getDataChars(I)[C
    .locals 1

    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    array-length v0, v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/text/DigitList;->data:[C

    :cond_1
    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    return-object v0
.end method

.method private getStringBuffer()Ljava/lang/StringBuffer;
    .locals 2

    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0
.end method

.method private isLongMIN_VALUE()Z
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljava/text/DigitList;->count:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    aget-char v1, v1, v0

    sget-object v2, Ljava/text/DigitList;->LONG_MIN_REP:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private static final parseInt([CII)I
    .locals 6

    const/4 v2, 0x1

    aget-char v0, p0, p1

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    const/4 v2, 0x0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    move v1, p1

    :goto_1
    if-ge v1, p2, :cond_2

    add-int/lit8 p1, v1, 0x1

    aget-char v0, p0, v1

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    mul-int/lit8 v4, v3, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v3, v4, v5

    move v1, p1

    goto :goto_1

    :cond_1
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move p1, v1

    :cond_3
    if-eqz v2, :cond_4

    :goto_2
    return v3

    :cond_4
    neg-int v3, v3

    goto :goto_2
.end method

.method private final round(I)V
    .locals 3

    const/4 v2, 0x0

    if-ltz p1, :cond_3

    iget v0, p0, Ljava/text/DigitList;->count:I

    if-ge p1, v0, :cond_3

    invoke-direct {p0, p1}, Ljava/text/DigitList;->shouldRoundUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_2

    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    const/16 v1, 0x31

    aput-char v1, v0, v2

    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    :cond_1
    iput p1, p0, Ljava/text/DigitList;->count:I

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

    iget v0, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/text/DigitList;->count:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    aget-char v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    aput-char v1, v0, p1

    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    aget-char v0, v0, p1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private shouldRoundUp(I)Z
    .locals 7

    const/16 v6, 0x35

    const/16 v5, 0x30

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge p1, v3, :cond_b

    invoke-static {}, Ljava/text/DigitList;->-getjava-math-RoundingModeSwitchesValues()[I

    move-result-object v3

    iget-object v4, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    sget-boolean v2, Ljava/text/DigitList;->-assertionsDisabled:Z

    if-nez v2, :cond_b

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :pswitch_0
    move v0, p1

    :goto_0
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    move v0, p1

    :goto_1
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_2

    iget-boolean v3, p0, Ljava/text/DigitList;->isNegative:Z

    if-eqz v3, :cond_1

    :goto_2
    return v1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    move v0, p1

    :goto_3
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v2, :cond_b

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v0

    if-eq v2, v5, :cond_3

    iget-boolean v1, p0, Ljava/text/DigitList;->isNegative:Z

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_3
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-lt v3, v6, :cond_b

    return v2

    :pswitch_4
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-le v3, v6, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-ne v3, v6, :cond_b

    add-int/lit8 v0, p1, 0x1

    :goto_4
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_b

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_5

    return v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_5
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-le v3, v6, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, p1

    if-ne v3, v6, :cond_b

    add-int/lit8 v0, p1, 0x1

    :goto_5
    iget v3, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v3, v5, :cond_7

    return v2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

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

    :pswitch_6
    move v0, p1

    :goto_6
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v2, :cond_b

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v0

    if-eq v2, v5, :cond_a

    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "Rounding needed with the rounding mode being set to RoundingMode.UNNECESSARY"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    :pswitch_7
    return v1

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

    const/4 v3, 0x0

    iget v1, p0, Ljava/text/DigitList;->count:I

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v1, v1, 0x64

    new-array v0, v1, [C

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    :cond_0
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/text/DigitList;->count:I

    aput-char p1, v1, v2

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    iput v0, p0, Ljava/text/DigitList;->count:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/DigitList;

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    array-length v3, v3

    new-array v1, v3, [C

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    iget-object v4, p0, Ljava/text/DigitList;->digits:[C

    array-length v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v1, v2, Ljava/text/DigitList;->digits:[C

    const/4 v3, 0x0

    iput-object v3, v2, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    instance-of v2, p1, Ljava/text/DigitList;

    if-nez v2, :cond_1

    return v4

    :cond_1
    move-object v1, p1

    nop

    nop

    iget v2, p0, Ljava/text/DigitList;->count:I

    iget v3, v1, Ljava/text/DigitList;->count:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    iget v3, v1, Ljava/text/DigitList;->decimalAt:I

    if-eq v2, v3, :cond_3

    :cond_2
    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v0

    iget-object v3, v1, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method fitsIntoLong(ZZ)Z
    .locals 8

    const/16 v7, 0x13

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    iget v5, p0, Ljava/text/DigitList;->count:I

    if-lez v5, :cond_0

    iget-object v5, p0, Ljava/text/DigitList;->digits:[C

    iget v6, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v6, v6, -0x1

    aget-char v5, v5, v6

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    iget v5, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Ljava/text/DigitList;->count:I

    goto :goto_0

    :cond_0
    iget v5, p0, Ljava/text/DigitList;->count:I

    if-nez v5, :cond_2

    if-nez p1, :cond_1

    :goto_1
    return p2

    :cond_1
    move p2, v3

    goto :goto_1

    :cond_2
    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    iget v6, p0, Ljava/text/DigitList;->count:I

    if-lt v5, v6, :cond_3

    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    if-le v5, v7, :cond_4

    :cond_3
    return v4

    :cond_4
    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    if-ge v5, v7, :cond_5

    return v3

    :cond_5
    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Ljava/text/DigitList;->count:I

    if-ge v1, v5, :cond_8

    iget-object v5, p0, Ljava/text/DigitList;->digits:[C

    aget-char v0, v5, v1

    sget-object v5, Ljava/text/DigitList;->LONG_MIN_REP:[C

    aget-char v2, v5, v1

    if-le v0, v2, :cond_6

    return v4

    :cond_6
    if-ge v0, v2, :cond_7

    return v3

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    iget v5, p0, Ljava/text/DigitList;->count:I

    iget v6, p0, Ljava/text/DigitList;->decimalAt:I

    if-ge v5, v6, :cond_9

    return v3

    :cond_9
    if-eqz p1, :cond_a

    move v3, v4

    :cond_a
    return v3
.end method

.method public final getBigDecimal()Ljava/math/BigDecimal;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Ljava/text/DigitList;->count:I

    if-nez v0, :cond_1

    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    if-nez v0, :cond_0

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v0

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

    :cond_1
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    iget v1, p0, Ljava/text/DigitList;->count:I

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    invoke-direct {v0, v1, v3, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

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

    const/4 v3, 0x0

    iget v1, p0, Ljava/text/DigitList;->count:I

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const/16 v1, 0x45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    return-wide v2
.end method

.method public final getLong()J
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Ljava/text/DigitList;->count:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->isLongMIN_VALUE()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    :cond_1
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    iget v3, p0, Ljava/text/DigitList;->count:I

    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    iget v0, p0, Ljava/text/DigitList;->count:I

    :goto_0
    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    if-ge v0, v2, :cond_2

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ljava/text/DigitList;->count:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v1

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method isZero()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ljava/text/DigitList;->count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    aget-char v1, v1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final set(ZDI)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/text/DigitList;->set(ZDIZ)V

    return-void
.end method

.method final set(ZDIZ)V
    .locals 2

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p4, p5}, Ljava/text/DigitList;->set(ZLjava/lang/String;IZ)V

    return-void
.end method

.method public final set(ZJ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/text/DigitList;->set(ZJI)V

    return-void
.end method

.method public final set(ZJI)V
    .locals 8

    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    const/16 v2, 0x13

    iput v2, p0, Ljava/text/DigitList;->count:I

    const/16 v2, 0x13

    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    sget-object v2, Ljava/text/DigitList;->LONG_MIN_REP:[C

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    iget v4, p0, Ljava/text/DigitList;->count:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    :goto_0
    if-lez p4, :cond_0

    invoke-direct {p0, p4}, Ljava/text/DigitList;->round(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Ljava/text/DigitList;->count:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v4, 0xa

    rem-long v4, p2, v4

    const-wide/16 v6, 0x30

    add-long/2addr v4, v6

    long-to-int v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v0

    const-wide/16 v2, 0xa

    div-long/2addr p2, v2

    goto :goto_1

    :cond_3
    rsub-int/lit8 v2, v0, 0x13

    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    const/16 v1, 0x12

    :goto_2
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    aget-char v2, v2, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/text/DigitList;->count:I

    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    iget v4, p0, Ljava/text/DigitList;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_0
.end method

.method final set(ZLjava/lang/String;IZ)V
    .locals 11

    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {p0, v5}, Ljava/text/DigitList;->getDataChars(I)[C

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v5, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v8, -0x1

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    const/4 v8, 0x0

    iput v8, p0, Ljava/text/DigitList;->count:I

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_d

    add-int/lit8 v2, v3, 0x1

    aget-char v0, v7, v3

    const/16 v8, 0x2e

    if-ne v0, v8, :cond_1

    iget v8, p0, Ljava/text/DigitList;->count:I

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    :cond_0
    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v8, 0x65

    if-eq v0, v8, :cond_2

    const/16 v8, 0x45

    if-ne v0, v8, :cond_5

    :cond_2
    invoke-static {v7, v2, v5}, Ljava/text/DigitList;->parseInt([CII)I

    move-result v1

    :goto_2
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    iget v8, p0, Ljava/text/DigitList;->count:I

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    :cond_3
    if-eqz v6, :cond_4

    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    sub-int v9, v1, v4

    add-int/2addr v8, v9

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    :cond_4
    if-eqz p4, :cond_a

    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    neg-int v8, v8

    if-le v8, p3, :cond_8

    const/4 v8, 0x0

    iput v8, p0, Ljava/text/DigitList;->count:I

    return-void

    :cond_5
    if-nez v6, :cond_6

    const/16 v8, 0x30

    if-eq v0, v8, :cond_7

    const/4 v6, 0x1

    :goto_3
    if-nez v6, :cond_6

    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_6
    if-eqz v6, :cond_0

    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    iget v9, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Ljava/text/DigitList;->count:I

    aput-char v0, v8, v9

    goto :goto_1

    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    :cond_8
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    neg-int v8, v8

    if-ne v8, p3, :cond_a

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/text/DigitList;->shouldRoundUp(I)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    iput v8, p0, Ljava/text/DigitList;->count:I

    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    const/16 v9, 0x31

    const/4 v10, 0x0

    aput-char v9, v8, v10

    :goto_4
    return-void

    :cond_9
    const/4 v8, 0x0

    iput v8, p0, Ljava/text/DigitList;->count:I

    goto :goto_4

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

    iget v8, p0, Ljava/text/DigitList;->count:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/text/DigitList;->count:I

    goto :goto_5

    :cond_b
    if-eqz p4, :cond_c

    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    add-int/2addr p3, v8

    :cond_c
    invoke-direct {p0, p3}, Ljava/text/DigitList;->round(I)V

    return-void

    :cond_d
    move v2, v3

    goto :goto_2
.end method

.method final set(ZLjava/math/BigDecimal;IZ)V
    .locals 2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/text/DigitList;->extendDigits(I)V

    invoke-virtual {p0, p1, v0, p3, p4}, Ljava/text/DigitList;->set(ZLjava/lang/String;IZ)V

    return-void
.end method

.method final set(ZLjava/math/BigInteger;I)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/text/DigitList;->extendDigits(I)V

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    invoke-virtual {v2, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    aget-char v3, v3, v1

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/text/DigitList;->count:I

    if-lez p3, :cond_1

    invoke-direct {p0, p3}, Ljava/text/DigitList;->round(I)V

    :cond_1
    return-void
.end method

.method setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 0

    iput-object p1, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/text/DigitList;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "0"

    return-object v1

    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    iget v2, p0, Ljava/text/DigitList;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "x10^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
