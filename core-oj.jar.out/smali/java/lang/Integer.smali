.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Integer$IntegerCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final BYTES:I = 0x4

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field public static final SIZE:I = 0x20

.field private static final SMALL_NEG_VALUES:[Ljava/lang/String;

.field private static final SMALL_NONNEG_VALUES:[Ljava/lang/String;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final digits:[C

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L

.field static final sizeTable:[I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x64

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Ljava/lang/Integer;->-assertionsDisabled:Z

    const-class v0, [I

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Ljava/lang/Integer;->digits:[C

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Ljava/lang/Integer;->DigitTens:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    sput-object v0, Ljava/lang/Integer;->DigitOnes:[C

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljava/lang/Integer;->sizeTable:[I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
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

    :array_3
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Ljava/lang/Integer;->value:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ljava/lang/Integer;->value:I

    return-void
.end method

.method public static bitCount(I)I
    .locals 3

    const v2, 0x33333333

    ushr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    and-int v0, p0, v2

    ushr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v2

    add-int p0, v0, v1

    ushr-int/lit8 v0, p0, 0x4

    add-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    ushr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static compare(II)I
    .locals 1

    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v5, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Zero length string"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_5

    const/4 v4, 0x1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v7, "0x"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "0X"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_2
    add-int/lit8 v3, v3, 0x2

    const/16 v5, 0x10

    :cond_3
    :goto_1
    const-string/jumbo v7, "-"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "+"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_4
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string/jumbo v8, "Sign character in wrong position"

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    const/16 v7, 0x2b

    if-ne v2, v7, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_6
    const-string/jumbo v7, "#"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x10

    goto :goto_1

    :cond_7
    const-string/jumbo v7, "0"

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    if-le v7, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x8

    goto :goto_1

    :cond_8
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v4, :cond_9

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :cond_9
    :goto_2
    return-object v6

    :catch_0
    move-exception v1

    if-eqz v4, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method static getChars(II[C)V
    .locals 6

    move v0, p1

    const/4 v3, 0x0

    if-gez p0, :cond_0

    const/16 v3, 0x2d

    neg-int p0, p0

    :cond_0
    :goto_0
    const/high16 v4, 0x10000

    if-lt p0, v4, :cond_1

    div-int/lit8 v1, p0, 0x64

    shl-int/lit8 v4, v1, 0x6

    shl-int/lit8 v5, v1, 0x5

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    move p0, v1

    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->DigitTens:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    goto :goto_0

    :cond_1
    const v4, 0xcccd

    mul-int/2addr v4, p0

    ushr-int/lit8 v1, v4, 0x13

    shl-int/lit8 v4, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v4, v5

    sub-int v2, p0, v4

    add-int/lit8 v0, v0, -0x1

    sget-object v4, Ljava/lang/Integer;->digits:[C

    aget-char v4, v4, v2

    aput-char v4, p2, v0

    move p0, v1

    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    aput-char v3, p2, v0

    :cond_2
    return-void
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v2

    :cond_0
    return-object p1
.end method

.method public static hashCode(I)I
    .locals 0

    return p0
.end method

.method public static highestOneBit(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method public static lowestOneBit(I)I
    .locals 1

    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static max(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static min(II)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .locals 2

    if-nez p0, :cond_0

    const/16 v1, 0x20

    return v1

    :cond_0
    const/4 v0, 0x1

    ushr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_1

    const/16 v0, 0x11

    shl-int/lit8 p0, p0, 0x10

    :cond_1
    ushr-int/lit8 v1, p0, 0x18

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 p0, p0, 0x8

    :cond_2
    ushr-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 p0, p0, 0x4

    :cond_3
    ushr-int/lit8 v1, p0, 0x1e

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 p0, p0, 0x2

    :cond_4
    ushr-int/lit8 v1, p0, 0x1f

    sub-int/2addr v0, v1

    return v0
.end method

.method public static numberOfTrailingZeros(I)I
    .locals 3

    if-nez p0, :cond_0

    const/16 v2, 0x20

    return v2

    :cond_0
    const/16 v0, 0x1f

    shl-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    move p0, v1

    :cond_1
    shl-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x8

    move p0, v1

    :cond_2
    shl-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x4

    move p0, v1

    :cond_3
    shl-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_4

    add-int/lit8 v0, v0, -0x2

    move p0, v1

    :cond_4
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v2, v2, 0x1f

    sub-int v2, v0, v2

    return v2
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v10, 0x0

    if-nez p0, :cond_0

    new-instance v9, Ljava/lang/NumberFormatException;

    const-string/jumbo v10, "null"

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v9, 0x2

    if-ge p1, v9, :cond_1

    new-instance v9, Ljava/lang/NumberFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "radix "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " less than Character.MIN_RADIX"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    const/16 v9, 0x24

    if-le p1, v9, :cond_2

    new-instance v9, Ljava/lang/NumberFormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "radix "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " greater than Character.MAX_RADIX"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const v5, -0x7fffffff

    if-lez v4, :cond_a

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x30

    if-ge v1, v9, :cond_6

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_4

    const/4 v7, 0x1

    const/high16 v5, -0x80000000

    :cond_3
    const/4 v9, 0x1

    if-ne v4, v9, :cond_5

    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    :cond_4
    const/16 v9, 0x2b

    if-eq v1, v9, :cond_3

    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    :cond_5
    const/4 v2, 0x1

    :cond_6
    div-int v6, v5, p1

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_b

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-gez v0, :cond_7

    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    :cond_7
    if-ge v8, v6, :cond_8

    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    :cond_8
    mul-int/2addr v8, p1

    add-int v9, v5, v0

    if-ge v8, v9, :cond_9

    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    :cond_9
    sub-int/2addr v8, v0

    move v3, v2

    goto :goto_0

    :cond_a
    invoke-static {p0}, Ljava/lang/NumberFormatException;->forInputString(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    :cond_b
    if-eqz v7, :cond_c

    :goto_1
    return v8

    :cond_c
    neg-int v8, v8

    goto :goto_1
.end method

.method public static reverse(I)I
    .locals 6

    const v5, 0x55555555

    const v4, 0x33333333

    const v3, 0xf0f0f0f

    const v2, 0xff00

    and-int v0, p0, v5

    shl-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p0, 0x1

    and-int/2addr v1, v5

    or-int p0, v0, v1

    and-int v0, p0, v4

    shl-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v4

    or-int p0, v0, v1

    and-int v0, p0, v3

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v1, p0, 0x4

    and-int/2addr v1, v3

    or-int p0, v0, v1

    shl-int/lit8 v0, p0, 0x18

    and-int v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x8

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x18

    or-int p0, v0, v1

    return p0
.end method

.method public static reverseBytes(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateLeft(II)I
    .locals 2

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateRight(II)I
    .locals 2

    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static signum(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x1f

    neg-int v1, p0

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method static stringSize(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/lang/Integer;->sizeTable:[I

    aget v1, v1, v0

    if-gt p0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static sum(II)I
    .locals 1

    add-int v0, p0, p1

    return v0
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljava/lang/Integer;->toUnsignedString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x2d

    const/16 v8, 0xa

    const/4 v9, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v5, -0x80000000

    if-ne p0, v5, :cond_0

    const-string/jumbo v5, "-2147483648"

    return-object v5

    :cond_0
    if-gez p0, :cond_2

    move v1, v6

    :goto_0
    if-eqz v1, :cond_4

    const/16 v5, -0x64

    if-le p0, v5, :cond_3

    :goto_1
    move v3, v6

    :goto_2
    if-eqz v3, :cond_9

    if-eqz v1, :cond_5

    sget-object v4, Ljava/lang/Integer;->SMALL_NEG_VALUES:[Ljava/lang/String;

    :goto_3
    if-eqz v1, :cond_7

    neg-int p0, p0

    aget-object v5, v4, p0

    if-nez v5, :cond_1

    if-ge p0, v8, :cond_6

    new-instance v5, Ljava/lang/String;

    new-array v8, v9, [C

    aput-char v10, v8, v7

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, p0

    aput-char v7, v8, v6

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    :goto_4
    aput-object v5, v4, p0

    :cond_1
    :goto_5
    aget-object v5, v4, p0

    return-object v5

    :cond_2
    move v1, v7

    goto :goto_0

    :cond_3
    move v3, v7

    goto :goto_2

    :cond_4
    const/16 v5, 0x64

    if-ge p0, v5, :cond_3

    goto :goto_1

    :cond_5
    sget-object v4, Ljava/lang/Integer;->SMALL_NONNEG_VALUES:[Ljava/lang/String;

    goto :goto_3

    :cond_6
    new-instance v5, Ljava/lang/String;

    const/4 v8, 0x3

    new-array v8, v8, [C

    aput-char v10, v8, v7

    sget-object v7, Ljava/lang/Integer;->DigitTens:[C

    aget-char v7, v7, p0

    aput-char v7, v8, v6

    sget-object v6, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v6, v6, p0

    aput-char v6, v8, v9

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_4

    :cond_7
    aget-object v5, v4, p0

    if-nez v5, :cond_1

    if-ge p0, v8, :cond_8

    new-instance v5, Ljava/lang/String;

    new-array v6, v6, [C

    sget-object v8, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v8, v8, p0

    aput-char v8, v6, v7

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    :goto_6
    aput-object v5, v4, p0

    goto :goto_5

    :cond_8
    new-instance v5, Ljava/lang/String;

    new-array v8, v9, [C

    sget-object v9, Ljava/lang/Integer;->DigitTens:[C

    aget-char v9, v9, p0

    aput-char v9, v8, v7

    sget-object v7, Ljava/lang/Integer;->DigitOnes:[C

    aget-char v7, v7, p0

    aput-char v7, v8, v6

    invoke-direct {v5, v8}, Ljava/lang/String;-><init>([C)V

    goto :goto_6

    :cond_9
    if-eqz v1, :cond_a

    neg-int v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->stringSize(I)I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    :goto_7
    new-array v0, v2, [C

    invoke-static {p0, v2, v0}, Ljava/lang/Integer;->getChars(II[C)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    return-object v5

    :cond_a
    invoke-static {p0}, Ljava/lang/Integer;->stringSize(I)I

    move-result v2

    goto :goto_7
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const/4 v5, 0x2

    if-lt p1, v5, :cond_0

    const/16 v5, 0x24

    if-le p1, v5, :cond_1

    :cond_0
    const/16 p1, 0xa

    :cond_1
    const/16 v5, 0xa

    if-ne p1, v5, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const/16 v5, 0x21

    new-array v0, v5, [C

    if-gez p0, :cond_3

    const/4 v3, 0x1

    :cond_3
    const/16 v1, 0x20

    if-nez v3, :cond_6

    neg-int p0, p0

    move v2, v1

    :goto_0
    neg-int v5, p1

    if-gt p0, v5, :cond_4

    div-int v4, p0, p1

    add-int/lit8 v1, v2, -0x1

    sget-object v5, Ljava/lang/Integer;->digits:[C

    mul-int v6, p1, v4

    sub-int/2addr v6, p0

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    move p0, v4

    move v2, v1

    goto :goto_0

    :cond_4
    sget-object v5, Ljava/lang/Integer;->digits:[C

    neg-int v6, p0

    aget-char v5, v5, v6

    aput-char v5, v0, v2

    if-eqz v3, :cond_5

    add-int/lit8 v1, v2, -0x1

    const/16 v5, 0x2d

    aput-char v5, v0, v1

    :goto_1
    new-instance v5, Ljava/lang/String;

    rsub-int/lit8 v6, v1, 0x21

    invoke-direct {v5, v0, v1, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_0
.end method

.method private static toUnsignedString(II)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x20

    new-array v0, v4, [C

    const/16 v1, 0x20

    const/4 v4, 0x1

    shl-int v3, v4, p1

    add-int/lit8 v2, v3, -0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    sget-object v4, Ljava/lang/Integer;->digits:[C

    and-int v5, p0, v2

    aget-char v4, v4, v5

    aput-char v4, v0, v1

    ushr-int/2addr p0, p1

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/String;

    rsub-int/lit8 v5, v1, 0x20

    invoke-direct {v4, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .locals 2

    sget-boolean v0, Ljava/lang/Integer;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    sget v0, Ljava/lang/Integer$IntegerCache;->high:I

    const/16 v1, 0x7f

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, -0x80

    if-lt p0, v0, :cond_2

    sget v0, Ljava/lang/Integer$IntegerCache;->high:I

    if-gt p0, v0, :cond_2

    sget-object v0, Ljava/lang/Integer$IntegerCache;->cache:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .locals 1

    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .locals 2

    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2

    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/lang/Integer;->value:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public floatValue()F
    .locals 1

    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public intValue()I
    .locals 1

    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
