.class public abstract Lcom/google/common/hash/HashCode;
.super Ljava/lang/Object;
.source "HashCode.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/HashCode$BytesHashCode;,
        Lcom/google/common/hash/HashCode$LongHashCode;,
        Lcom/google/common/hash/HashCode$IntHashCode;
    }
.end annotation


# static fields
.field private static final hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/common/hash/HashCode;->hexDigits:[C

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decode(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal hexadecimal character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v0, 0x1

    array-length v1, p0

    if-lt v1, v0, :cond_0

    :goto_0
    const-string v1, "A HashCode must contain at least 1 byte."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;
    .locals 1

    new-instance v0, Lcom/google/common/hash/HashCode$BytesHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$BytesHashCode;-><init>([B)V

    return-object v0
.end method

.method public static fromInt(I)Lcom/google/common/hash/HashCode;
    .locals 1
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    new-instance v0, Lcom/google/common/hash/HashCode$IntHashCode;

    invoke-direct {v0, p0}, Lcom/google/common/hash/HashCode$IntHashCode;-><init>(I)V

    return-object v0
.end method

.method public static fromLong(J)Lcom/google/common/hash/HashCode;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    new-instance v0, Lcom/google/common/hash/HashCode$LongHashCode;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/HashCode$LongHashCode;-><init>(J)V

    return-object v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/google/common/hash/HashCode;
    .locals 9
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x2

    if-lt v4, v7, :cond_0

    move v4, v5

    :goto_0
    const-string v7, "input string (%s) must have at least 2 characters"

    new-array v8, v5, [Ljava/lang/Object;

    aput-object p0, v8, v6

    invoke-static {v4, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    move v4, v5

    :goto_1
    const-string v7, "input string (%s) must have an even number of characters"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v4, v7, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/hash/HashCode;->decode(C)I

    move-result v4

    shl-int/lit8 v1, v4, 0x4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/common/hash/HashCode;->decode(C)I

    move-result v2

    div-int/lit8 v4, v3, 0x2

    add-int v5, v1, v2

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public abstract asBytes()[B
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract asInt()I
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract asLong()J
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract bits()I
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/common/hash/HashCode;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/common/hash/HashCode;

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/common/hash/HashCode;->equalsSameBits(Lcom/google/common/hash/HashCode;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method abstract equalsSameBits(Lcom/google/common/hash/HashCode;)Z
.end method

.method getBytesInternal()[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->asInt()I

    move-result v2

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v3, v0, v3

    and-int/lit16 v2, v3, 0xff

    const/4 v1, 0x1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public abstract padToLong()J
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->getBytesInternal()[B

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    array-length v6, v2

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    sget-object v6, Lcom/google/common/hash/HashCode;->hexDigits:[C

    shr-int/lit8 v7, v1, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/google/common/hash/HashCode;->hexDigits:[C

    and-int/lit8 v8, v1, 0xf

    aget-char v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeBytesTo([BII)I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    aput v2, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->min([I)I

    move-result p3

    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/HashCode;->writeBytesToImpl([BII)V

    return p3
.end method

.method abstract writeBytesToImpl([BII)V
.end method
