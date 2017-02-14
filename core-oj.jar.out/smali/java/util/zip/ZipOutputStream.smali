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

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iput-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->usesDefaultDeflater:Z

    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static version(Ljava/util/zip/ZipEntry;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0x14

    return v0

    :sswitch_1
    const/16 v0, 0xa

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private writeBytes([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    return-void
.end method

.method private writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-object v5, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    iget v9, v5, Ljava/util/zip/ZipEntry;->flag:I

    invoke-static {v5}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v16

    iget-wide v6, v5, Ljava/util/zip/ZipEntry;->csize:J

    iget-wide v14, v5, Ljava/util/zip/ZipEntry;->size:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    cmp-long v17, v18, v20

    if-ltz v17, :cond_0

    const-wide v6, 0xffffffffL

    const/16 v8, 0x8

    const/4 v10, 0x1

    :cond_0
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    cmp-long v17, v18, v20

    if-ltz v17, :cond_1

    const-wide v14, 0xffffffffL

    add-int/lit8 v8, v8, 0x8

    const/4 v10, 0x1

    :cond_1
    move-object/from16 v0, p1

    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    cmp-long v17, v18, v20

    if-ltz v17, :cond_2

    const-wide v12, 0xffffffffL

    add-int/lit8 v8, v8, 0x8

    const/4 v10, 0x1

    :cond_2
    const-wide/32 v18, 0x2014b50    # 1.6619997E-316

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    if-eqz v10, :cond_8

    const/16 v17, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const/16 v17, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget v0, v5, Ljava/util/zip/ZipEntry;->method:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->time:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->crc:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    move-object/from16 v17, v0

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    array-length v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    if-eqz v10, :cond_a

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

    :goto_2
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    move-object/from16 v17, v0

    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v0, v4

    move/from16 v17, v0

    const v18, 0xffff

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    :goto_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    array-length v0, v11

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v11, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    if-eqz v10, :cond_5

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const-wide v18, 0xffffffffL

    cmp-long v17, v14, v18

    if-nez v17, :cond_3

    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    :cond_3
    const-wide v18, 0xffffffffL

    cmp-long v17, v6, v18

    if-nez v17, :cond_4

    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    :cond_4
    const-wide v18, 0xffffffffL

    cmp-long v17, v12, v18

    if-nez v17, :cond_5

    move-object/from16 v0, p1

    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    :cond_5
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

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

    :cond_6
    if-eqz v4, :cond_7

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

    :cond_7
    return-void

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_1

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

    :cond_c
    const/4 v4, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto/16 :goto_3
.end method

.method private writeEND(JJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    move-wide v4, p3

    move-wide v6, p1

    const-wide v8, 0xffffffffL

    cmp-long v8, p3, v8

    if-ltz v8, :cond_0

    const-wide v4, 0xffffffffL

    const/4 v1, 0x1

    :cond_0
    const-wide v8, 0xffffffffL

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1

    const-wide v6, 0xffffffffL

    const/4 v1, 0x1

    :cond_1
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    const v8, 0xffff

    if-lt v0, v8, :cond_2

    const v0, 0xffff

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/32 v8, 0x6064b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    const-wide/16 v8, 0x2c

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    const/16 v8, 0x2d

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const/16 v8, 0x2d

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    invoke-direct {p0, p3, p4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    const-wide/32 v8, 0x7064b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    const-wide/16 v8, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    :cond_3
    const-wide/32 v8, 0x6054b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    if-eqz v8, :cond_4

    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v8, v8

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    iget-object v9, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v9, v9

    const/4 v10, 0x0

    invoke-direct {p0, v8, v10, v9}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    :goto_0
    return-void

    :cond_4
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_0
.end method

.method private writeEXT(Ljava/util/zip/ZipEntry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide v2, 0xffffffffL

    const-wide/32 v0, 0x8074b50

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    :goto_0
    return-void

    :cond_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_0
.end method

.method private writeInt(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0xff

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    return-void
.end method

.method private writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide v8, 0xffffffffL

    iget-object v0, p1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    iget v2, v0, Ljava/util/zip/ZipEntry;->flag:I

    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v5, :cond_2

    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v1, v5

    :goto_0
    const/4 v3, 0x0

    const-wide/32 v6, 0x4034b50

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    and-int/lit8 v5, v2, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget v5, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->time:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    :goto_1
    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v6, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    invoke-direct {p0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    array-length v5, v4

    invoke-direct {p0, v4, v12, v5}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const/16 v5, 0x10

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    :cond_0
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v5, :cond_1

    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    iget-object v6, v0, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v6, v6

    invoke-direct {p0, v5, v12, v6}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    :cond_1
    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iput-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_4

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_5

    :cond_4
    const/4 v3, 0x1

    const/16 v5, 0x2d

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    :goto_2
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget v5, v0, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->time:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    if-eqz v3, :cond_6

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    add-int/lit8 v1, v1, 0x14

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_2

    :cond_6
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_1
.end method

.method private writeLong(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0xff

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/16 v1, 0x38

    ushr-long v2, p1, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    return-void
.end method

.method private writeShort(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

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

    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

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

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v1, :cond_6

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->deflate()V

    goto :goto_0

    :cond_0
    iget v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry compressed size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry CRC-32 (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but got 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeEXT(Ljava/util/zip/ZipEntry;)V

    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    :cond_5
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    iput-object v8, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    :cond_6
    return-void

    :sswitch_1
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid entry crc-32 (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " but got 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

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

    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    iget-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/util/zip/ZipException;

    const-string/jumbo v5, "No entries"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_2
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V

    goto :goto_0

    :cond_3
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    sub-long/2addr v4, v0

    invoke-direct {p0, v0, v1, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeEND(JJ)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    return-void
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    :cond_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->time:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    :cond_1
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    iput v0, p1, Ljava/util/zip/ZipEntry;->method:I

    :cond_2
    const/4 v0, 0x0

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_5

    :cond_3
    :goto_0
    const/16 v0, 0x8

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    :cond_4
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

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

    :cond_5
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    :cond_6
    :goto_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_7

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    :cond_7
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "STORED entry missing size, compressed size, or crc-32"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_9

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_1

    :cond_9
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "STORED entry where compressed != uncompressed size"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    :cond_b
    new-instance v0, Ljava/util/zip/ZipOutputStream$XEntry;

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    invoke-direct {v0, p1, v2, v3}, Ljava/util/zip/ZipOutputStream$XEntry;-><init>(Ljava/util/zip/ZipEntry;J)V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v0, v0

    const v1, 0xffff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ZIP file comment too long."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    return-void
.end method

.method public setMethod(I)V
    .locals 2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->method:I

    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

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

    :cond_1
    :try_start_1
    array-length v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v1, p3

    if-gt p2, v1, :cond_0

    if-nez p3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "no current ZIP entry"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :sswitch_1
    :try_start_3
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v4, p3

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v2, v4

    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    new-instance v1, Ljava/util/zip/ZipException;

    const-string/jumbo v2, "attempt to write past end of STORED entry"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
