.class public Lcom/yulore/android/common/util/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # [B

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
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
    .param p0, "src"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v4, 0x0

    .line 74
    :goto_0
    return-object v4

    .line 64
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v2, "sb":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_2

    .line 67
    aget-byte v4, p0, v1

    and-int/lit16 v3, v4, 0xff

    .line 68
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 70
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 74
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static byteArrayToInt([B)I
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 26
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/yulore/android/common/util/ByteUtils;->byteArrayToInt([BII)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BII)I
    .locals 10
    .param p0, "b"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v9, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Null pointer Exception from byte array to int"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 34
    :cond_0
    if-le p2, p1, :cond_1

    sub-int v7, p2, p1

    array-length v8, p0

    if-le v7, v8, :cond_2

    .line 35
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Illegal Arguments,to < from"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 37
    :cond_2
    const/4 v7, 0x4

    new-array v2, v7, [B

    .line 38
    .local v2, "result":[B
    array-length v7, v2

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    add-int/lit8 v1, p2, -0x1

    .line 39
    .local v1, "j":I
    :goto_0
    if-ltz v0, :cond_4

    .line 40
    if-lt v1, p1, :cond_3

    .line 41
    aget-byte v7, p0, v1

    aput-byte v7, v2, v0

    .line 39
    :goto_1
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 43
    :cond_3
    aput-byte v9, v2, v0

    goto :goto_1

    .line 45
    :cond_4
    aget-byte v7, v2, v9

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v3, v7, 0x18

    .line 46
    .local v3, "v0":I
    const/4 v7, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v4, v7, 0x10

    .line 47
    .local v4, "v1":I
    const/4 v7, 0x2

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v5, v7, 0x8

    .line 48
    .local v5, "v2":I
    const/4 v7, 0x3

    aget-byte v7, v2, v7

    and-int/lit16 v6, v7, 0xff

    .line 49
    .local v6, "v3":I
    add-int v7, v3, v4

    add-int/2addr v7, v5

    add-int/2addr v7, v6

    return v7
.end method

.method public static compare([B[B)I
    .locals 5
    .param p0, "src"    # [B
    .param p1, "dest"    # [B

    .prologue
    const/4 v1, -0x1

    .line 95
    if-nez p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    if-eqz p1, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "flag":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 105
    aget-byte v4, p0, v2

    and-int/lit16 v3, v4, 0xff

    .line 106
    .local v3, "svi":I
    aget-byte v4, p1, v2

    and-int/lit16 v0, v4, 0xff

    .line 108
    .local v0, "dvi":I
    if-le v3, v0, :cond_2

    .line 109
    const/4 v1, 0x1

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    if-ge v3, v0, :cond_3

    .line 112
    const/4 v1, -0x1

    .line 113
    goto :goto_0

    .line 104
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static compress([B)[B
    .locals 5
    .param p0, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v2, 0x0

    .line 155
    .local v2, "gzip":Ljava/util/zip/GZIPOutputStream;
    const/4 v0, 0x0

    .line 157
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v3, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 161
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 163
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v4

    .line 166
    if-eqz v3, :cond_0

    .line 167
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 169
    :cond_0
    if-eqz v1, :cond_1

    .line 170
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 163
    :cond_1
    return-object v4

    .line 166
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_0
    move-exception v4

    :goto_0
    if-eqz v2, :cond_2

    .line 167
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 169
    :cond_2
    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_3
    throw v4

    .line 166
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_2
    move-exception v4

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v2, v3

    .end local v3    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gzip":Ljava/util/zip/GZIPOutputStream;
    goto :goto_0
.end method

.method public static decompress([B)[B
    .locals 8
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v3, 0x0

    .line 123
    .local v3, "gzip":Ljava/util/zip/GZIPInputStream;
    const/4 v0, 0x0

    .line 125
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v6}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 130
    .end local v3    # "gzip":Ljava/util/zip/GZIPInputStream;
    .local v4, "gzip":Ljava/util/zip/GZIPInputStream;
    const/4 v5, 0x0

    .line 131
    .local v5, "len":I
    const/16 v6, 0x400

    :try_start_2
    new-array v2, v6, [B

    .line 133
    .local v2, "data":[B
    :goto_0
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v4, v2, v6, v7}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 134
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 143
    .end local v2    # "data":[B
    :catchall_0
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v3, v4

    .end local v4    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v5    # "len":I
    .restart local v3    # "gzip":Ljava/util/zip/GZIPInputStream;
    :goto_1
    if-eqz v3, :cond_0

    .line 144
    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 146
    :cond_0
    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    throw v6

    .line 137
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v4    # "gzip":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "len":I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 138
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 140
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 143
    if-eqz v4, :cond_3

    .line 144
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 146
    :cond_3
    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 140
    :cond_4
    return-object v6

    .line 143
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v4    # "gzip":Ljava/util/zip/GZIPInputStream;
    .end local v5    # "len":I
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "gzip":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v6

    goto :goto_1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 79
    const/4 v3, 0x0

    .line 91
    :cond_0
    return-object v3

    .line 81
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 82
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Input string must contain an even number of characters"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 85
    .local v3, "result":[B
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 86
    .local v1, "enc":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v0, "curr":Ljava/lang/StringBuilder;
    aget-char v4, v1, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-char v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    div-int/lit8 v4, v2, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 86
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method public static final intToByteArray(I)[B
    .locals 3
    .param p0, "value"    # I

    .prologue
    .line 20
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
    .param p0, "value"    # I

    .prologue
    .line 16
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
