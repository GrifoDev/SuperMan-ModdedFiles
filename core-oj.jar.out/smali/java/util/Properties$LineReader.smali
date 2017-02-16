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
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "inStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 404
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 417
    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 418
    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 405
    iput-object p2, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    .line 406
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    .line 404
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/io/Reader;)V
    .locals 2
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 409
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 417
    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 418
    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 410
    iput-object p2, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    .line 411
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    .line 409
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

    .prologue
    .line 423
    const/4 v5, 0x0

    .line 424
    .local v5, "len":I
    const/4 v2, 0x0

    .line 426
    .local v2, "c":C
    const/4 v10, 0x1

    .line 427
    .local v10, "skipWhiteSpace":Z
    const/4 v3, 0x0

    .line 428
    .local v3, "isCommentLine":Z
    const/4 v4, 0x1

    .line 429
    .local v4, "isNewLine":Z
    const/4 v0, 0x0

    .line 430
    .local v0, "appendedLineBegin":Z
    const/4 v8, 0x0

    .line 431
    .local v8, "precedingBackslash":Z
    const/4 v9, 0x0

    .line 434
    .end local v2    # "c":C
    .local v9, "skipLF":Z
    :cond_0
    :goto_0
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-lt v11, v12, :cond_4

    .line 435
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v11, :cond_2

    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    move-result v11

    :goto_1
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 437
    const/4 v11, 0x0

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 438
    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-gtz v11, :cond_4

    .line 439
    if-eqz v5, :cond_1

    if-eqz v3, :cond_3

    .line 440
    :cond_1
    const/4 v11, -0x1

    return v11

    .line 436
    :cond_2
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    goto :goto_1

    .line 442
    :cond_3
    return v5

    .line 445
    :cond_4
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-eqz v11, :cond_9

    .line 448
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    int-to-char v2, v11

    .line 452
    .local v2, "c":C
    :goto_2
    if-eqz v9, :cond_5

    .line 453
    const/4 v9, 0x0

    .line 454
    const/16 v11, 0xa

    if-eq v2, v11, :cond_0

    .line 458
    :cond_5
    if-eqz v10, :cond_7

    .line 459
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_0

    .line 462
    if-nez v0, :cond_6

    const/16 v11, 0xd

    if-eq v2, v11, :cond_0

    const/16 v11, 0xa

    if-eq v2, v11, :cond_0

    .line 465
    :cond_6
    const/4 v10, 0x0

    .line 466
    const/4 v0, 0x0

    .line 468
    :cond_7
    if-eqz v4, :cond_a

    .line 469
    const/4 v4, 0x0

    .line 470
    const/16 v11, 0x23

    if-eq v2, v11, :cond_8

    const/16 v11, 0x21

    if-ne v2, v11, :cond_a

    .line 471
    :cond_8
    const/4 v3, 0x1

    .line 472
    goto :goto_0

    .line 450
    .end local v2    # "c":C
    :cond_9
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-char v2, v11, v12

    .restart local v2    # "c":C
    goto :goto_2

    .line 476
    :cond_a
    const/16 v11, 0xa

    if-eq v2, v11, :cond_f

    const/16 v11, 0xd

    if-eq v2, v11, :cond_f

    .line 477
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .local v6, "len":I
    aput-char v2, v11, v5

    .line 478
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v11, v11

    if-ne v6, v11, :cond_c

    .line 479
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v11, v11

    mul-int/lit8 v7, v11, 0x2

    .line 480
    .local v7, "newLength":I
    if-gez v7, :cond_b

    .line 481
    const v7, 0x7fffffff

    .line 483
    :cond_b
    new-array v1, v7, [C

    .line 484
    .local v1, "buf":[C
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    iget-object v12, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v13, v1, v14, v12}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 485
    iput-object v1, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 488
    .end local v1    # "buf":[C
    .end local v7    # "newLength":I
    :cond_c
    const/16 v11, 0x5c

    if-ne v2, v11, :cond_e

    .line 489
    if-eqz v8, :cond_d

    const/4 v8, 0x0

    :goto_3
    move v5, v6

    .line 476
    .end local v6    # "len":I
    .restart local v5    # "len":I
    goto/16 :goto_0

    .line 489
    .end local v5    # "len":I
    .restart local v6    # "len":I
    :cond_d
    const/4 v8, 0x1

    goto :goto_3

    .line 491
    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    .line 496
    .end local v6    # "len":I
    .restart local v5    # "len":I
    :cond_f
    if-nez v3, :cond_10

    if-nez v5, :cond_11

    .line 497
    :cond_10
    const/4 v3, 0x0

    .line 498
    const/4 v4, 0x1

    .line 499
    const/4 v10, 0x1

    .line 500
    const/4 v5, 0x0

    .line 501
    goto/16 :goto_0

    .line 503
    :cond_11
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-lt v11, v12, :cond_13

    .line 504
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v11, :cond_12

    .line 505
    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    move-result v11

    .line 504
    :goto_4
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 507
    const/4 v11, 0x0

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 508
    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-gtz v11, :cond_13

    .line 509
    return v5

    .line 506
    :cond_12
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    goto :goto_4

    .line 512
    :cond_13
    if-eqz v8, :cond_14

    .line 513
    add-int/lit8 v5, v5, -0x1

    .line 515
    const/4 v10, 0x1

    .line 516
    const/4 v0, 0x1

    .line 517
    const/4 v8, 0x0

    .line 518
    const/16 v11, 0xd

    if-ne v2, v11, :cond_0

    .line 519
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 522
    :cond_14
    return v5
.end method
