.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    new-array v0, v3, [[C

    const/16 v1, 0xa

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xd

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-void

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    return-object v1

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static isDecimalPointChar(C)Z
    .locals 1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSignChar(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_0

    return-object v4

    :cond_0
    if-eqz v4, :cond_1

    move-object p1, v4

    const/4 p2, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_1
    const/4 v5, -0x1

    const/4 v1, -0x1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p5, :cond_4

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v3

    goto :goto_1

    :cond_4
    move/from16 v3, p6

    :goto_2
    if-ge v3, v2, :cond_7

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, ""

    return-object v8

    :cond_5
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_6

    move v1, v3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    add-int/lit8 v3, p3, -0x1

    :goto_3
    if-lt v3, p2, :cond_11

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v6, 0x0

    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v8

    if-eqz v8, :cond_c

    if-ne v3, p2, :cond_8

    if-eqz p5, :cond_a

    :cond_8
    const/4 v6, 0x1

    :cond_9
    :goto_4
    if-eqz v6, :cond_10

    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_e

    const-string/jumbo v8, ""

    return-object v8

    :cond_a
    if-ltz v5, :cond_b

    const/4 v6, 0x1

    goto :goto_4

    :cond_b
    move v5, v3

    goto :goto_4

    :cond_c
    invoke-static {v0}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v8

    if-eqz v8, :cond_9

    if-ltz v1, :cond_d

    const/4 v6, 0x1

    goto :goto_4

    :cond_d
    move v1, v3

    goto :goto_4

    :cond_e
    if-nez v7, :cond_f

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    :cond_f
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_11
    if-eqz v7, :cond_12

    return-object v7

    :cond_12
    if-eqz v4, :cond_13

    return-object v4

    :cond_13
    const/4 v8, 0x0

    return-object v8
.end method

.method protected getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    const/4 v0, 0x2

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x1002

    :cond_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    return v0
.end method
