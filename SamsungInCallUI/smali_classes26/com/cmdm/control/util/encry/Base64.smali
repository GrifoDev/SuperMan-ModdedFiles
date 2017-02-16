.class public Lcom/cmdm/control/util/encry/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 486
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 489
    return-void

    .line 487
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    const-string v3, "ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64;->decode([B)[B

    move-result-object v1

    .line 126
    .local v1, "decoded":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    return-object v3

    .line 122
    .end local v0    # "bytes":[B
    .end local v1    # "decoded":[B
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ASCII is not supported!"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 151
    :try_start_0
    const-string v3, "ASCII"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64;->decode([B)[B

    move-result-object v1

    .line 157
    .local v1, "decoded":[B
    :try_start_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 152
    .end local v0    # "bytes":[B
    .end local v1    # "decoded":[B
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ASCII is not supported!"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 158
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "bytes":[B
    .restart local v1    # "decoded":[B
    :catch_1
    move-exception v2

    .line 159
    .restart local v2    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported charset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static decode(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 450
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 452
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v1, v3}, Lcom/cmdm/control/util/encry/Base64;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 454
    if-eqz v3, :cond_0

    .line 456
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 461
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 463
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 469
    :cond_1
    :goto_1
    return-void

    .line 453
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    .line 454
    :goto_2
    if-eqz v2, :cond_2

    .line 456
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 461
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 463
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 468
    :cond_3
    :goto_4
    throw v4

    .line 457
    :catch_0
    move-exception v5

    goto :goto_3

    .line 464
    :catch_1
    move-exception v5

    goto :goto_4

    .line 457
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 464
    :catch_3
    move-exception v4

    goto :goto_1

    .line 453
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/cmdm/control/util/encry/Base64InputStream;

    invoke-direct {v0, p0}, Lcom/cmdm/control/util/encry/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, Lcom/cmdm/control/util/encry/Base64;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 347
    return-void
.end method

.method public static decode([B)[B
    .locals 5
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 248
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 250
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {v1, v2}, Lcom/cmdm/control/util/encry/Base64;->decode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 260
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 265
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected I/O error"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 255
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 260
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 264
    :goto_3
    throw v3

    .line 256
    :catch_1
    move-exception v4

    goto :goto_2

    .line 261
    :catch_2
    move-exception v4

    goto :goto_3

    .line 256
    :catch_3
    move-exception v3

    goto :goto_0

    .line 261
    :catch_4
    move-exception v3

    goto :goto_1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 61
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64;->encode([B)[B

    move-result-object v2

    .line 63
    .local v2, "encoded":[B
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ASCII is not supported!"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/cmdm/control/util/encry/Base64;->encode([B)[B

    move-result-object v2

    .line 97
    .local v2, "encoded":[B
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v4, "ASCII"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v3

    .line 92
    .end local v0    # "bytes":[B
    .end local v2    # "encoded":[B
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported charset: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 98
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "bytes":[B
    .restart local v2    # "encoded":[B
    :catch_1
    move-exception v1

    .line 99
    .restart local v1    # "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ASCII is not supported!"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static encode(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 411
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v1, v3}, Lcom/cmdm/control/util/encry/Base64;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 415
    if-eqz v3, :cond_0

    .line 417
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 422
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 424
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 430
    :cond_1
    :goto_1
    return-void

    .line 414
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    .line 415
    :goto_2
    if-eqz v2, :cond_2

    .line 417
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 422
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 424
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 429
    :cond_3
    :goto_4
    throw v4

    .line 418
    :catch_0
    move-exception v5

    goto :goto_3

    .line 425
    :catch_1
    move-exception v5

    goto :goto_4

    .line 418
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 425
    :catch_3
    move-exception v4

    goto :goto_1

    .line 414
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static encode(Ljava/io/File;Ljava/io/File;I)V
    .locals 6
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .param p2, "wrapAt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 372
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 374
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v1, v3, p2}, Lcom/cmdm/control/util/encry/Base64;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 376
    if-eqz v3, :cond_0

    .line 378
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 383
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 385
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 391
    :cond_1
    :goto_1
    return-void

    .line 375
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    .line 376
    :goto_2
    if-eqz v2, :cond_2

    .line 378
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 383
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 385
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 390
    :cond_3
    :goto_4
    throw v4

    .line 379
    :catch_0
    move-exception v5

    goto :goto_3

    .line 386
    :catch_1
    move-exception v5

    goto :goto_4

    .line 379
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_2
    move-exception v4

    goto :goto_0

    .line 386
    :catch_3
    move-exception v4

    goto :goto_1

    .line 375
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cmdm/control/util/encry/Base64;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    .line 291
    return-void
.end method

.method public static encode(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 1
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "wrapAt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/cmdm/control/util/encry/Base64OutputStream;

    invoke-direct {v0, p1, p2}, Lcom/cmdm/control/util/encry/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 320
    .local v0, "aux":Lcom/cmdm/control/util/encry/Base64OutputStream;
    invoke-static {p0, v0}, Lcom/cmdm/control/util/encry/Base64;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 321
    invoke-virtual {v0}, Lcom/cmdm/control/util/encry/Base64OutputStream;->commit()V

    .line 322
    return-void
.end method

.method public static encode([B)[B
    .locals 1
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cmdm/control/util/encry/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[B
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "wrapAt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 209
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v2, "outputStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {v1, v2, p1}, Lcom/cmdm/control/util/encry/Base64;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 221
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 226
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unexpected I/O error"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 216
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 221
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 225
    :goto_3
    throw v3

    .line 217
    :catch_1
    move-exception v4

    goto :goto_2

    .line 222
    :catch_2
    move-exception v4

    goto :goto_3

    .line 217
    :catch_3
    move-exception v3

    goto :goto_0

    .line 222
    :catch_4
    move-exception v3

    goto :goto_1
.end method
