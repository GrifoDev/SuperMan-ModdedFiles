.class public Ljava/sql/Date;
.super Ljava/util/Date;
.source "Date.java"


# static fields
.field static final serialVersionUID:J = 0x14fa46683f356697L


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Ljava/util/Date;-><init>(III)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/sql/Date;
    .locals 19

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x2

    const/16 v5, 0xc

    const/16 v4, 0x1f

    const/4 v8, 0x0

    if-nez p0, :cond_0

    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    :cond_0
    const/16 v17, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/16 v17, 0x2d

    add-int/lit8 v18, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    if-lez v11, :cond_1

    if-lez v14, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v14, v0, :cond_1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    add-int/lit8 v17, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v17, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v13, v0, :cond_1

    const/16 v17, 0xc

    move/from16 v0, v17

    if-gt v13, v0, :cond_1

    const/16 v17, 0x1

    move/from16 v0, v17

    if-lt v9, v0, :cond_1

    const/16 v17, 0x1f

    move/from16 v0, v17

    if-gt v9, v0, :cond_1

    new-instance v8, Ljava/sql/Date;

    add-int/lit16 v0, v15, -0x76c

    move/from16 v17, v0

    add-int/lit8 v18, v13, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1, v9}, Ljava/sql/Date;-><init>(III)V

    :cond_1
    if-nez v8, :cond_2

    new-instance v17, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v17

    :cond_2
    return-object v8
.end method


# virtual methods
.method public getHours()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getMinutes()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getSeconds()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setHours(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setMinutes(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setSeconds(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setTime(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa

    invoke-super {p0}, Ljava/util/Date;->getYear()I

    move-result v4

    add-int/lit16 v3, v4, 0x76c

    invoke-super {p0}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    invoke-super {p0}, Ljava/util/Date;->getDate()I

    move-result v1

    const-string/jumbo v4, "2000-00-00"

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    div-int/lit16 v4, v3, 0x3e8

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/4 v5, 0x0

    aput-char v4, v0, v5

    div-int/lit8 v4, v3, 0x64

    rem-int/lit8 v4, v4, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/4 v5, 0x1

    aput-char v4, v0, v5

    div-int/lit8 v4, v3, 0xa

    rem-int/lit8 v4, v4, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/4 v5, 0x2

    aput-char v4, v0, v5

    rem-int/lit8 v4, v3, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/4 v5, 0x3

    aput-char v4, v0, v5

    div-int/lit8 v4, v2, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/4 v5, 0x5

    aput-char v4, v0, v5

    rem-int/lit8 v4, v2, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/4 v5, 0x6

    aput-char v4, v0, v5

    div-int/lit8 v4, v1, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/16 v5, 0x8

    aput-char v4, v0, v5

    rem-int/lit8 v4, v1, 0xa

    invoke-static {v4, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    const/16 v5, 0x9

    aput-char v4, v0, v5

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method
