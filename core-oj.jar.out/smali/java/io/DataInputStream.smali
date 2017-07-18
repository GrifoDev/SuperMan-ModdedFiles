.class public Ljava/io/DataInputStream;
.super Ljava/io/FilterInputStream;
.source "DataInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private bytearr:[B

.field private chararr:[C

.field private lineBuffer:[C

.field private readBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/16 v1, 0x50

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-array v0, v1, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->bytearr:[B

    new-array v0, v1, [C

    iput-object v0, p0, Ljava/io/DataInputStream;->chararr:[C

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    return-void
.end method

.method public static final readUTF(Ljava/io/DataInput;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v13, 0x0

    const/16 v12, 0x80

    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v9

    const/4 v0, 0x0

    const/4 v4, 0x0

    instance-of v10, p0, Ljava/io/DataInputStream;

    if-eqz v10, :cond_2

    move-object v8, p0

    check-cast v8, Ljava/io/DataInputStream;

    iget-object v10, v8, Ljava/io/DataInputStream;->bytearr:[B

    array-length v10, v10

    if-ge v10, v9, :cond_0

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [B

    iput-object v10, v8, Ljava/io/DataInputStream;->bytearr:[B

    mul-int/lit8 v10, v9, 0x2

    new-array v10, v10, [C

    iput-object v10, v8, Ljava/io/DataInputStream;->chararr:[C

    :cond_0
    iget-object v4, v8, Ljava/io/DataInputStream;->chararr:[C

    iget-object v0, v8, Ljava/io/DataInputStream;->bytearr:[B

    :goto_0
    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-interface {p0, v0, v13, v9}, Ljava/io/DataInput;->readFully([BII)V

    move v6, v5

    :goto_1
    if-ge v7, v9, :cond_1

    aget-byte v10, v0, v7

    and-int/lit16 v1, v10, 0xff

    const/16 v10, 0x7f

    if-le v1, v10, :cond_3

    :cond_1
    :goto_2
    if-ge v7, v9, :cond_9

    aget-byte v10, v0, v7

    and-int/lit16 v1, v10, 0xff

    shr-int/lit8 v10, v1, 0x4

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    new-instance v10, Ljava/io/UTFDataFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "malformed input around byte "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    new-array v0, v9, [B

    new-array v4, v9, [C

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v6, 0x1

    int-to-char v10, v1

    aput-char v10, v4, v6

    move v6, v5

    goto :goto_1

    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v6, 0x1

    int-to-char v10, v1

    aput-char v10, v4, v6

    :goto_3
    move v6, v5

    goto :goto_2

    :pswitch_2
    add-int/lit8 v7, v7, 0x2

    if-le v7, v9, :cond_4

    new-instance v10, Ljava/io/UTFDataFormatException;

    const-string/jumbo v11, "malformed input: partial character at end"

    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    add-int/lit8 v10, v7, -0x1

    aget-byte v2, v0, v10

    and-int/lit16 v10, v2, 0xc0

    if-eq v10, v12, :cond_5

    new-instance v10, Ljava/io/UTFDataFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "malformed input around byte "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_5
    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v10, v1, 0x1f

    shl-int/lit8 v10, v10, 0x6

    and-int/lit8 v11, v2, 0x3f

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v4, v6

    goto :goto_3

    :pswitch_3
    add-int/lit8 v7, v7, 0x3

    if-le v7, v9, :cond_6

    new-instance v10, Ljava/io/UTFDataFormatException;

    const-string/jumbo v11, "malformed input: partial character at end"

    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_6
    add-int/lit8 v10, v7, -0x2

    aget-byte v2, v0, v10

    add-int/lit8 v10, v7, -0x1

    aget-byte v3, v0, v10

    and-int/lit16 v10, v2, 0xc0

    if-ne v10, v12, :cond_7

    and-int/lit16 v10, v3, 0xc0

    if-eq v10, v12, :cond_8

    :cond_7
    new-instance v10, Ljava/io/UTFDataFormatException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "malformed input around byte "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8
    add-int/lit8 v5, v6, 0x1

    and-int/lit8 v10, v1, 0xf

    shl-int/lit8 v10, v10, 0xc

    and-int/lit8 v11, v2, 0x3f

    shl-int/lit8 v11, v11, 0x6

    or-int/2addr v10, v11

    and-int/lit8 v11, v3, 0x3f

    shl-int/lit8 v11, v11, 0x0

    or-int/2addr v10, v11

    int-to-char v10, v10

    aput-char v10, v4, v6

    goto/16 :goto_3

    :cond_9
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v4, v13, v6}, Ljava/lang/String;-><init>([CII)V

    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public final readBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    return-void
.end method

.method public final readFully([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p3, :cond_0

    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    add-int v3, p2, v1

    sub-int v4, p3, v1

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_1

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_1
    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v1

    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    iget-object v4, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v3

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method public final readLine()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    if-nez v0, :cond_0

    const/16 v6, 0x80

    new-array v0, v6, [C

    iput-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    :cond_0
    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_1

    add-int/lit16 v6, v3, 0x80

    new-array v0, v6, [C

    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/lit8 v5, v6, -0x1

    iget-object v6, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    invoke-static {v6, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v0, p0, Ljava/io/DataInputStream;->lineBuffer:[C

    :cond_1
    add-int/lit8 v4, v3, 0x1

    int-to-char v6, v1

    aput-char v6, v0, v3

    move v3, v4

    goto :goto_0

    :sswitch_0
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v6, 0xa

    if-eq v2, v6, :cond_3

    if-eq v2, v9, :cond_3

    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    instance-of v6, v6, Ljava/io/PushbackInputStream;

    if-nez v6, :cond_2

    new-instance v6, Ljava/io/PushbackInputStream;

    iget-object v7, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-direct {v6, v7}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    :cond_2
    iget-object v6, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    check-cast v6, Ljava/io/PushbackInputStream;

    invoke-virtual {v6, v2}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_3
    :sswitch_1
    if-ne v1, v9, :cond_4

    if-nez v3, :cond_4

    return-object v10

    :cond_4
    invoke-static {v0, v8, v3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0xa -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    iget-object v0, p0, Ljava/io/DataInputStream;->readBuffer:[B

    aget-byte v0, v0, v2

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x4

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Ljava/io/DataInputStream;->readBuffer:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    :cond_0
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public final skipBytes(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Ljava/io/DataInputStream;->in:Ljava/io/InputStream;

    sub-int v3, p1, v1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    if-lez v0, :cond_0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method
