.class Ljava/io/Console$LineReader;
.super Ljava/io/Reader;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineReader"
.end annotation


# instance fields
.field private cb:[C

.field private in:Ljava/io/Reader;

.field leftoverLF:Z

.field private nChars:I

.field private nextChar:I

.field final synthetic this$0:Ljava/io/Console;


# direct methods
.method constructor <init>(Ljava/io/Console;Ljava/io/Reader;)V
    .locals 2
    .param p1, "this$0"    # Ljava/io/Console;
    .param p2, "in"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 408
    iput-object p1, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 409
    iput-object p2, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    .line 410
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/io/Console$LineReader;->cb:[C

    .line 411
    iput v1, p0, Ljava/io/Console$LineReader;->nChars:I

    iput v1, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 412
    iput-boolean v1, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    .line 408
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public read([CII)I
    .locals 12
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    move v5, p2

    .line 424
    .local v5, "off":I
    add-int v2, p2, p3

    .line 425
    .local v2, "end":I
    if-ltz p2, :cond_0

    array-length v7, p1

    if-le p2, v7, :cond_1

    .line 427
    :cond_0
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 425
    :cond_1
    if-ltz p3, :cond_0

    .line 426
    if-ltz v2, :cond_0

    array-length v7, p1

    if-gt v2, v7, :cond_0

    .line 429
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get1(Ljava/io/Console;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 430
    const/4 v3, 0x0

    .line 431
    .local v3, "eof":Z
    const/4 v0, 0x0

    .line 433
    :goto_0
    :try_start_0
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-lt v7, v9, :cond_3

    .line 434
    const/4 v4, 0x0

    .line 436
    .local v4, "n":I
    :cond_2
    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v9, p0, Ljava/io/Console$LineReader;->cb:[C

    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v10}, Ljava/io/Reader;->read([CII)I

    move-result v4

    .line 437
    if-eqz v4, :cond_2

    .line 438
    if-lez v4, :cond_5

    .line 439
    iput v4, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 440
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 441
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 442
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    add-int/lit8 v9, v4, -0x1

    aget-char v7, v7, v9

    const/16 v9, 0xa

    if-eq v7, v9, :cond_3

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    add-int/lit8 v9, v4, -0x1

    aget-char v7, v7, v9

    const/16 v9, 0xd

    if-eq v7, v9, :cond_3

    .line 448
    const/4 v3, 0x1

    .line 456
    .end local v4    # "n":I
    :cond_3
    iget-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    move-result-object v7

    if-ne p1, v7, :cond_4

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v7, v7, v9

    const/16 v9, 0xa

    if-ne v7, v9, :cond_4

    .line 461
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 463
    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    .local v1, "c":C
    move v6, v5

    .line 464
    .end local v5    # "off":I
    .local v6, "off":I
    :goto_1
    :try_start_1
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ge v7, v9, :cond_f

    .line 465
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v0, v7, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "off":I
    .restart local v5    # "off":I
    :try_start_2
    aput-char v0, p1, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 466
    .end local v1    # "c":C
    .local v0, "c":C
    :try_start_3
    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Ljava/io/Console$LineReader;->nextChar:I

    const/4 v10, 0x0

    aput-char v10, v7, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 467
    const/16 v7, 0xa

    if-ne v0, v7, :cond_7

    .line 468
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 451
    .end local v0    # "c":C
    .restart local v4    # "n":I
    :cond_5
    sub-int v7, v5, p2

    if-nez v7, :cond_6

    .line 452
    const/4 v7, -0x1

    monitor-exit v8

    return v7

    .line 453
    :cond_6
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 469
    .end local v4    # "n":I
    .restart local v0    # "c":C
    :cond_7
    const/16 v7, 0xd

    if-ne v0, v7, :cond_c

    .line 470
    if-ne v5, v2, :cond_8

    .line 475
    :try_start_4
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    move-result-object v7

    if-ne p1, v7, :cond_b

    .line 476
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-wrap0(Ljava/io/Console;)[C

    move-result-object p1

    .line 477
    array-length v2, p1

    .line 483
    :cond_8
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ne v7, v9, :cond_9

    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v7}, Ljava/io/Reader;->ready()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 491
    iget-object v7, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    iget-object v9, p0, Ljava/io/Console$LineReader;->cb:[C

    iget-object v10, p0, Ljava/io/Console$LineReader;->cb:[C

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v11, v10}, Ljava/io/Reader;->read([CII)I

    move-result v7

    iput v7, p0, Ljava/io/Console$LineReader;->nChars:I

    .line 492
    const/4 v7, 0x0

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    .line 494
    :cond_9
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    iget v9, p0, Ljava/io/Console$LineReader;->nChars:I

    if-ge v7, v9, :cond_a

    iget-object v7, p0, Ljava/io/Console$LineReader;->cb:[C

    iget v9, p0, Ljava/io/Console$LineReader;->nextChar:I

    aget-char v7, v7, v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v9, 0xa

    if-ne v7, v9, :cond_a

    .line 495
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "off":I
    .restart local v6    # "off":I
    const/16 v7, 0xa

    :try_start_5
    aput-char v7, p1, v5

    .line 496
    iget v7, p0, Ljava/io/Console$LineReader;->nextChar:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/io/Console$LineReader;->nextChar:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v5, v6

    .line 498
    .end local v6    # "off":I
    .restart local v5    # "off":I
    :cond_a
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 479
    :cond_b
    const/4 v7, 0x1

    :try_start_6
    iput-boolean v7, p0, Ljava/io/Console$LineReader;->leftoverLF:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 480
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 499
    :cond_c
    if-ne v5, v2, :cond_d

    .line 500
    :try_start_7
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-get0(Ljava/io/Console;)[C

    move-result-object v7

    if-ne p1, v7, :cond_e

    .line 501
    iget-object v7, p0, Ljava/io/Console$LineReader;->this$0:Ljava/io/Console;

    invoke-static {v7}, Ljava/io/Console;->-wrap0(Ljava/io/Console;)[C

    move-result-object p1

    .line 502
    array-length v2, p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_d
    move v1, v0

    .end local v0    # "c":C
    .restart local v1    # "c":C
    move v6, v5

    .end local v5    # "off":I
    .restart local v6    # "off":I
    goto/16 :goto_1

    .line 504
    .end local v1    # "c":C
    .end local v6    # "off":I
    .restart local v0    # "c":C
    .restart local v5    # "off":I
    :cond_e
    sub-int v7, v5, p2

    monitor-exit v8

    return v7

    .line 508
    .end local v0    # "c":C
    .end local v5    # "off":I
    .restart local v1    # "c":C
    .restart local v6    # "off":I
    :cond_f
    if-eqz v3, :cond_10

    .line 509
    sub-int v7, v6, p2

    monitor-exit v8

    return v7

    :cond_10
    move v0, v1

    .end local v1    # "c":C
    .restart local v0    # "c":C
    move v5, v6

    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto/16 :goto_0

    .line 429
    .end local v0    # "c":C
    :catchall_0
    move-exception v7

    :goto_2
    monitor-exit v8

    throw v7

    .end local v5    # "off":I
    .restart local v1    # "c":C
    .restart local v6    # "off":I
    :catchall_1
    move-exception v7

    move v0, v1

    .end local v1    # "c":C
    .restart local v0    # "c":C
    move v5, v6

    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto :goto_2

    .end local v0    # "c":C
    .restart local v1    # "c":C
    :catchall_2
    move-exception v7

    move v0, v1

    .end local v1    # "c":C
    .restart local v0    # "c":C
    goto :goto_2

    .end local v5    # "off":I
    .restart local v6    # "off":I
    :catchall_3
    move-exception v7

    move v5, v6

    .end local v6    # "off":I
    .restart local v5    # "off":I
    goto :goto_2
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Ljava/io/Console$LineReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    return v0
.end method
