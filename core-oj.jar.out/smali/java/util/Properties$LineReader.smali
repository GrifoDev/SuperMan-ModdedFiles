.class Ljava/util/Properties$LineReader;
.super Ljava/lang/Object;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineReader"
.end annotation


# instance fields
.field inByteBuf:[B

.field inCharBuf:[C

.field inLimit:I

.field inOff:I

.field inStream:Ljava/io/InputStream;

.field lineBuf:[C

.field reader:Ljava/io/Reader;

.field final synthetic this$0:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    iput-object p2, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/io/Reader;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    iput-object p2, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    return-void
.end method


# virtual methods
.method readLine()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :cond_0
    :goto_0
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-lt v11, v12, :cond_4

    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v11, :cond_2

    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    move-result v11

    :goto_1
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    const/4 v11, 0x0

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-gtz v11, :cond_4

    if-eqz v5, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    const/4 v11, -0x1

    return v11

    :cond_2
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    goto :goto_1

    :cond_3
    return v5

    :cond_4
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-eqz v11, :cond_9

    iget-object v11, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    int-to-char v2, v11

    :goto_2
    if-eqz v9, :cond_5

    const/4 v9, 0x0

    const/16 v11, 0xa

    if-eq v2, v11, :cond_0

    :cond_5
    if-eqz v10, :cond_7

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_0

    if-nez v0, :cond_6

    const/16 v11, 0xd

    if-eq v2, v11, :cond_0

    const/16 v11, 0xa

    if-eq v2, v11, :cond_0

    :cond_6
    const/4 v10, 0x0

    const/4 v0, 0x0

    :cond_7
    if-eqz v4, :cond_a

    const/4 v4, 0x0

    const/16 v11, 0x23

    if-eq v2, v11, :cond_8

    const/16 v11, 0x21

    if-ne v2, v11, :cond_a

    :cond_8
    const/4 v3, 0x1

    goto :goto_0

    :cond_9
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-char v2, v11, v12

    goto :goto_2

    :cond_a
    const/16 v11, 0xa

    if-eq v2, v11, :cond_f

    const/16 v11, 0xd

    if-eq v2, v11, :cond_f

    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    add-int/lit8 v6, v5, 0x1

    aput-char v2, v11, v5

    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v11, v11

    if-ne v6, v11, :cond_c

    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v11, v11

    mul-int/lit8 v7, v11, 0x2

    if-gez v7, :cond_b

    const v7, 0x7fffffff

    :cond_b
    new-array v1, v7, [C

    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    iget-object v12, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v13, v1, v14, v12}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v1, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    :cond_c
    const/16 v11, 0x5c

    if-ne v2, v11, :cond_e

    if-eqz v8, :cond_d

    const/4 v8, 0x0

    :goto_3
    move v5, v6

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x1

    goto :goto_3

    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    :cond_f
    if-nez v3, :cond_10

    if-nez v5, :cond_11

    :cond_10
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_11
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-lt v11, v12, :cond_13

    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v11, :cond_12

    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    move-result v11

    :goto_4
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    const/4 v11, 0x0

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-gtz v11, :cond_13

    return v5

    :cond_12
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    goto :goto_4

    :cond_13
    if-eqz v8, :cond_14

    add-int/lit8 v5, v5, -0x1

    const/4 v10, 0x1

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/16 v11, 0xd

    if-ne v2, v11, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_14
    return v5
.end method
