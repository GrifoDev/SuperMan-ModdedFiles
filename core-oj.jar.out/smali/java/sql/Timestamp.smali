.class public Ljava/sql/Timestamp;
.super Ljava/util/Date;
.source "Timestamp.java"


# static fields
.field static final serialVersionUID:J = 0x2618d5c80153bf65L


# instance fields
.field private nanos:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct/range {p0 .. p6}, Ljava/util/Date;-><init>(IIIIII)V

    const v0, 0x3b9ac9ff

    if-gt p7, v0, :cond_0

    if-gez p7, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nanos > 999999999 or < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p7, p0, Ljava/sql/Timestamp;->nanos:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    const-wide/16 v4, 0x3e8

    div-long v0, p1, v4

    mul-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    rem-long v0, p1, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    if-gez v0, :cond_0

    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    div-long v0, p1, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Timestamp;
    .locals 34

    const/4 v14, 0x4

    const/4 v13, 0x2

    const/4 v10, 0x2

    const/16 v12, 0xc

    const/16 v11, 0x1f

    const/16 v31, 0x0

    const/16 v24, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v28, 0x0

    const/16 v27, 0x0

    const-string/jumbo v22, "Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff]"

    const-string/jumbo v33, "000000000"

    const-string/jumbo v17, "-"

    const-string/jumbo v18, ":"

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "null string"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    if-lez v19, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    const/16 v2, 0x2d

    invoke-virtual {v15, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    const/16 v2, 0x2d

    add-int/lit8 v3, v21, 0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v29

    if-nez v30, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/16 v2, 0x3a

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v2, 0x3a

    add-int/lit8 v3, v20, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v28

    const/16 v2, 0x2e

    add-int/lit8 v3, v28, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v27

    const/16 v26, 0x0

    if-lez v21, :cond_3

    if-lez v29, :cond_3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v29

    if-ge v0, v2, :cond_3

    const/4 v2, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    add-int/lit8 v2, v21, 0x1

    move/from16 v0, v29

    invoke-virtual {v15, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    add-int/lit8 v2, v29, 0x1

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x1

    move/from16 v0, v24

    if-lt v0, v2, :cond_3

    const/16 v2, 0xc

    move/from16 v0, v24

    if-gt v0, v2, :cond_3

    const/4 v2, 0x1

    if-lt v5, v2, :cond_3

    const/16 v2, 0x1f

    if-gt v5, v2, :cond_3

    const/16 v26, 0x1

    :cond_3
    if-nez v26, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-lez v20, :cond_5

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    if-lez v28, :cond_6

    const/4 v2, 0x1

    :goto_1
    and-int/2addr v3, v2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-ge v0, v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v2, v3

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v2, v20, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v27, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, v27

    if-ge v0, v3, :cond_9

    const/4 v3, 0x1

    :goto_4
    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    add-int/lit8 v2, v28, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x9

    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_5
    new-instance v2, Ljava/sql/Timestamp;

    move/from16 v0, v31

    add-int/lit16 v3, v0, -0x76c

    add-int/lit8 v4, v24, -0x1

    invoke-direct/range {v2 .. v9}, Ljava/sql/Timestamp;-><init>(IIIIIII)V

    return-object v2

    :cond_c
    if-lez v27, :cond_d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    add-int/lit8 v2, v28, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_5

    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object/from16 v0, v22

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public after(Ljava/sql/Timestamp;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public before(Ljava/sql/Timestamp;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public compareTo(Ljava/sql/Timestamp;)I
    .locals 9

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    cmp-long v7, v4, v0

    if-gez v7, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    if-nez v2, :cond_3

    iget v7, p0, Ljava/sql/Timestamp;->nanos:I

    iget v8, p1, Ljava/sql/Timestamp;->nanos:I

    if-le v7, v8, :cond_2

    return v6

    :cond_1
    cmp-long v7, v4, v0

    if-eqz v7, :cond_0

    move v2, v6

    goto :goto_0

    :cond_2
    iget v6, p0, Ljava/sql/Timestamp;->nanos:I

    iget v7, p1, Ljava/sql/Timestamp;->nanos:I

    if-ge v6, v7, :cond_3

    return v3

    :cond_3
    return v2
.end method

.method public compareTo(Ljava/util/Date;)I
    .locals 4

    instance-of v1, p1, Ljava/sql/Timestamp;

    if-eqz v1, :cond_0

    check-cast p1, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    return v1

    :cond_0
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/sql/Timestamp;->compareTo(Ljava/sql/Timestamp;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1}, Ljava/sql/Timestamp;->equals(Ljava/sql/Timestamp;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/sql/Timestamp;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    iget v1, p1, Ljava/sql/Timestamp;->nanos:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public getNanos()I
    .locals 1

    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    return v0
.end method

.method public getTime()J
    .locals 4

    invoke-super {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget v2, p0, Ljava/sql/Timestamp;->nanos:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/util/Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public setNanos(I)V
    .locals 2

    const v0, 0x3b9ac9ff

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "nanos > 999999999 or < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Ljava/sql/Timestamp;->nanos:I

    return-void
.end method

.method public setTime(J)V
    .locals 7

    const-wide/16 v4, 0x3e8

    div-long v0, p1, v4

    mul-long/2addr v0, v4

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    rem-long v0, p1, v4

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    if-gez v0, :cond_0

    iget v0, p0, Ljava/sql/Timestamp;->nanos:I

    const v1, 0x3b9aca00

    add-int/2addr v0, v1

    iput v0, p0, Ljava/sql/Timestamp;->nanos:I

    div-long v0, p1, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    invoke-super {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 24

    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getYear()I

    move-result v21

    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x76c

    move/from16 v17, v0

    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMonth()I

    move-result v21

    add-int/lit8 v9, v21, 0x1

    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getDate()I

    move-result v3

    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getMinutes()I

    move-result v7

    invoke-super/range {p0 .. p0}, Ljava/util/Date;->getSeconds()I

    move-result v13

    const-string/jumbo v20, "000000000"

    const-string/jumbo v19, "0000"

    const/16 v21, 0x3e8

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0x4

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_0
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v9, v0, :cond_1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v3, v0, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v5, v0, :cond_3

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v7, v0, :cond_4

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_4
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "0"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Ljava/sql/Timestamp;->nanos:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    const-string/jumbo v12, "0"

    :goto_6
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, 0x14

    move/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, "-"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, " "

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, ":"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    return-object v21

    :cond_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_0

    :cond_1
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_3
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    :cond_5
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/sql/Timestamp;->nanos:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v22

    rsub-int/lit8 v22, v22, 0x9

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v11, v0, [C

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v12, v0, v1, v11, v2}, Ljava/lang/String;->getChars(II[CI)V

    const/16 v16, 0x8

    :goto_7
    aget-char v21, v11, v16

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    add-int/lit8 v16, v16, -0x1

    goto :goto_7

    :cond_7
    new-instance v12, Ljava/lang/String;

    add-int/lit8 v21, v16, 0x1

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v12, v11, v0, v1}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_6
.end method
