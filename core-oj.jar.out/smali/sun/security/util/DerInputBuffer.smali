.class Lsun/security/util/DerInputBuffer;
.super Ljava/io/ByteArrayInputStream;
.source "DerInputBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-void
.end method

.method private getTime(IZ)Ljava/util/Date;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v16, 0x0

    if-eqz p2, :cond_1

    const-string/jumbo v16, "Generalized"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0xa

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v17, v17, v18

    add-int/lit8 p1, p1, -0x2

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v10, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v10, v10, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v3, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v3, v3, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v5, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v9, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v9, v9, v18

    add-int/lit8 p1, p1, -0xa

    const/4 v7, 0x0

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    const/16 v18, 0xc

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v13, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v13, v13, v18

    add-int/lit8 p1, p1, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    aget-byte v18, v18, v19

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    aget-byte v18, v18, v19

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_0
    add-int/lit8 p1, p1, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lsun/security/util/DerInputBuffer;->pos:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v11

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v11

    const/16 v19, 0x2b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v11

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v16, "UTC"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v17, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v17, v17, v18

    const/16 v18, 0x32

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v17, v0

    goto/16 :goto_0

    :cond_2
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x76c

    move/from16 v17, v0

    goto/16 :goto_0

    :cond_3
    packed-switch v12, :pswitch_data_0

    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, unsupported precision for seconds value"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v7, v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0xa

    add-int v7, v7, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v7, v7, v18

    :goto_2
    sub-int p1, p1, v12

    :cond_4
    :goto_3
    if-eqz v10, :cond_5

    if-nez v3, :cond_7

    :cond_5
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, invalid format"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v7, v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0xa

    add-int v7, v7, v18

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v7, v18, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_3

    :cond_7
    const/16 v18, 0xc

    move/from16 v0, v18

    if-gt v10, v0, :cond_5

    const/16 v18, 0x1f

    move/from16 v0, v18

    if-gt v3, v0, :cond_5

    const/16 v18, 0x18

    move/from16 v0, v18

    if-ge v5, v0, :cond_5

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ge v9, v0, :cond_5

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ge v13, v0, :cond_5

    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v4

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarSystem;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0, v10, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v2, v5, v9, v13, v7}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    invoke-virtual {v4, v2}, Lsun/util/calendar/CalendarSystem;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v14

    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    const/16 v18, 0x5

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, invalid offset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    sparse-switch v18, :sswitch_data_0

    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, garbage offset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v6, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v6, v6, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v8, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v8, v8, v18

    const/16 v18, 0x18

    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-lt v8, v0, :cond_a

    :cond_9
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, +hhmm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_a
    mul-int/lit8 v18, v6, 0x3c

    add-int v18, v18, v8

    mul-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    :goto_4
    :sswitch_1
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    return-object v18

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v6, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v6, v6, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v8, v18, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v8, v8, v18

    const/16 v18, 0x18

    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-lt v8, v0, :cond_c

    :cond_b
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, -hhmm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_c
    mul-int/lit8 v18, v6, 0x3c

    add-int v18, v18, v8

    mul-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x2d -> :sswitch_2
        0x5a -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method dup()Lsun/security/util/DerInputBuffer;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/DerInputBuffer;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lsun/security/util/DerInputBuffer;->mark(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lsun/security/util/DerInputBuffer;

    if-eqz v0, :cond_0

    check-cast p1, Lsun/security/util/DerInputBuffer;

    invoke-virtual {p0, p1}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method equals(Lsun/security/util/DerInputBuffer;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    if-eq v2, v1, :cond_1

    return v5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p1, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v4, p1, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_2

    return v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v6
.end method

.method getBigInteger(IZ)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    if-le p1, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "short read of integer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding: zero length Int value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-array v0, p1, [B

    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    if-eqz p2, :cond_2

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    :cond_2
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method getBitString()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBitString(I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    if-le p1, v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "short read of bit string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding: zero length bit string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v2, v3

    if-ltz v0, :cond_2

    const/4 v2, 0x7

    if-le v0, v2, :cond_3

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid number of padding bits"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    add-int/lit8 v2, p1, -0x1

    new-array v1, v2, [B

    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, p1, -0x1

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    if-eqz v0, :cond_4

    add-int/lit8 v2, p1, -0x2

    aget-byte v3, v1, v2

    const/16 v4, 0xff

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_4
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    return-object v1
.end method

.method public getGeneralizedTime(I)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "short read of DER Generalized Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xd

    if-lt p1, v0, :cond_1

    const/16 v0, 0x17

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER Generalized Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    const-wide/32 v2, -0x80000000

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Integer below minimum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Integer exceeds maximum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1
.end method

.method getPos()I
    .locals 1

    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    return v0
.end method

.method getSlice(II)[B
    .locals 3

    new-array v0, p2, [B

    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v0
.end method

.method public getUTCTime(I)Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "short read of DER UTC Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    const/16 v0, 0x11

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER UTC Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method getUnalignedBitString()Lsun/security/util/BitArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v6, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-lt v5, v6, :cond_0

    const/4 v5, 0x0

    return-object v5

    :cond_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    iget-object v5, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v4, v5, 0xff

    const/4 v5, 0x7

    if-le v4, v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid value for unused bits: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    add-int/lit8 v5, v2, -0x1

    new-array v1, v5, [B

    array-length v5, v1

    if-nez v5, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v2, -0x1

    invoke-static {v5, v6, v1, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v3, v1}, Lsun/security/util/BitArray;-><init>(I[B)V

    iget v5, p0, Lsun/security/util/DerInputBuffer;->count:I

    iput v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    return-object v0

    :cond_2
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x8

    sub-int v3, v5, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method peek()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v1, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method toByteArray()[B
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-array v1, v0, [B

    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method

.method truncate(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "insufficient data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerInputBuffer;->count:I

    return-void
.end method
