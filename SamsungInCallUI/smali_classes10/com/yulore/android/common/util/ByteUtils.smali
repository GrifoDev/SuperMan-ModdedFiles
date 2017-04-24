.class public Lcom/yulore/android/common/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/yulore/android/common/util/ByteUtils;->byteArrayToHex([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static byteArrayToHex([BII)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_1
    if-ge v1, p2, :cond_2

    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static byteArrayToInt([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/yulore/android/common/util/ByteUtils;->byteArrayToInt([BII)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BII)I
    .locals 10

    const/4 v9, 0x0

    if-nez p0, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Null pointer Exception from byte array to int"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    if-le p2, p1, :cond_1

    sub-int v7, p2, p1

    array-length v8, p0

    if-le v7, v8, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Illegal Arguments,to < from"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const/4 v7, 0x4

    new-array v2, v7, [B

    array-length v7, v2

    add-int/lit8 v0, v7, -0x1

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-ltz v0, :cond_4

    if-lt v1, p1, :cond_3

    aget-byte v7, p0, v1

    aput-byte v7, v2, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    aput-byte v9, v2, v0

    goto :goto_1

    :cond_4
    aget-byte v7, v2, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v3, v7, 0x18

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v7, 0x10

    const/4 v7, 0x2

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v5, v7, 0x8

    const/4 v7, 0x3

    aget-byte v7, v2, v7

    and-int/lit16 v6, v7, 0xff

    add-int v7, v3, v4

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    return v7
.end method

.method public static compare([B[B)I
    .locals 5

    const/4 v1, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    aget-byte v4, p0, v2

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, p1, v2

    and-int/lit16 v0, v4, 0xff

    if-le v3, v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-ge v3, v0, :cond_3

    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static compress([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    return-object v4

    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    throw v4

    :catchall_1
    move-exception v4

    move-object v0, v1

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v0, v1

    move-object v2, v3

    goto :goto_0
.end method

.method public static decompress([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v5, 0x0

    const/16 v6, 0x400

    :try_start_2
    new-array v2, v6, [B

    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v4, v2, v6, v7}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    move-object v0, v1

    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    throw v6

    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_4
    return-object v6

    :catchall_1
    move-exception v6

    goto :goto_1

    :catchall_2
    move-exception v6

    move-object v0, v1

    goto :goto_1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Input string must contain an even number of characters"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-char v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method public static final intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static final intToByteArrayLow(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
