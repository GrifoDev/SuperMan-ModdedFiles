.class public Lcom/caverock/androidsvg/NumberParser;
.super Ljava/lang/Object;
.source "NumberParser.java"


# static fields
.field static TOO_BIG:J

.field private static final negativePowersOf10:[F

.field private static final positivePowersOf10:[F


# instance fields
.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide v0, 0xcccccccccccccccL

    sput-wide v0, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    const/16 v0, 0x27

    new-array v0, v0, [F

    aput v3, v0, v4

    const/high16 v1, 0x41200000    # 10.0f

    aput v1, v0, v5

    const/high16 v1, 0x42c80000    # 100.0f

    aput v1, v0, v6

    const/high16 v1, 0x447a0000    # 1000.0f

    aput v1, v0, v7

    const v1, 0x461c4000    # 10000.0f

    const/4 v2, 0x4

    aput v1, v0, v2

    const v1, 0x47c35000    # 100000.0f

    const/4 v2, 0x5

    aput v1, v0, v2

    const v1, 0x49742400    # 1000000.0f

    const/4 v2, 0x6

    aput v1, v0, v2

    const v1, 0x4b189680    # 1.0E7f

    const/4 v2, 0x7

    aput v1, v0, v2

    const v1, 0x4cbebc20    # 1.0E8f

    const/16 v2, 0x8

    aput v1, v0, v2

    const v1, 0x4e6e6b28    # 1.0E9f

    const/16 v2, 0x9

    aput v1, v0, v2

    const v1, 0x501502f9    # 1.0E10f

    const/16 v2, 0xa

    aput v1, v0, v2

    const v1, 0x51ba43b7    # 9.9999998E10f

    const/16 v2, 0xb

    aput v1, v0, v2

    const v1, 0x5368d4a5    # 1.0E12f

    const/16 v2, 0xc

    aput v1, v0, v2

    const v1, 0x551184e7    # 9.9999998E12f

    const/16 v2, 0xd

    aput v1, v0, v2

    const v1, 0x56b5e621    # 1.0E14f

    const/16 v2, 0xe

    aput v1, v0, v2

    const v1, 0x58635fa9    # 9.9999999E14f

    const/16 v2, 0xf

    aput v1, v0, v2

    const v1, 0x5a0e1bca    # 1.00000003E16f

    const/16 v2, 0x10

    aput v1, v0, v2

    const v1, 0x5bb1a2bc    # 9.9999998E16f

    const/16 v2, 0x11

    aput v1, v0, v2

    const v1, 0x5d5e0b6b    # 9.9999998E17f

    const/16 v2, 0x12

    aput v1, v0, v2

    const v1, 0x5f0ac723    # 1.0E19f

    const/16 v2, 0x13

    aput v1, v0, v2

    const v1, 0x60ad78ec    # 1.0E20f

    const/16 v2, 0x14

    aput v1, v0, v2

    const v1, 0x6258d727    # 1.0E21f

    const/16 v2, 0x15

    aput v1, v0, v2

    const v1, 0x64078678    # 1.0E22f

    const/16 v2, 0x16

    aput v1, v0, v2

    const v1, 0x65a96816    # 1.0E23f

    const/16 v2, 0x17

    aput v1, v0, v2

    const v1, 0x6753c21c    # 1.0E24f

    const/16 v2, 0x18

    aput v1, v0, v2

    const v1, 0x69045951    # 1.0E25f

    const/16 v2, 0x19

    aput v1, v0, v2

    const v1, 0x6aa56fa6    # 1.0E26f

    const/16 v2, 0x1a

    aput v1, v0, v2

    const v1, 0x6c4ecb8f    # 1.0E27f

    const/16 v2, 0x1b

    aput v1, v0, v2

    const v1, 0x6e013f39    # 1.0E28f

    const/16 v2, 0x1c

    aput v1, v0, v2

    const v1, 0x6fa18f08    # 1.0E29f

    const/16 v2, 0x1d

    aput v1, v0, v2

    const v1, 0x7149f2ca    # 1.0E30f

    const/16 v2, 0x1e

    aput v1, v0, v2

    const v1, 0x72fc6f7c    # 1.0E31f

    const/16 v2, 0x1f

    aput v1, v0, v2

    const v1, 0x749dc5ae    # 1.0E32f

    const/16 v2, 0x20

    aput v1, v0, v2

    const v1, 0x76453719    # 1.0E33f

    const/16 v2, 0x21

    aput v1, v0, v2

    const v1, 0x77f684df    # 1.0E34f

    const/16 v2, 0x22

    aput v1, v0, v2

    const v1, 0x799a130c    # 1.0E35f

    const/16 v2, 0x23

    aput v1, v0, v2

    const v1, 0x7b4097ce    # 1.0E36f

    const/16 v2, 0x24

    aput v1, v0, v2

    const v1, 0x7cf0bdc2    # 1.0E37f

    const/16 v2, 0x25

    aput v1, v0, v2

    const v1, 0x7e967699    # 1.0E38f

    const/16 v2, 0x26

    aput v1, v0, v2

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    const/16 v0, 0x27

    new-array v0, v0, [F

    aput v3, v0, v4

    const v1, 0x3dcccccd    # 0.1f

    aput v1, v0, v5

    const v1, 0x3c23d70a    # 0.01f

    aput v1, v0, v6

    const v1, 0x3a83126f    # 0.001f

    aput v1, v0, v7

    const v1, 0x38d1b717    # 1.0E-4f

    const/4 v2, 0x4

    aput v1, v0, v2

    const v1, 0x3727c5ac    # 1.0E-5f

    const/4 v2, 0x5

    aput v1, v0, v2

    const v1, 0x358637bd    # 1.0E-6f

    const/4 v2, 0x6

    aput v1, v0, v2

    const v1, 0x33d6bf95    # 1.0E-7f

    const/4 v2, 0x7

    aput v1, v0, v2

    const v1, 0x322bcc77    # 1.0E-8f

    const/16 v2, 0x8

    aput v1, v0, v2

    const v1, 0x3089705f    # 1.0E-9f

    const/16 v2, 0x9

    aput v1, v0, v2

    const v1, 0x2edbe6ff    # 1.0E-10f

    const/16 v2, 0xa

    aput v1, v0, v2

    const v1, 0x2d2febff    # 1.0E-11f

    const/16 v2, 0xb

    aput v1, v0, v2

    const v1, 0x2b8cbccc    # 1.0E-12f

    const/16 v2, 0xc

    aput v1, v0, v2

    const v1, 0x29e12e13    # 1.0E-13f

    const/16 v2, 0xd

    aput v1, v0, v2

    const v1, 0x283424dc    # 1.0E-14f

    const/16 v2, 0xe

    aput v1, v0, v2

    const v1, 0x26901d7d    # 1.0E-15f

    const/16 v2, 0xf

    aput v1, v0, v2

    const v1, 0x24e69595    # 1.0E-16f

    const/16 v2, 0x10

    aput v1, v0, v2

    const v1, 0x233877aa    # 1.0E-17f

    const/16 v2, 0x11

    aput v1, v0, v2

    const v1, 0x219392ef    # 1.0E-18f

    const/16 v2, 0x12

    aput v1, v0, v2

    const v1, 0x1fec1e4a    # 1.0E-19f

    const/16 v2, 0x13

    aput v1, v0, v2

    const v1, 0x1e3ce508    # 1.0E-20f

    const/16 v2, 0x14

    aput v1, v0, v2

    const v1, 0x1c971da0    # 1.0E-21f

    const/16 v2, 0x15

    aput v1, v0, v2

    const v1, 0x1af1c901    # 1.0E-22f

    const/16 v2, 0x16

    aput v1, v0, v2

    const v1, 0x19416d9a    # 1.0E-23f

    const/16 v2, 0x17

    aput v1, v0, v2

    const v1, 0x179abe15    # 1.0E-24f

    const/16 v2, 0x18

    aput v1, v0, v2

    const v1, 0x15f79688    # 1.0E-25f

    const/16 v2, 0x19

    aput v1, v0, v2

    const v1, 0x14461206    # 1.0E-26f

    const/16 v2, 0x1a

    aput v1, v0, v2

    const v1, 0x129e74d2    # 1.0E-27f

    const/16 v2, 0x1b

    aput v1, v0, v2

    const v1, 0x10fd87b6    # 1.0E-28f

    const/16 v2, 0x1c

    aput v1, v0, v2

    const v1, 0xf4ad2f8    # 1.0E-29f

    const/16 v2, 0x1d

    aput v1, v0, v2

    const v1, 0xda24260    # 1.0E-30f

    const/16 v2, 0x1e

    aput v1, v0, v2

    const v1, 0xc01ceb3    # 1.0E-31f

    const/16 v2, 0x1f

    aput v1, v0, v2

    const v1, 0xa4fb11f    # 1.0E-32f

    const/16 v2, 0x20

    aput v1, v0, v2

    const v1, 0x8a6274c    # 1.0E-33f

    const/16 v2, 0x21

    aput v1, v0, v2

    const v1, 0x704ec3d    # 1.0E-34f

    const/16 v2, 0x22

    aput v1, v0, v2

    const v1, 0x554ad2e    # 1.0E-35f

    const/16 v2, 0x23

    aput v1, v0, v2

    const v1, 0x3aa2425    # 1.0E-36f

    const/16 v2, 0x24

    aput v1, v0, v2

    const v1, 0x2081cea    # 1.0E-37f

    const/16 v2, 0x25

    aput v1, v0, v2

    const v1, 0x6ce3ee    # 1.0E-38f

    const/16 v2, 0x26

    aput v1, v0, v2

    sput-object v0, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    return v0
.end method

.method public parseNumber(Ljava/lang/String;II)F
    .locals 22

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    :cond_0
    if-nez v5, :cond_11

    :cond_1
    if-eqz v12, :cond_12

    :goto_2
    if-nez v5, :cond_14

    move v9, v14

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_15

    :cond_2
    :goto_4
    add-int v18, v9, v12

    const/16 v19, 0x27

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1f

    :cond_3
    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_4
    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :pswitch_1
    const/4 v11, 0x1

    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x30

    move/from16 v0, v18

    if-eq v3, v0, :cond_8

    const/16 v18, 0x31

    move/from16 v0, v18

    if-ge v3, v0, :cond_a

    :cond_6
    const/16 v18, 0x2e

    move/from16 v0, v18

    if-ne v3, v0, :cond_0

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    sub-int v4, v18, v15

    const/4 v5, 0x1

    :cond_7
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_1

    :cond_8
    if-eqz v12, :cond_9

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_a
    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v3, v0, :cond_6

    add-int/2addr v12, v14

    :goto_6
    if-gtz v14, :cond_b

    sget-wide v18, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v16, v18

    if-gtz v18, :cond_e

    const/16 v18, 0x1

    :goto_7
    if-nez v18, :cond_f

    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_b
    sget-wide v18, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v16, v18

    if-gtz v18, :cond_c

    const/16 v18, 0x1

    :goto_8
    if-nez v18, :cond_d

    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_c
    const/16 v18, 0x0

    goto :goto_8

    :cond_d
    const-wide/16 v18, 0xa

    mul-long v16, v16, v18

    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    :cond_e
    const/16 v18, 0x0

    goto :goto_7

    :cond_f
    const-wide/16 v18, 0xa

    mul-long v18, v18, v16

    add-int/lit8 v20, v3, -0x30

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v16, v18, v20

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-ltz v18, :cond_10

    const/16 v18, 0x1

    :goto_9
    if-nez v18, :cond_7

    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_10
    const/16 v18, 0x0

    goto :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v19, v4, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_12
    if-eqz v13, :cond_13

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_13
    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_14
    sub-int v18, v4, v13

    sub-int v9, v18, v12

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x45

    move/from16 v0, v18

    if-ne v3, v0, :cond_18

    :cond_16
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-eq v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    packed-switch v18, :pswitch_data_1

    :pswitch_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_a
    :pswitch_4
    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    move/from16 v1, p3

    if-lt v0, v1, :cond_1a

    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v0, v7, :cond_1d

    if-nez v6, :cond_1e

    add-int/2addr v9, v8

    goto/16 :goto_4

    :cond_18
    const/16 v18, 0x65

    move/from16 v0, v18

    if-eq v3, v0, :cond_16

    goto/16 :goto_4

    :cond_19
    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :pswitch_5
    const/4 v6, 0x1

    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v3, v0, :cond_17

    const/16 v18, 0x39

    move/from16 v0, v18

    if-gt v3, v0, :cond_17

    int-to-long v0, v8

    move-wide/from16 v18, v0

    sget-wide v20, Lcom/caverock/androidsvg/NumberParser;->TOO_BIG:J

    cmp-long v18, v18, v20

    if-gtz v18, :cond_1b

    const/16 v18, 0x1

    :goto_c
    if-nez v18, :cond_1c

    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_1b
    const/16 v18, 0x0

    goto :goto_c

    :cond_1c
    mul-int/lit8 v18, v8, 0xa

    add-int/lit8 v19, v3, -0x30

    add-int v8, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/caverock/androidsvg/NumberParser;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/caverock/androidsvg/NumberParser;->pos:I

    goto :goto_b

    :cond_1d
    const/high16 v18, 0x7fc00000    # NaNf

    return v18

    :cond_1e
    sub-int/2addr v9, v8

    goto/16 :goto_4

    :cond_1f
    add-int v18, v9, v12

    const/16 v19, -0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    move-wide/from16 v0, v16

    long-to-float v10, v0

    const-wide/16 v18, 0x0

    cmp-long v18, v16, v18

    if-eqz v18, :cond_20

    if-gtz v9, :cond_21

    if-ltz v9, :cond_22

    :cond_20
    :goto_d
    if-nez v11, :cond_24

    :goto_e
    return v10

    :cond_21
    sget-object v18, Lcom/caverock/androidsvg/NumberParser;->positivePowersOf10:[F

    aget v18, v18, v9

    mul-float v10, v10, v18

    goto :goto_d

    :cond_22
    const/16 v18, -0x26

    move/from16 v0, v18

    if-lt v9, v0, :cond_23

    :goto_f
    sget-object v18, Lcom/caverock/androidsvg/NumberParser;->negativePowersOf10:[F

    neg-int v0, v9

    move/from16 v19, v0

    aget v18, v18, v19

    mul-float v10, v10, v18

    goto :goto_d

    :cond_23
    float-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide v20, 0x3bc79ca10c924223L    # 1.0E-20

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v10, v0

    add-int/lit8 v9, v9, 0x14

    goto :goto_f

    :cond_24
    neg-float v10, v10

    goto :goto_e

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
