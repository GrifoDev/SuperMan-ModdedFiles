.class Ljava/io/ObjectInputStream$BlockDataInputStream;
.super Ljava/io/InputStream;
.source "ObjectInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockDataInputStream"
.end annotation


# static fields
.field private static final CHAR_BUF_SIZE:I = 0x100

.field private static final HEADER_BLOCKED:I = -0x2

.field private static final MAX_BLOCK_SIZE:I = 0x400

.field private static final MAX_HEADER_SIZE:I = 0x5


# instance fields
.field private blkmode:Z

.field private final buf:[B

.field private final cbuf:[C

.field private final din:Ljava/io/DataInputStream;

.field private end:I

.field private final hbuf:[B

.field private final in:Ljava/io/ObjectInputStream$PeekInputStream;

.field private pos:I

.field final synthetic this$0:Ljava/io/ObjectInputStream;

.field private unread:I


# direct methods
.method constructor <init>(Ljava/io/ObjectInputStream;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/4 v0, 0x5

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/16 v0, 0x100

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    iput-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    new-instance v0, Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream$PeekInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    return-void
.end method

.method private readBlockHeader(Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, -0x2

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-get1(Ljava/io/ObjectInputStream;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v6

    :pswitch_0
    :try_start_0
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->this$0:Ljava/io/ObjectInputStream;

    invoke-static {v4}, Ljava/io/ObjectInputStream;->-wrap3(Ljava/io/ObjectInputStream;)V

    :cond_0
    if-eqz p1, :cond_1

    const v0, 0x7fffffff

    :goto_0
    if-nez v0, :cond_2

    return v5

    :cond_1
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v4}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    if-ltz v3, :cond_7

    const/16 v4, 0x70

    if-lt v3, v4, :cond_3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_7

    :cond_3
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string/jumbo v5, "invalid type code: %02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string/jumbo v5, "unexpected EOF while reading block data header"

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_2
    if-ge v0, v7, :cond_4

    return v5

    :cond_4
    :try_start_1
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    return v4

    :pswitch_3
    const/4 v4, 0x5

    if-ge v0, v4, :cond_5

    return v5

    :cond_5
    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->hbuf:[B

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    move-result v2

    if-gez v2, :cond_6

    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "illegal block data header length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return v2

    :cond_7
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private readUTFBody(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v2, :cond_0

    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_5

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int v0, v2, v3

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0, v1, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFSpan(Ljava/lang/StringBuilder;J)J

    move-result-wide v2

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, v1, p1, p2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFChar(Ljava/lang/StringBuilder;J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr p1, v2

    goto :goto_0

    :cond_3
    if-lez v0, :cond_4

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_4
    iput v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    const-wide/16 v2, 0x400

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readUTFChar(Ljava/lang/StringBuilder;J)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x2

    const/16 v6, 0x80

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v0, v3, 0xff

    shr-int/lit8 v3, v0, 0x4

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    :pswitch_1
    int-to-char v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    return v3

    :pswitch_2
    cmp-long v3, p2, v8

    if-gez v3, :cond_0

    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v6, :cond_1

    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    :cond_1
    and-int/lit8 v3, v0, 0x1f

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x0

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    return v3

    :pswitch_3
    const-wide/16 v4, 0x3

    cmp-long v3, p2, v4

    if-gez v3, :cond_3

    cmp-long v3, p2, v8

    if-nez v3, :cond_2

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    :cond_2
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    :cond_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v1

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readByte()B

    move-result v2

    and-int/lit16 v3, v1, 0xc0

    if-ne v3, v6, :cond_4

    and-int/lit16 v3, v2, 0xc0

    if-eq v3, v6, :cond_5

    :cond_4
    new-instance v3, Ljava/io/UTFDataFormatException;

    invoke-direct {v3}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v3

    :cond_5
    and-int/lit8 v3, v0, 0xf

    shl-int/lit8 v3, v3, 0xc

    and-int/lit8 v4, v1, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v2, 0x3f

    shl-int/lit8 v4, v4, 0x0

    or-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    return v3

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

.method private readUTFSpan(Ljava/lang/StringBuilder;J)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v13

    const/16 v13, 0x100

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    int-to-long v14, v2

    cmp-long v12, p2, v14

    if-lez v12, :cond_1

    add-int/lit8 v12, v2, -0x2

    :goto_0
    add-int v11, v13, v12

    const/4 v9, 0x0

    move v7, v6

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    if-ge v12, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v12, v12, v13

    and-int/lit16 v3, v12, 0xff

    shr-int/lit8 v12, v3, 0x4

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v8

    move v6, v7

    :goto_2
    const/4 v9, 0x1

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_9

    :cond_0
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    :cond_1
    move-wide/from16 v0, p2

    long-to-int v12, v0

    goto :goto_0

    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v7, 0x1

    int-to-char v13, v3

    :try_start_2
    aput-char v13, v12, v7
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    move v7, v6

    goto :goto_1

    :pswitch_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v14, v13, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v4, v12, v13

    and-int/lit16 v12, v4, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_3

    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v12

    move v6, v7

    :goto_4
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v13, v10

    int-to-long v14, v13

    cmp-long v13, v14, p2

    if-lez v13, :cond_a

    :cond_2
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v13, v3, 0x1f

    shl-int/lit8 v13, v13, 0x6

    and-int/lit8 v14, v4, 0x3f

    shl-int/lit8 v14, v14, 0x0

    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_5
    aput-char v13, v12, v7
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v8

    goto :goto_2

    :pswitch_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v13, v13, 0x1

    aget-byte v5, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    move-object/from16 v0, p0

    iget v13, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v13, v13, 0x0

    aget-byte v4, v12, v13

    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    and-int/lit16 v12, v4, 0xc0

    const/16 v13, 0x80

    if-ne v12, v13, :cond_4

    and-int/lit16 v12, v5, 0xc0

    const/16 v13, 0x80

    if-eq v12, v13, :cond_5

    :cond_4
    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v13, v3, 0xf

    shl-int/lit8 v13, v13, 0xc

    and-int/lit8 v14, v4, 0x3f

    shl-int/lit8 v14, v14, 0x6

    or-int/2addr v13, v14

    and-int/lit8 v14, v5, 0x3f

    shl-int/lit8 v14, v14, 0x0

    or-int/2addr v13, v14

    int-to-char v13, v13

    :try_start_7
    aput-char v13, v12, v7
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v12

    goto :goto_4

    :cond_6
    if-nez v9, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    cmp-long v12, v12, p2

    if-lez v12, :cond_8

    :cond_7
    move-wide/from16 v0, p2

    long-to-int v12, v0

    add-int/2addr v12, v10

    move-object/from16 v0, p0

    iput v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    new-instance v12, Ljava/io/UTFDataFormatException;

    invoke-direct {v12}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v12

    :cond_8
    move v6, v7

    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->cbuf:[C

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v12, v0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v12, v10

    int-to-long v12, v12

    return-wide v12

    :cond_a
    throw v12

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

.method private refill()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v6, 0x0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v2, :cond_2

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    const/16 v5, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_1

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    sub-int/2addr v2, v1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    :goto_0
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-eq v2, v3, :cond_0

    return-void

    :cond_1
    new-instance v2, Ljava/io/StreamCorruptedException;

    const-string/jumbo v3, "unexpected EOF in middle of data block"

    invoke-direct {v2, v3}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    throw v0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    const/4 v2, 0x0

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v3, :cond_4

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-nez v3, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readBlockHeader(Z)I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    :cond_1
    :goto_0
    :pswitch_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    if-lez v3, :cond_3

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v3

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v3, :cond_2

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    :cond_2
    return v2

    :pswitch_1
    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    const/4 v3, -0x1

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream$PeekInputStream;->available()I

    move-result v2

    return v2

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_0

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    const/4 v0, -0x1

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    :cond_0
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->close()V

    return-void
.end method

.method currentBlockRemaining()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v1, :cond_0

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    add-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method getBlockDataMode()Z
    .locals 1

    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    return v0
.end method

.method peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    :cond_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->peek()I

    move-result v0

    return v0
.end method

.method peekByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->peek()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    :cond_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    return v0
.end method

.method read([BIIZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p3, :cond_0

    return v4

    :cond_0
    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v1, :cond_2

    const/4 v1, -0x1

    return v1

    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return v0

    :cond_3
    if-eqz p4, :cond_5

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    const/16 v3, 0x400

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_4
    return v0

    :cond_5
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v1

    return v1
.end method

.method public readBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

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

.method readBooleans([ZII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    add-int v0, p2, p3

    move v1, p2

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    sub-int v4, v0, v1

    const/16 v5, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v4, v5, v7, v2}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    add-int v3, v1, v2

    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    :goto_1
    if-ge v1, v3, :cond_0

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getBoolean([BI)Z

    move-result v4

    aput-boolean v4, p1, v1

    move v1, p2

    goto :goto_1

    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    aput-boolean v4, p1, v1

    move v1, p2

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    add-int/2addr v4, v1

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    int-to-byte v1, v0

    return v1
.end method

.method public readChar()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getChar([BI)C

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return v0

    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readChar()C

    move-result v1

    return v1
.end method

.method readChars([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    add-int v0, p2, p3

    move v1, p2

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    sub-int v4, v0, v1

    const/16 v5, 0x200

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    add-int v3, v1, v2

    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    :goto_1
    if-ge v1, v3, :cond_0

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getChar([BI)C

    move-result v4

    aput-char v4, p1, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    goto :goto_1

    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readChar()C

    move-result v4

    aput-char v4, p1, v1

    move v1, p2

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public readDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v2, :cond_1

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    :cond_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v2, v3}, Ljava/io/Bits;->getDouble([BI)D

    move-result-wide v0

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return-wide v0

    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    if-ge v2, v5, :cond_0

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    return-wide v2
.end method

.method readDoubles([DII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v3, :cond_0

    sub-int v3, v0, v1

    const/16 v4, 0x80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v2, 0x3

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    :goto_1
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v3, v4, p1, v1, v2}, Ljava/io/ObjectInputStream;->-wrap1([BI[DII)V

    add-int p2, v1, v2

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v4, v2, 0x3

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    goto :goto_0

    :cond_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v3, v4

    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    add-int/lit8 p2, v1, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v1

    move v1, p2

    goto :goto_0

    :cond_1
    sub-int v3, v0, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public readFloat()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getFloat([BI)F

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return v0

    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    return v1
.end method

.method readFloats([FII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_2

    iget-boolean v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v3, :cond_0

    sub-int v3, v0, v1

    const/16 v4, 0x100

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v5, v2, 0x2

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    iput v6, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    :goto_1
    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v3, v4, p1, v1, v2}, Ljava/io/ObjectInputStream;->-wrap2([BI[FII)V

    add-int p2, v1, v2

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    shl-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    goto :goto_0

    :cond_0
    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v3, v4

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    add-int/lit8 p2, v1, 0x1

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    aput v3, p1, v1

    move v1, p2

    goto :goto_0

    :cond_1
    sub-int v3, v0, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public readFully([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readFully([BIIZ)V

    return-void
.end method

.method public readFully([BIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read([BIIZ)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getInt([BI)I

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return v0

    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    return v1
.end method

.method readInts([III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    add-int v0, p2, p3

    move v1, p2

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    sub-int v4, v0, v1

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x2

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    add-int v3, v1, v2

    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    :goto_1
    if-ge v1, v3, :cond_0

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getInt([BI)I

    move-result v4

    aput v4, p1, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    goto :goto_1

    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    aput v4, p1, v1

    move v1, p2

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-boolean v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v2, :cond_1

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    :cond_0
    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v2, v3}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v0

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return-wide v0

    :cond_1
    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v2, v3

    if-ge v2, v5, :cond_0

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    return-wide v2
.end method

.method readLongUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readLong()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readLongs([JII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    add-int v0, p2, p3

    move v1, p2

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    sub-int v4, v0, v1

    const/16 v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x3

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    add-int v3, v1, v2

    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    :goto_1
    if-ge v1, v3, :cond_0

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getLong([BI)J

    move-result-wide v4

    aput-wide v4, p1, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x8

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    goto :goto_1

    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, p1, v1

    move v1, p2

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public readShort()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v0

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return v0

    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    return v1
.end method

.method readShorts([SII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    add-int v0, p2, p3

    move v1, p2

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_3

    iget-boolean v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v4, :cond_1

    sub-int v4, v0, v1

    const/16 v5, 0x200

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    shl-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    add-int v3, v1, v2

    iput v7, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    :goto_1
    if-ge v1, v3, :cond_0

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v4, v5}, Ljava/io/Bits;->getShort([BI)S

    move-result v4

    aput-short v4, p1, v1

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    move v1, p2

    goto :goto_1

    :cond_1
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    add-int/lit8 p2, v1, 0x1

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    aput-short v4, p1, v1

    move v1, p2

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v5, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_1

    :cond_3
    return-void
.end method

.method public readUTF()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUnsignedShort()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Ljava/io/ObjectInputStream$BlockDataInputStream;->readUTFBody(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_0
    return v0
.end method

.method public readUnsignedShort()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v1, :cond_1

    iput v3, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ObjectInputStream$PeekInputStream;->readFully([BII)V

    :cond_0
    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    invoke-static {v1, v2}, Ljava/io/Bits;->getShort([BI)S

    move-result v1

    const v2, 0xffff

    and-int v0, v1, v2

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    return v0

    :cond_1
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v2

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    return v1
.end method

.method setBlockDataMode(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-ne v1, p1, :cond_0

    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    return v0

    :cond_0
    if-eqz p1, :cond_2

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iput v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->unread:I

    :cond_1
    iput-boolean p1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v2, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ge v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unread block data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    move-wide v2, p1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-boolean v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    :cond_0
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-gez v1, :cond_2

    :cond_1
    sub-long v4, p1, v2

    return-wide v4

    :cond_2
    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    iget v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iget v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->pos:I

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x400

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    iget-object v1, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->in:Ljava/io/ObjectInputStream$PeekInputStream;

    iget-object v4, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->buf:[B

    invoke-virtual {v1, v4, v6, v0}, Ljava/io/ObjectInputStream$PeekInputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_1

    int-to-long v4, v0

    sub-long/2addr v2, v4

    goto :goto_0
.end method

.method skipBlockData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->blkmode:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not in block data mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->end:I

    if-ltz v0, :cond_1

    invoke-direct {p0}, Ljava/io/ObjectInputStream$BlockDataInputStream;->refill()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public skipBytes(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/ObjectInputStream$BlockDataInputStream;->din:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v0

    return v0
.end method
