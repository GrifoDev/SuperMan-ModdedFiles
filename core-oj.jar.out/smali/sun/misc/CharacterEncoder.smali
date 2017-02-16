.class public abstract Lsun/misc/CharacterEncoder;
.super Ljava/lang/Object;
.source "CharacterEncoder.java"


# instance fields
.field protected pStream:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBytes(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 221
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 223
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 224
    array-length v2, v1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 225
    move-object v0, v1

    .line 226
    .local v0, "buf":[B
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 230
    .end local v0    # "buf":[B
    .end local v1    # "tmp":[B
    :cond_0
    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    new-array v0, v2, [B

    .line 241
    .restart local v0    # "buf":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 244
    .end local v0    # "buf":[B
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract bytesPerAtom()I
.end method

.method protected abstract bytesPerLine()I
.end method

.method public encode(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 267
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encode([B)Ljava/lang/String;
    .locals 6
    .param p1, "aBuffer"    # [B

    .prologue
    .line 187
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 188
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 189
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    const/4 v3, 0x0

    .line 191
    .local v3, "retVal":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 193
    const-string/jumbo v4, "8859_1"

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 198
    .local v3, "retVal":Ljava/lang/String;
    return-object v3

    .line 194
    .local v3, "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Error;

    const-string/jumbo v5, "CharacterEncoder.encode internal error"

    invoke-direct {v4, v5}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v2, v3, [B

    .line 147
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 150
    :goto_0
    invoke-virtual {p0, p1, v2}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 151
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    .line 169
    :cond_0
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 142
    return-void

    .line 154
    :cond_1
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 155
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 157
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, v1, :cond_2

    .line 158
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 155
    :goto_2
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 160
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    .line 163
    :cond_3
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 166
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public encode(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 256
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode([BLjava/io/OutputStream;)V

    .line 254
    return-void
.end method

.method public encode([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 179
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encode(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 177
    return-void
.end method

.method protected abstract encodeAtom(Ljava/io/OutputStream;[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 351
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lsun/misc/CharacterEncoder;->encodeBuffer([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public encodeBuffer([B)Ljava/lang/String;
    .locals 5
    .param p1, "aBuffer"    # [B

    .prologue
    .line 320
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 321
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 323
    .local v1, "inStream":Ljava/io/ByteArrayInputStream;
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 324
    :catch_0
    move-exception v0

    .line 326
    .local v0, "IOException":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Error;

    const-string/jumbo v4, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "outStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    new-array v2, v3, [B

    .line 282
    .local v2, "tmpbuffer":[B
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferPrefix(Ljava/io/OutputStream;)V

    .line 285
    :cond_0
    invoke-virtual {p0, p1, v2}, Lsun/misc/CharacterEncoder;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 286
    .local v1, "numBytes":I
    if-nez v1, :cond_1

    .line 302
    :goto_0
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeBufferSuffix(Ljava/io/OutputStream;)V

    .line 277
    return-void

    .line 289
    :cond_1
    invoke-virtual {p0, p2, v1}, Lsun/misc/CharacterEncoder;->encodeLinePrefix(Ljava/io/OutputStream;I)V

    .line 290
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 291
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v3, v0

    if-gt v3, v1, :cond_2

    .line 292
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    .line 290
    :goto_2
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerAtom()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 294
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, p2, v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeAtom(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    .line 297
    :cond_3
    invoke-virtual {p0, p2}, Lsun/misc/CharacterEncoder;->encodeLineSuffix(Ljava/io/OutputStream;)V

    .line 298
    invoke-virtual {p0}, Lsun/misc/CharacterEncoder;->bytesPerLine()I

    move-result v3

    if-ge v1, v3, :cond_0

    goto :goto_0
.end method

.method public encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lsun/misc/CharacterEncoder;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 340
    .local v0, "buf":[B
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer([BLjava/io/OutputStream;)V

    .line 338
    return-void
.end method

.method public encodeBuffer([BLjava/io/OutputStream;)V
    .locals 1
    .param p1, "aBuffer"    # [B
    .param p2, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 312
    .local v0, "inStream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0, p2}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 310
    return-void
.end method

.method protected encodeBufferPrefix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    .line 91
    return-void
.end method

.method protected encodeBufferSuffix(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    return-void
.end method

.method protected encodeLinePrefix(Ljava/io/OutputStream;I)V
    .locals 0
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .param p2, "aLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method protected encodeLineSuffix(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "aStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lsun/misc/CharacterEncoder;->pStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 112
    return-void
.end method

.method protected readFully(Ljava/io/InputStream;[B)I
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 128
    .local v1, "q":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 129
    return v0

    .line 130
    :cond_0
    int-to-byte v2, v1

    aput-byte v2, p2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v1    # "q":I
    :cond_1
    array-length v2, p2

    return v2
.end method
