.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipOutputStream$XEntry;
    }
.end annotation


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field private closed:Z

.field private comment:[B

.field private crc:Ljava/util/zip/CRC32;

.field private current:Ljava/util/zip/ZipOutputStream$XEntry;

.field private finished:Z

.field private locoff:J

.field private method:I

.field private names:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private written:J

.field private xentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/zip/ZipOutputStream$XEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 105
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 119
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    .line 59
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 60
    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 61
    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 63
    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 120
    if-nez p2, :cond_0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    .line 123
    iput-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->usesDefaultDeflater:Z

    .line 118
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 83
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    return-void
.end method

.method private static version(Ljava/util/zip/ZipEntry;)I
    .locals 2
    .param p0, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_0

    .line 74
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :sswitch_0
    const/16 v0, 0x14

    return v0

    .line 73
    :sswitch_1
    const/16 v0, 0xa

    return v0

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private writeBytes([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 623
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 621
    return-void
.end method

.method private writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .locals 22
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    move-object/from16 v0, p1

    iget-object v5, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 449
    .local v5, "e":Ljava/util/zip/ZipEntry;
    iget v9, v5, Ljava/util/zip/ZipEntry;->flag:I

    .line 450
    .local v9, "flag":I
    invoke-static {v5}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v16

    .line 452
    .local v16, "version":I
    iget-wide v6, v5, Ljava/util/zip/ZipEntry;->csize:J

    .line 453
    .local v6, "csize":J
    iget-wide v14, v5, Ljava/util/zip/ZipEntry;->size:J

    .line 454
    .local v14, "size":J
    move-object/from16 v0, p1

    iget-wide v12, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    .line 455
    .local v12, "offset":J
    const/4 v8, 0x0

    .line 456
    .local v8, "e64len":I
    const/4 v10, 0x0

    .line 457
    .local v10, "hasZip64":Z
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    cmp-long v17, v18, v20

    if-ltz v17, :cond_0

    .line 458
    const-wide v6, 0xffffffffL

    .line 459
    const/16 v8, 0x8

    .line 460
    const/4 v10, 0x1

    .line 462
    :cond_0
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    cmp-long v17, v18, v20

    if-ltz v17, :cond_1

    .line 463
    const-wide v14, 0xffffffffL

    .line 464
    add-int/lit8 v8, v8, 0x8

    .line 465
    const/4 v10, 0x1

    .line 467
    :cond_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    cmp-long v17, v18, v20

    if-ltz v17, :cond_2

    .line 468
    const-wide v12, 0xffffffffL

    .line 469
    add-int/lit8 v8, v8, 0x8

    .line 470
    const/4 v10, 0x1

    .line 472
    :cond_2
    const-wide/32 v18, 0x2014b50    # 1.6619997E-316

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 473
    if-eqz v10, :cond_8

    .line 474
    const/16 v17, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 475
    const/16 v17, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 480
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 481
    iget v0, v5, Ljava/util/zip/ZipEntry;->method:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 482
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->time:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 483
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->crc:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 484
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 485
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    move-object/from16 v17, v0

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 487
    .local v11, "nameBytes":[B
    array-length v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 488
    if-eqz v10, :cond_a

    .line 490
    add-int/lit8 v18, v8, 0x4

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    :goto_1
    add-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 495
    :goto_2
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    move-object/from16 v17, v0

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 497
    .local v4, "commentBytes":[B
    array-length v0, v4

    move/from16 v17, v0

    const v18, 0xffff

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 502
    .end local v4    # "commentBytes":[B
    :goto_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 503
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 504
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 505
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 506
    array-length v0, v11

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v11, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 507
    if-eqz v10, :cond_5

    .line 508
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 509
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 510
    const-wide v18, 0xffffffffL

    cmp-long v17, v14, v18

    if-nez v17, :cond_3

    .line 511
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 512
    :cond_3
    const-wide v18, 0xffffffffL

    cmp-long v17, v6, v18

    if-nez v17, :cond_4

    .line 513
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 514
    :cond_4
    const-wide v18, 0xffffffffL

    cmp-long v17, v12, v18

    if-nez v17, :cond_5

    .line 515
    move-object/from16 v0, p1

    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 517
    :cond_5
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 518
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v17, v0

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 520
    :cond_6
    if-eqz v4, :cond_7

    .line 521
    array-length v0, v4

    move/from16 v17, v0

    const v18, 0xffff

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 447
    :cond_7
    return-void

    .line 477
    .end local v11    # "nameBytes":[B
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 478
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto/16 :goto_0

    .line 490
    .restart local v11    # "nameBytes":[B
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 492
    :cond_a
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto/16 :goto_2

    :cond_b
    const/16 v17, 0x0

    goto :goto_4

    .line 499
    :cond_c
    const/4 v4, 0x0

    .line 500
    .local v4, "commentBytes":[B
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto/16 :goto_3
.end method

.method private writeEND(JJ)V
    .locals 11
    .param p1, "off"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v1, 0x0

    .line 530
    .local v1, "hasZip64":Z
    move-wide v4, p3

    .line 531
    .local v4, "xlen":J
    move-wide v6, p1

    .line 532
    .local v6, "xoff":J
    const-wide v8, 0xffffffffL

    cmp-long v8, p3, v8

    if-ltz v8, :cond_0

    .line 533
    const-wide v4, 0xffffffffL

    .line 534
    const/4 v1, 0x1

    .line 536
    :cond_0
    const-wide v8, 0xffffffffL

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    .line 537
    const-wide v6, 0xffffffffL

    .line 538
    const/4 v1, 0x1

    .line 540
    :cond_1
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    .line 541
    .local v0, "count":I
    const v8, 0xffff

    if-lt v0, v8, :cond_2

    .line 542
    const v0, 0xffff

    .line 543
    const/4 v1, 0x1

    .line 545
    :cond_2
    if-eqz v1, :cond_3

    .line 546
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 548
    .local v2, "off64":J
    const-wide/32 v8, 0x6064b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 549
    const-wide/16 v8, 0x2c

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 550
    const/16 v8, 0x2d

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 551
    const/16 v8, 0x2d

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 552
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 553
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 554
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 555
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 556
    invoke-direct {p0, p3, p4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 557
    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 560
    const-wide/32 v8, 0x7064b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 561
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 562
    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 563
    const-wide/16 v8, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 565
    .end local v2    # "off64":J
    :cond_3
    const-wide/32 v8, 0x6054b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 566
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 567
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 568
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 569
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 570
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 571
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 572
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    if-eqz v8, :cond_4

    .line 573
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v8, v8

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 574
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    iget-object v9, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10, v9}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 528
    :goto_0
    return-void

    .line 576
    :cond_4
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_0
.end method

.method private writeEXT(Ljava/util/zip/ZipEntry;)V
    .locals 4
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide v2, 0xffffffffL

    .line 432
    const-wide/32 v0, 0x8074b50

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 433
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 434
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 435
    :cond_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 436
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 431
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 439
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_0
.end method

.method private writeInt(J)V
    .locals 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xff

    .line 594
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 595
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 596
    const/16 v1, 0x8

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 597
    const/16 v1, 0x10

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 598
    const/16 v1, 0x18

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 599
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 593
    return-void
.end method

.method private writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .locals 13
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide v8, 0xffffffffL

    .line 374
    iget-object v0, p1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 375
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v2, v0, Ljava/util/zip/ZipEntry;->flag:I

    .line 376
    .local v2, "flag":I
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v5, :cond_2

    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v1, v5

    .line 377
    .local v1, "elen":I
    :goto_0
    const/4 v3, 0x0

    .line 379
    .local v3, "hasZip64":Z
    const-wide/32 v6, 0x4034b50

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 381
    and-int/lit8 v5, v2, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    .line 382
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 383
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 384
    iget v5, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 385
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->time:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 389
    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 390
    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 391
    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 412
    :goto_1
    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v6, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 413
    .local v4, "nameBytes":[B
    array-length v5, v4

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 414
    invoke-direct {p0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 415
    array-length v5, v4

    invoke-direct {p0, v4, v12, v5}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 416
    if-eqz v3, :cond_0

    .line 417
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 418
    const/16 v5, 0x10

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 419
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 420
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 422
    :cond_0
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v5, :cond_1

    .line 423
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    iget-object v6, v0, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v6, v6

    invoke-direct {p0, v5, v12, v6}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 425
    :cond_1
    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iput-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 373
    return-void

    .line 376
    .end local v1    # "elen":I
    .end local v3    # "hasZip64":Z
    .end local v4    # "nameBytes":[B
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "elen":I
    goto :goto_0

    .line 393
    .restart local v3    # "hasZip64":Z
    :cond_3
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    .line 394
    :cond_4
    const/4 v3, 0x1

    .line 395
    const/16 v5, 0x2d

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 399
    :goto_2
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 400
    iget v5, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 401
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->time:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 402
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 403
    if-eqz v3, :cond_6

    .line 404
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 405
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 406
    add-int/lit8 v1, v1, 0x14

    goto :goto_1

    .line 397
    :cond_5
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_2

    .line 408
    :cond_6
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 409
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_1
.end method

.method private writeLong(J)V
    .locals 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0xff

    .line 606
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 607
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 608
    const/16 v1, 0x8

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 609
    const/16 v1, 0x10

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 610
    const/16 v1, 0x18

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 611
    const/16 v1, 0x20

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 612
    const/16 v1, 0x28

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 613
    const/16 v1, 0x30

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 614
    const/16 v1, 0x38

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 615
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 605
    return-void
.end method

.method private writeShort(I)V
    .locals 6
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 585
    .local v0, "out":Ljava/io/OutputStream;
    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 586
    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 587
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 583
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 365
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 363
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 232
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 233
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v1, :cond_6

    .line 234
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 235
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v1, :sswitch_data_0

    .line 283
    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 237
    :sswitch_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 238
    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->deflate()V

    goto :goto_0

    .line 241
    :cond_0
    iget v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    .line 243
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 244
    new-instance v1, Ljava/util/zip/ZipException;

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string/jumbo v3, " but got "

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v4

    .line 245
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string/jumbo v3, " bytes)"

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_1
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 249
    new-instance v1, Ljava/util/zip/ZipException;

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry compressed size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 250
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string/jumbo v3, " but got "

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v4

    .line 250
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    const-string/jumbo v3, " bytes)"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_2
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 254
    new-instance v1, Ljava/util/zip/ZipException;

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry CRC-32 (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 256
    const-string/jumbo v3, " but got 0x"

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    const-string/jumbo v3, ")"

    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 261
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 262
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 263
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeEXT(Ljava/util/zip/ZipEntry;)V

    .line 265
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 266
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 285
    :cond_5
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 286
    iput-object v8, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    .line 231
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_6
    return-void

    .line 270
    .restart local v0    # "e":Ljava/util/zip/ZipEntry;
    :sswitch_1
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 271
    new-instance v1, Ljava/util/zip/ZipException;

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string/jumbo v3, " but got "

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v4, v6

    .line 272
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 273
    const-string/jumbo v3, " bytes)"

    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_7
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 276
    new-instance v1, Ljava/util/zip/ZipException;

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry crc-32 (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 278
    const-string/jumbo v3, " but got 0x"

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    const-string/jumbo v3, ")"

    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 276
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 340
    iget-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    if-eqz v4, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    new-instance v4, Ljava/util/zip/ZipException;

    const-string/jumbo v5, "No entries"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 346
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v4, :cond_2

    .line 347
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 351
    :cond_2
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 352
    .local v0, "off":J
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "xentry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipOutputStream$XEntry;

    .line 353
    .local v2, "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V

    goto :goto_0

    .line 354
    .end local v2    # "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    :cond_3
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    sub-long/2addr v4, v0

    invoke-direct {p0, v0, v1, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeEND(JJ)V

    .line 355
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    .line 338
    return-void
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 6
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 176
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 177
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 180
    :cond_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->time:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 183
    :cond_1
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 184
    iget v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    iput v0, p1, Ljava/util/zip/ZipEntry;->method:I

    .line 187
    :cond_2
    const/4 v0, 0x0

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 188
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_0

    .line 213
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :sswitch_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    .line 193
    :cond_3
    :goto_0
    const/16 v0, 0x8

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 215
    :cond_4
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 216
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_5
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    goto :goto_0

    .line 199
    :sswitch_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    .line 200
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 207
    :cond_6
    :goto_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 208
    :cond_7
    new-instance v0, Ljava/util/zip/ZipException;

    .line 209
    const-string/jumbo v1, "STORED entry missing size, compressed size, or crc-32"

    .line 208
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_8
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    .line 202
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_1

    .line 203
    :cond_9
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 204
    new-instance v0, Ljava/util/zip/ZipException;

    .line 205
    const-string/jumbo v1, "STORED entry where compressed != uncompressed size"

    .line 204
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_a
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 219
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 220
    :cond_b
    new-instance v0, Ljava/util/zip/ZipOutputStream$XEntry;

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    invoke-direct {v0, p1, v2, v3}, Ljava/util/zip/ZipOutputStream$XEntry;-><init>(Ljava/util/zip/ZipEntry;J)V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    .line 221
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V

    .line 175
    return-void

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    .line 135
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZIP file comment too long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 162
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 161
    return-void
.end method

.method public setMethod(I)V
    .locals 2
    .param p1, "method"    # I

    .prologue
    .line 149
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 148
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 302
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 303
    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    .line 304
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 303
    :cond_1
    :try_start_1
    array-length v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    .line 305
    if-nez p3, :cond_2

    monitor-exit p0

    .line 306
    return-void

    .line 309
    :cond_2
    :try_start_2
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-nez v1, :cond_3

    .line 310
    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "no current ZIP entry"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 313
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v1, :sswitch_data_0

    .line 326
    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 315
    :sswitch_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 328
    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 300
    return-void

    .line 318
    :sswitch_1
    :try_start_3
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 319
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 320
    new-instance v1, Ljava/util/zip/ZipException;

    .line 321
    const-string/jumbo v2, "attempt to write past end of STORED entry"

    .line 320
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 323
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 313
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
