.class public final Lcom/android/internal/util/BitUtils;
.super Ljava/lang/Object;
.source "BitUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToBEInt([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static bytesToLEInt([B)I
    .locals 1

    invoke-static {p0}, Lcom/android/internal/util/BitUtils;->bytesToBEInt([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static getUint16(Ljava/nio/ByteBuffer;I)I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint16(S)I

    move-result v0

    return v0
.end method

.method public static getUint32(Ljava/nio/ByteBuffer;I)J
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint32(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUint8(Ljava/nio/ByteBuffer;I)I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/BitUtils;->uint8(B)I

    move-result v0

    return v0
.end method

.method public static maskedEquals(BBB)Z
    .locals 2

    and-int v0, p0, p2

    and-int v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskedEquals(JJJ)Z
    .locals 4

    and-long v0, p0, p4

    and-long v2, p2, p4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskedEquals(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .locals 6

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(JJJ)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maskedEquals([B[B[B)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    array-length v3, p0

    array-length v4, p1

    if-ne v3, v4, :cond_3

    move v3, v1

    :goto_1
    const-string/jumbo v4, "Inputs must be of same size"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-nez p2, :cond_4

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    array-length v3, p0

    array-length v4, p2

    if-ne v3, v4, :cond_5

    move v3, v1

    :goto_2
    const-string/jumbo v4, "Mask must be of same size as inputs"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_3
    array-length v3, p2

    if-ge v0, v3, :cond_7

    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    aget-byte v5, p2, v0

    invoke-static {v3, v4, v5}, Lcom/android/internal/util/BitUtils;->maskedEquals(BBB)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return v1
.end method

.method public static packBits([I)J
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    array-length v4, p0

    :goto_0
    if-ge v1, v4, :cond_0

    aget v0, p0, v1

    const/4 v5, 0x1

    shl-int/2addr v5, v0

    int-to-long v6, v5

    or-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static put(Ljava/nio/ByteBuffer;I[B)V
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public static uint16(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static uint32(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static uint8(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static unpackBits(J)[I
    .locals 10

    const-wide/16 v8, 0x1

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    new-array v3, v4, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v1

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v5, p0, v6

    if-lez v5, :cond_0

    and-long v6, p0, v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    add-int/lit8 v1, v2, 0x1

    aput v0, v3, v2

    :goto_1
    const/4 v5, 0x1

    shr-long/2addr p0, v5

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v1, v2

    goto :goto_1
.end method
