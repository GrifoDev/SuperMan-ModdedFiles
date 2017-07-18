.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .locals 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x800

    if-ge v0, v4, :cond_1

    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    if-ge v3, v2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UTF-8 length does not fit in int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x800

    if-ge v0, v4, :cond_1

    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x2

    const v4, 0xd800

    if-gt v4, v0, :cond_0

    const v4, 0xdfff

    if-gt v0, v4, :cond_0

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lcom/google/common/base/Utf8;->unpairedSurrogateMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v3
.end method

.method public static isWellFormed([B)Z
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result v0

    return v0
.end method

.method public static isWellFormed([BII)Z
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    add-int v0, p1, p2

    array-length v2, p0

    invoke-static {p1, v0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v2, p0, v1

    if-gez v2, :cond_0

    invoke-static {p0, v1, v0}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result v2

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static isWellFormedSlowPath([BII)Z
    .locals 10

    const/16 v9, -0x20

    const/16 v8, -0x60

    const/4 v4, 0x0

    const/16 v7, -0x41

    move v2, p1

    move v3, v2

    :goto_0
    if-lt v3, p2, :cond_1

    const/4 v4, 0x1

    move v2, v3

    :cond_0
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v2, v3, 0x1

    aget-byte v0, p0, v3

    if-gez v0, :cond_8

    if-ge v0, v9, :cond_3

    if-eq v2, p2, :cond_0

    const/16 v5, -0x3e

    if-lt v0, v5, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v2

    if-le v5, v7, :cond_7

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    const/16 v5, -0x10

    if-ge v0, v5, :cond_6

    add-int/lit8 v5, v2, 0x1

    if-ge v5, p2, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, p0, v2

    if-gt v1, v7, :cond_2

    if-ne v0, v9, :cond_4

    if-lt v1, v8, :cond_2

    :cond_4
    const/16 v5, -0x13

    if-ne v0, v5, :cond_5

    if-le v8, v1, :cond_2

    :cond_5
    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p0, v3

    if-gt v5, v7, :cond_0

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v2, 0x2

    if-ge v5, p2, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, p0, v2

    if-gt v1, v7, :cond_2

    shl-int/lit8 v5, v0, 0x1c

    add-int/lit8 v6, v1, 0x70

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1e

    if-nez v5, :cond_2

    add-int/lit8 v2, v3, 0x1

    aget-byte v5, p0, v3

    if-gt v5, v7, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v5, p0, v2

    if-gt v5, v7, :cond_2

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    move v3, v2

    goto :goto_0
.end method

.method private static unpairedSurrogateMsg(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
