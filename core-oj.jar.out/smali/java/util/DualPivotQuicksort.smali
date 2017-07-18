.class final Ljava/util/DualPivotQuicksort;
.super Ljava/lang/Object;
.source "DualPivotQuicksort.java"


# static fields
.field private static final COUNTING_SORT_THRESHOLD_FOR_BYTE:I = 0x1d

.field private static final COUNTING_SORT_THRESHOLD_FOR_SHORT_OR_CHAR:I = 0xc80

.field private static final INSERTION_SORT_THRESHOLD:I = 0x2f

.field private static final MAX_RUN_COUNT:I = 0x43

.field private static final MAX_RUN_LENGTH:I = 0x21

.field private static final NUM_BYTE_VALUES:I = 0x100

.field private static final NUM_CHAR_VALUES:I = 0x10000

.field private static final NUM_SHORT_VALUES:I = 0x10000

.field private static final QUICKSORT_THRESHOLD:I = 0x11e


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doSort([CII[CII)V
    .locals 29

    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    return-void

    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/4 v8, 0x0

    const/16 v27, 0x0

    aput p1, v24, v27

    move/from16 v11, p1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    aget-char v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget-char v27, p0, v27

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    return-void

    :cond_3
    aget-char v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v27, v11, -0x1

    aget-char v27, p0, v27

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    move v9, v11

    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    aget-char v25, p0, v13

    aget-char v27, p0, v9

    aput-char v27, p0, v13

    aput-char v25, p0, v9

    goto :goto_1

    :cond_6
    const/16 v14, 0x21

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget-char v27, p0, v27

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    return-void

    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    :cond_a
    const/16 v18, 0x0

    const/16 v16, 0x1

    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_2

    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    return-void

    :cond_c
    sub-int v6, v23, p1

    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    :cond_d
    :goto_3
    new-array v0, v6, [C

    move-object/from16 p3, v0

    const/16 p4, 0x0

    :cond_e
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    move-object/from16 v5, p0

    const/4 v7, 0x0

    move-object/from16 p0, p3

    sub-int v4, p4, p1

    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    const/4 v12, 0x0

    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    aget v9, v24, v11

    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    move/from16 v19, v10

    move/from16 v21, v15

    move/from16 v22, v21

    move/from16 v20, v19

    :goto_6
    if-ge v10, v9, :cond_13

    move/from16 v0, v22

    if-ge v0, v9, :cond_f

    move/from16 v0, v20

    if-ge v0, v15, :cond_12

    add-int v27, v20, v4

    aget-char v27, p0, v27

    add-int v28, v22, v4

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_12

    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    add-int v28, v20, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    move/from16 v21, v22

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    move/from16 v20, v19

    goto :goto_6

    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    :cond_11
    move-object/from16 v5, p3

    const/4 v4, 0x0

    sub-int v7, p4, p1

    goto :goto_4

    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    add-int v28, v22, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    move/from16 v19, v20

    goto :goto_7

    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    move/from16 v10, v23

    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    add-int v27, v10, v7

    add-int v28, v10, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    goto :goto_8

    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    :cond_16
    move-object/from16 v26, p0

    move-object/from16 p0, v5

    move-object/from16 v5, v26

    move/from16 v17, v4

    move v4, v7

    move/from16 v7, v17

    move v8, v12

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method private static doSort([DII[DII)V
    .locals 32

    sub-int v28, p2, p1

    const/16 v29, 0x11e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    return-void

    :cond_0
    const/16 v28, 0x44

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/4 v8, 0x0

    const/16 v28, 0x0

    aput p1, v24, v28

    move/from16 v11, p1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpg-double v28, v28, v30

    if-lez v28, :cond_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v28, 0x43

    move/from16 v0, v28

    if-ne v8, v0, :cond_8

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    return-void

    :cond_3
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmpl-double v28, v28, v30

    if-lez v28, :cond_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpl-double v28, v28, v30

    if-gez v28, :cond_4

    :cond_5
    aget v28, v24, v8

    add-int/lit8 v13, v28, -0x1

    move v9, v11

    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    aget-wide v26, p0, v13

    aget-wide v28, p0, v9

    aput-wide v28, p0, v13

    aput-wide v26, p0, v9

    goto :goto_1

    :cond_6
    const/16 v14, 0x21

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpl-double v28, v28, v30

    if-nez v28, :cond_2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    return-void

    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    :cond_9
    aget v28, v24, v8

    add-int/lit8 v23, p2, 0x1

    move/from16 v0, v28

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    :cond_a
    const/16 v18, 0x0

    const/16 v16, 0x1

    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v28, v18, 0x1

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_2

    :cond_b
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_a

    return-void

    :cond_c
    sub-int v6, v23, p1

    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    :cond_d
    :goto_3
    new-array v0, v6, [D

    move-object/from16 p3, v0

    const/16 p4, 0x0

    :cond_e
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([DI[DII)V

    move-object/from16 v5, p0

    const/4 v7, 0x0

    move-object/from16 p0, p3

    sub-int v4, p4, p1

    :goto_4
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v8, v0, :cond_17

    const/4 v12, 0x0

    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    aget v9, v24, v11

    add-int/lit8 v28, v11, -0x1

    aget v15, v24, v28

    add-int/lit8 v28, v11, -0x2

    aget v10, v24, v28

    move/from16 v19, v10

    move/from16 v21, v15

    move/from16 v22, v21

    move/from16 v20, v19

    :goto_6
    if-ge v10, v9, :cond_13

    move/from16 v0, v22

    if-ge v0, v9, :cond_f

    move/from16 v0, v20

    if-ge v0, v15, :cond_12

    add-int v28, v20, v4

    aget-wide v28, p0, v28

    add-int v30, v22, v4

    aget-wide v30, p0, v30

    cmpg-double v28, v28, v30

    if-gtz v28, :cond_12

    :cond_f
    add-int v28, v10, v7

    add-int/lit8 v19, v20, 0x1

    add-int v29, v20, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v21, v22

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    move/from16 v20, v19

    goto :goto_6

    :cond_10
    add-int v28, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e

    goto :goto_3

    :cond_11
    move-object/from16 v5, p3

    const/4 v4, 0x0

    sub-int v7, p4, p1

    goto :goto_4

    :cond_12
    add-int v28, v10, v7

    add-int/lit8 v21, v22, 0x1

    add-int v29, v22, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v19, v20

    goto :goto_7

    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_14
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_16

    move/from16 v10, v23

    add-int/lit8 v28, v8, -0x1

    aget v13, v24, v28

    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    add-int v28, v10, v7

    add-int v29, v10, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    goto :goto_8

    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    :cond_16
    move-object/from16 v25, p0

    move-object/from16 p0, v5

    move-object/from16 v5, v25

    move/from16 v17, v4

    move v4, v7

    move/from16 v7, v17

    move v8, v12

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method private static doSort([FII[FII)V
    .locals 29

    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    return-void

    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/4 v8, 0x0

    const/16 v27, 0x0

    aput p1, v24, v27

    move/from16 v11, p1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    cmpg-float v27, v27, v28

    if-gez v27, :cond_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpg-float v27, v27, v28

    if-lez v27, :cond_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    return-void

    :cond_3
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    cmpl-float v27, v27, v28

    if-lez v27, :cond_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-gez v27, :cond_4

    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    move v9, v11

    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    aget v25, p0, v13

    aget v27, p0, v9

    aput v27, p0, v13

    aput v25, p0, v9

    goto :goto_1

    :cond_6
    const/16 v14, 0x21

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-nez v27, :cond_2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    return-void

    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    :cond_a
    const/16 v18, 0x0

    const/16 v16, 0x1

    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_2

    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    return-void

    :cond_c
    sub-int v6, v23, p1

    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    :cond_d
    :goto_3
    new-array v0, v6, [F

    move-object/from16 p3, v0

    const/16 p4, 0x0

    :cond_e
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    move-object/from16 v5, p0

    const/4 v7, 0x0

    move-object/from16 p0, p3

    sub-int v4, p4, p1

    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    const/4 v12, 0x0

    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    aget v9, v24, v11

    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    move/from16 v19, v10

    move/from16 v21, v15

    move/from16 v22, v21

    move/from16 v20, v19

    :goto_6
    if-ge v10, v9, :cond_13

    move/from16 v0, v22

    if-ge v0, v9, :cond_f

    move/from16 v0, v20

    if-ge v0, v15, :cond_12

    add-int v27, v20, v4

    aget v27, p0, v27

    add-int v28, v22, v4

    aget v28, p0, v28

    cmpg-float v27, v27, v28

    if-gtz v27, :cond_12

    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    add-int v28, v20, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v21, v22

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    move/from16 v20, v19

    goto :goto_6

    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    :cond_11
    move-object/from16 v5, p3

    const/4 v4, 0x0

    sub-int v7, p4, p1

    goto :goto_4

    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    add-int v28, v22, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v19, v20

    goto :goto_7

    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    move/from16 v10, v23

    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    add-int v27, v10, v7

    add-int v28, v10, v4

    aget v28, p0, v28

    aput v28, v5, v27

    goto :goto_8

    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    :cond_16
    move-object/from16 v26, p0

    move-object/from16 p0, v5

    move-object/from16 v5, v26

    move/from16 v17, v4

    move v4, v7

    move/from16 v7, v17

    move v8, v12

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method private static doSort([SII[SII)V
    .locals 29

    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    return-void

    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/4 v8, 0x0

    const/16 v27, 0x0

    aput p1, v24, v27

    move/from16 v11, p1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    aget-short v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget-short v27, p0, v27

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    return-void

    :cond_3
    aget-short v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v27, v11, -0x1

    aget-short v27, p0, v27

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    move v9, v11

    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    aget-short v25, p0, v13

    aget-short v27, p0, v9

    aput-short v27, p0, v13

    aput-short v25, p0, v9

    goto :goto_1

    :cond_6
    const/16 v14, 0x21

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget-short v27, p0, v27

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    return-void

    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    :cond_a
    const/16 v18, 0x0

    const/16 v16, 0x1

    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_2

    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    return-void

    :cond_c
    sub-int v6, v23, p1

    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    :cond_d
    :goto_3
    new-array v0, v6, [S

    move-object/from16 p3, v0

    const/16 p4, 0x0

    :cond_e
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([SI[SII)V

    move-object/from16 v5, p0

    const/4 v7, 0x0

    move-object/from16 p0, p3

    sub-int v4, p4, p1

    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    const/4 v12, 0x0

    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    aget v9, v24, v11

    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    move/from16 v19, v10

    move/from16 v21, v15

    move/from16 v22, v21

    move/from16 v20, v19

    :goto_6
    if-ge v10, v9, :cond_13

    move/from16 v0, v22

    if-ge v0, v9, :cond_f

    move/from16 v0, v20

    if-ge v0, v15, :cond_12

    add-int v27, v20, v4

    aget-short v27, p0, v27

    add-int v28, v22, v4

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_12

    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    add-int v28, v20, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    move/from16 v21, v22

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    move/from16 v20, v19

    goto :goto_6

    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    :cond_11
    move-object/from16 v5, p3

    const/4 v4, 0x0

    sub-int v7, p4, p1

    goto :goto_4

    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    add-int v28, v22, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    move/from16 v19, v20

    goto :goto_7

    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    move/from16 v10, v23

    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    add-int v27, v10, v7

    add-int v28, v10, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    goto :goto_8

    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    :cond_16
    move-object/from16 v26, p0

    move-object/from16 p0, v5

    move-object/from16 v5, v26

    move/from16 v17, v4

    move v4, v7

    move/from16 v7, v17

    move v8, v12

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method static sort([BII)V
    .locals 10

    sub-int v8, p2, p1

    const/16 v9, 0x1d

    if-le v8, v9, :cond_3

    const/16 v8, 0x100

    new-array v1, v8, [I

    add-int/lit8 v2, p1, -0x1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_0

    aget-byte v8, p0, v2

    add-int/lit16 v8, v8, 0x80

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    goto :goto_0

    :cond_0
    const/16 v2, 0x100

    add-int/lit8 v5, p2, 0x1

    :cond_1
    if-le v5, p1, :cond_6

    :cond_2
    add-int/lit8 v2, v2, -0x1

    aget v8, v1, v2

    if-eqz v8, :cond_2

    add-int/lit8 v8, v2, -0x80

    int-to-byte v7, v8

    aget v6, v1, v2

    :goto_1
    add-int/lit8 v5, v5, -0x1

    aput-byte v7, p0, v5

    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_1

    goto :goto_1

    :cond_3
    move v2, p1

    move v3, p1

    :goto_2
    if-ge v2, p2, :cond_6

    add-int/lit8 v8, v2, 0x1

    aget-byte v0, p0, v8

    :goto_3
    aget-byte v8, p0, v3

    if-ge v0, v8, :cond_4

    add-int/lit8 v8, v3, 0x1

    aget-byte v9, p0, v3

    aput-byte v9, p0, v8

    add-int/lit8 v4, v3, -0x1

    if-ne v3, p1, :cond_5

    move v3, v4

    :cond_4
    add-int/lit8 v8, v3, 0x1

    aput-byte v0, p0, v8

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static sort([CIIZ)V
    .locals 29

    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-eqz p3, :cond_3

    move/from16 v15, p1

    move/from16 v16, p1

    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    add-int/lit8 v27, v15, 0x1

    aget-char v6, p0, v27

    :goto_1
    aget-char v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_0

    add-int/lit8 v27, v16, 0x1

    aget-char v28, p0, v16

    aput-char v28, p0, v27

    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput-char v6, p0, v27

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    :cond_1
    move/from16 v16, v17

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-char v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    return-void

    :cond_4
    move/from16 v18, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    aget-char v4, p0, v18

    aget-char v5, p0, p1

    if-ge v4, v5, :cond_5

    move v5, v4

    aget-char v4, p0, p1

    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget-char v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_6

    add-int/lit8 v27, v18, 0x2

    aget-char v28, p0, v18

    aput-char v28, p0, v27

    goto :goto_3

    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput-char v4, p0, v27

    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget-char v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    add-int/lit8 v27, v18, 0x1

    aget-char v28, p0, v18

    aput-char v28, p0, v27

    goto :goto_4

    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput-char v5, p0, v27

    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    :cond_8
    aget-char v19, p0, p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-char v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    add-int/lit8 v27, p2, 0x1

    aget-char v28, p0, p2

    aput-char v28, p0, v27

    goto :goto_5

    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput-char v19, p0, v27

    :cond_a
    return-void

    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    sub-int v9, v10, v25

    sub-int v8, v9, v25

    add-int v11, v10, v25

    add-int v12, v11, v25

    aget-char v27, p0, v9

    aget-char v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget-char v26, p0, v9

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    :cond_c
    aget-char v27, p0, v10

    aget-char v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-char v26, p0, v10

    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    :cond_d
    aget-char v27, p0, v11

    aget-char v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget-char v26, p0, v11

    aget-char v27, p0, v10

    aput-char v27, p0, v11

    aput-char v26, p0, v10

    aget-char v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    :cond_e
    aget-char v27, p0, v12

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    aget-char v26, p0, v12

    aget-char v27, p0, v11

    aput-char v27, p0, v12

    aput-char v26, p0, v11

    aget-char v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-char v27, p0, v10

    aput-char v27, p0, v11

    aput-char v26, p0, v10

    aget-char v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    :cond_f
    move/from16 v21, p1

    move/from16 v13, p2

    aget-char v27, p0, v8

    aget-char v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-char v27, p0, v9

    aget-char v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-char v27, p0, v10

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-char v27, p0, v11

    aget-char v28, p0, v12

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-char v23, p0, v9

    aget-char v24, p0, v11

    aget-char v27, p0, p1

    aput-char v27, p0, v9

    aget-char v27, p0, p2

    aput-char v27, p0, v11

    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget-char v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    add-int/lit8 v18, v21, -0x1

    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    aget-char v7, p0, v18

    move/from16 v0, v23

    if-ge v7, v0, :cond_13

    aget-char v27, p0, v21

    aput-char v27, p0, v18

    aput-char v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_13
    move/from16 v0, v24

    if-le v7, v0, :cond_12

    :goto_7
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget-char v27, p0, v27

    aput-char v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput-char v23, p0, v27

    add-int/lit8 v27, v13, 0x1

    aget-char v27, p0, v27

    aput-char v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput-char v24, p0, v27

    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    :goto_8
    aget-char v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    :cond_15
    move v13, v14

    goto :goto_7

    :cond_16
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    aget-char v27, p0, v21

    aput-char v27, p0, v18

    aget-char v27, p0, v13

    aput-char v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_9
    aput-char v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    :cond_17
    aget-char v27, p0, v13

    aput-char v27, p0, v18

    goto :goto_9

    :cond_18
    :goto_a
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    aget-char v7, p0, v18

    move/from16 v0, v23

    if-ne v7, v0, :cond_1b

    aget-char v27, p0, v21

    aput-char v27, p0, v18

    aput-char v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    :cond_1b
    move/from16 v0, v24

    if-ne v7, v0, :cond_1a

    :goto_c
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    :goto_d
    return-void

    :cond_1d
    move v13, v14

    goto :goto_c

    :cond_1e
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    aget-char v27, p0, v21

    aput-char v27, p0, v18

    aput-char v23, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_e
    aput-char v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    :cond_1f
    aget-char v27, p0, v13

    aput-char v27, p0, v18

    goto :goto_e

    :cond_20
    aget-char v22, p0, v10

    move/from16 v18, p1

    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    aget-char v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_21
    aget-char v7, p0, v18

    move/from16 v0, v22

    if-ge v7, v0, :cond_22

    aget-char v27, p0, v21

    aput-char v27, p0, v18

    aput-char v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    :cond_22
    :goto_11
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_23

    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    :cond_23
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    aget-char v27, p0, v21

    aput-char v27, p0, v18

    aget-char v27, p0, v13

    aput-char v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_12
    aput-char v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    :cond_24
    aput-char v22, p0, v18

    goto :goto_12

    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    goto :goto_d
.end method

.method static sort([CII[CII)V
    .locals 7

    sub-int v5, p2, p1

    const/16 v6, 0xc80

    if-le v5, v6, :cond_3

    const/high16 v5, 0x10000

    new-array v0, v5, [I

    add-int/lit8 v1, p1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_0

    aget-char v5, p0, v1

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000

    add-int/lit8 v2, p2, 0x1

    :cond_1
    if-le v2, p1, :cond_4

    :cond_2
    add-int/lit8 v1, v1, -0x1

    aget v5, v0, v1

    if-eqz v5, :cond_2

    int-to-char v4, v1

    aget v3, v0, v1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    aput-char v4, p0, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_3
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([CII[CII)V

    :cond_4
    return-void
.end method

.method private static sort([DIIZ)V
    .locals 40

    sub-int v36, p2, p1

    add-int/lit8 v23, v36, 0x1

    const/16 v36, 0x2f

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_b

    if-eqz p3, :cond_3

    move/from16 v19, p1

    move/from16 v20, p1

    :goto_0
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    add-int/lit8 v36, v19, 0x1

    aget-wide v8, p0, v36

    :goto_1
    aget-wide v36, p0, v20

    cmpg-double v36, v8, v36

    if-gez v36, :cond_0

    add-int/lit8 v36, v20, 0x1

    aget-wide v38, p0, v20

    aput-wide v38, p0, v36

    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v20, v21

    :cond_0
    add-int/lit8 v36, v20, 0x1

    aput-wide v8, p0, v36

    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v19

    goto :goto_0

    :cond_1
    move/from16 v20, v21

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-wide v36, p0, p1

    add-int/lit8 v38, p1, -0x1

    aget-wide v38, p0, v38

    cmpl-double v36, v36, v38

    if-ltz v36, :cond_4

    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    return-void

    :cond_4
    move/from16 v22, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    aget-wide v4, p0, v22

    aget-wide v6, p0, p1

    cmpg-double v36, v4, v6

    if-gez v36, :cond_5

    move-wide v6, v4

    aget-wide v4, p0, p1

    :cond_5
    :goto_3
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmpg-double v36, v4, v36

    if-gez v36, :cond_6

    add-int/lit8 v36, v22, 0x2

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_3

    :cond_6
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v36, v22, 0x1

    aput-wide v4, p0, v36

    :goto_4
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmpg-double v36, v6, v36

    if-gez v36, :cond_7

    add-int/lit8 v36, v22, 0x1

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_4

    :cond_7
    add-int/lit8 v36, v22, 0x1

    aput-wide v6, p0, v36

    add-int/lit8 p1, p1, 0x1

    move/from16 v22, p1

    goto :goto_2

    :cond_8
    aget-wide v24, p0, p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-wide v36, p0, p2

    cmpg-double v36, v24, v36

    if-gez v36, :cond_9

    add-int/lit8 v36, p2, 0x1

    aget-wide v38, p0, p2

    aput-wide v38, p0, v36

    goto :goto_5

    :cond_9
    add-int/lit8 v36, p2, 0x1

    aput-wide v24, p0, v36

    :cond_a
    return-void

    :cond_b
    shr-int/lit8 v36, v23, 0x3

    shr-int/lit8 v37, v23, 0x6

    add-int v36, v36, v37

    add-int/lit8 v27, v36, 0x1

    add-int v36, p1, p2

    ushr-int/lit8 v14, v36, 0x1

    sub-int v13, v14, v27

    sub-int v12, v13, v27

    add-int v15, v14, v27

    add-int v16, v15, v27

    aget-wide v36, p0, v13

    aget-wide v38, p0, v12

    cmpg-double v36, v36, v38

    if-gez v36, :cond_c

    aget-wide v34, p0, v13

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_c
    aget-wide v36, p0, v14

    aget-wide v38, p0, v13

    cmpg-double v36, v36, v38

    if-gez v36, :cond_d

    aget-wide v34, p0, v14

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_d

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_d
    aget-wide v36, p0, v15

    aget-wide v38, p0, v14

    cmpg-double v36, v36, v38

    if-gez v36, :cond_e

    aget-wide v34, p0, v15

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    aget-wide v36, p0, v13

    cmpg-double v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_e
    aget-wide v36, p0, v16

    aget-wide v38, p0, v15

    cmpg-double v36, v36, v38

    if-gez v36, :cond_f

    aget-wide v34, p0, v16

    aget-wide v36, p0, v15

    aput-wide v36, p0, v16

    aput-wide v34, p0, v15

    aget-wide v36, p0, v14

    cmpg-double v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    aget-wide v36, p0, v13

    cmpg-double v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_f
    move/from16 v26, p1

    move/from16 v17, p2

    aget-wide v36, p0, v12

    aget-wide v38, p0, v13

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v36, p0, v13

    aget-wide v38, p0, v14

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v36, p0, v14

    aget-wide v38, p0, v15

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v36, p0, v15

    aget-wide v38, p0, v16

    cmpl-double v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v30, p0, v13

    aget-wide v32, p0, v15

    aget-wide v36, p0, p1

    aput-wide v36, p0, v13

    aget-wide v36, p0, p2

    aput-wide v36, p0, v15

    :cond_10
    add-int/lit8 v26, v26, 0x1

    aget-wide v36, p0, v26

    cmpg-double v36, v36, v30

    if-ltz v36, :cond_10

    :cond_11
    add-int/lit8 v17, v17, -0x1

    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-gtz v36, :cond_11

    add-int/lit8 v22, v26, -0x1

    :cond_12
    :goto_6
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_14

    aget-wide v10, p0, v22

    cmpg-double v36, v10, v30

    if-gez v36, :cond_13

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aput-wide v10, p0, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    :cond_13
    cmpl-double v36, v10, v32

    if-lez v36, :cond_12

    :goto_7
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-lez v36, :cond_16

    add-int/lit8 v18, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    move/from16 v17, v18

    :cond_14
    add-int/lit8 v36, v26, -0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p1

    add-int/lit8 v36, v26, -0x1

    aput-wide v30, p0, v36

    add-int/lit8 v36, v17, 0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p2

    add-int/lit8 v36, v17, 0x1

    aput-wide v32, p0, v36

    add-int/lit8 v36, v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    add-int/lit8 v36, v17, 0x2

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    move/from16 v0, v26

    if-ge v0, v12, :cond_1c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    :goto_8
    aget-wide v36, p0, v26

    cmpl-double v36, v36, v30

    if-nez v36, :cond_18

    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    :cond_15
    move/from16 v17, v18

    goto :goto_7

    :cond_16
    aget-wide v36, p0, v17

    cmpg-double v36, v36, v30

    if-gez v36, :cond_17

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    add-int/lit8 v26, v26, 0x1

    :goto_9
    aput-wide v10, p0, v17

    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6

    :cond_17
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_9

    :cond_18
    :goto_a
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-nez v36, :cond_19

    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v22, v26, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    aget-wide v10, p0, v22

    cmpl-double v36, v10, v30

    if-nez v36, :cond_1b

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aput-wide v10, p0, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    :cond_1b
    cmpl-double v36, v10, v32

    if-nez v36, :cond_1a

    :goto_c
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-nez v36, :cond_1e

    add-int/lit8 v18, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    move/from16 v17, v18

    :cond_1c
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    :goto_d
    return-void

    :cond_1d
    move/from16 v17, v18

    goto :goto_c

    :cond_1e
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v30

    if-nez v36, :cond_1f

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    add-int/lit8 v26, v26, 0x1

    :goto_e
    aput-wide v10, p0, v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_b

    :cond_1f
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_e

    :cond_20
    aget-wide v28, p0, v14

    move/from16 v22, p1

    :goto_f
    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_25

    aget-wide v36, p0, v22

    cmpl-double v36, v36, v28

    if-nez v36, :cond_21

    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    :cond_21
    aget-wide v10, p0, v22

    cmpg-double v36, v10, v28

    if-gez v36, :cond_22

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aput-wide v10, p0, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    :cond_22
    :goto_11
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v28

    if-lez v36, :cond_23

    add-int/lit8 v17, v17, -0x1

    goto :goto_11

    :cond_23
    aget-wide v36, p0, v17

    cmpg-double v36, v36, v28

    if-gez v36, :cond_24

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    add-int/lit8 v26, v26, 0x1

    :goto_12
    aput-wide v10, p0, v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_10

    :cond_24
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_12

    :cond_25
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    add-int/lit8 v36, v17, 0x1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    goto :goto_d
.end method

.method static sort([DII[DII)V
    .locals 12

    :goto_0
    if-gt p1, p2, :cond_0

    aget-wide v8, p0, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    move v3, p2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-lt v3, p1, :cond_2

    aget-wide v0, p0, v3

    cmpl-double v8, v0, v0

    if-eqz v8, :cond_1

    aget-wide v8, p0, p2

    aput-wide v8, p0, v3

    aput-wide v0, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([DII[DII)V

    move v2, p2

    :goto_2
    if-ge p1, v2, :cond_4

    add-int v8, p1, v2

    ushr-int/lit8 v4, v8, 0x1

    aget-wide v6, p0, v4

    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_3

    add-int/lit8 p1, v4, 0x1

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    :goto_3
    if-gt p1, p2, :cond_5

    aget-wide v8, p0, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    move v3, p1

    add-int/lit8 v5, p1, -0x1

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    if-gt v3, p2, :cond_7

    aget-wide v0, p0, v3

    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-eqz v8, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    const-wide/16 v8, 0x0

    aput-wide v8, p0, v3

    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    aput-wide v8, p0, v5

    goto :goto_4
.end method

.method private static sort([FIIZ)V
    .locals 29

    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-eqz p3, :cond_3

    move/from16 v15, p1

    move/from16 v16, p1

    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    add-int/lit8 v27, v15, 0x1

    aget v6, p0, v27

    :goto_1
    aget v27, p0, v16

    cmpg-float v27, v6, v27

    if-gez v27, :cond_0

    add-int/lit8 v27, v16, 0x1

    aget v28, p0, v16

    aput v28, p0, v27

    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput v6, p0, v27

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    :cond_1
    move/from16 v16, v17

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget v28, p0, v28

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_4

    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    return-void

    :cond_4
    move/from16 v18, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    aget v4, p0, v18

    aget v5, p0, p1

    cmpg-float v27, v4, v5

    if-gez v27, :cond_5

    move v5, v4

    aget v4, p0, p1

    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    cmpg-float v27, v4, v27

    if-gez v27, :cond_6

    add-int/lit8 v27, v18, 0x2

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_3

    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput v4, p0, v27

    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    cmpg-float v27, v5, v27

    if-gez v27, :cond_7

    add-int/lit8 v27, v18, 0x1

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_4

    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput v5, p0, v27

    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    :cond_8
    aget v19, p0, p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget v27, p0, p2

    cmpg-float v27, v19, v27

    if-gez v27, :cond_9

    add-int/lit8 v27, p2, 0x1

    aget v28, p0, p2

    aput v28, p0, v27

    goto :goto_5

    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput v19, p0, v27

    :cond_a
    return-void

    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    sub-int v9, v10, v25

    sub-int v8, v9, v25

    add-int v11, v10, v25

    add-int v12, v11, v25

    aget v27, p0, v9

    aget v28, p0, v8

    cmpg-float v27, v27, v28

    if-gez v27, :cond_c

    aget v26, p0, v9

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_c
    aget v27, p0, v10

    aget v28, p0, v9

    cmpg-float v27, v27, v28

    if-gez v27, :cond_d

    aget v26, p0, v10

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_d

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_d
    aget v27, p0, v11

    aget v28, p0, v10

    cmpg-float v27, v27, v28

    if-gez v27, :cond_e

    aget v26, p0, v11

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    aget v27, p0, v9

    cmpg-float v27, v26, v27

    if-gez v27, :cond_e

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_e

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_e
    aget v27, p0, v12

    aget v28, p0, v11

    cmpg-float v27, v27, v28

    if-gez v27, :cond_f

    aget v26, p0, v12

    aget v27, p0, v11

    aput v27, p0, v12

    aput v26, p0, v11

    aget v27, p0, v10

    cmpg-float v27, v26, v27

    if-gez v27, :cond_f

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    aget v27, p0, v9

    cmpg-float v27, v26, v27

    if-gez v27, :cond_f

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_f

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_f
    move/from16 v21, p1

    move/from16 v13, p2

    aget v27, p0, v8

    aget v28, p0, v9

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_20

    aget v27, p0, v9

    aget v28, p0, v10

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_20

    aget v27, p0, v10

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_20

    aget v27, p0, v11

    aget v28, p0, v12

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_20

    aget v23, p0, v9

    aget v24, p0, v11

    aget v27, p0, p1

    aput v27, p0, v9

    aget v27, p0, p2

    aput v27, p0, v11

    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget v27, p0, v21

    cmpg-float v27, v27, v23

    if-ltz v27, :cond_10

    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-gtz v27, :cond_11

    add-int/lit8 v18, v21, -0x1

    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    aget v7, p0, v18

    cmpg-float v27, v7, v23

    if-gez v27, :cond_13

    aget v27, p0, v21

    aput v27, p0, v18

    aput v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_13
    cmpl-float v27, v7, v24

    if-lez v27, :cond_12

    :goto_7
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-lez v27, :cond_16

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget v27, p0, v27

    aput v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput v23, p0, v27

    add-int/lit8 v27, v13, 0x1

    aget v27, p0, v27

    aput v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput v24, p0, v27

    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    :goto_8
    aget v27, p0, v21

    cmpl-float v27, v27, v23

    if-nez v27, :cond_18

    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    :cond_15
    move v13, v14

    goto :goto_7

    :cond_16
    aget v27, p0, v13

    cmpg-float v27, v27, v23

    if-gez v27, :cond_17

    aget v27, p0, v21

    aput v27, p0, v18

    aget v27, p0, v13

    aput v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_9
    aput v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    :cond_17
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_9

    :cond_18
    :goto_a
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-nez v27, :cond_19

    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    aget v7, p0, v18

    cmpl-float v27, v7, v23

    if-nez v27, :cond_1b

    aget v27, p0, v21

    aput v27, p0, v18

    aput v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    :cond_1b
    cmpl-float v27, v7, v24

    if-nez v27, :cond_1a

    :goto_c
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-nez v27, :cond_1e

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    :goto_d
    return-void

    :cond_1d
    move v13, v14

    goto :goto_c

    :cond_1e
    aget v27, p0, v13

    cmpl-float v27, v27, v23

    if-nez v27, :cond_1f

    aget v27, p0, v21

    aput v27, p0, v18

    aget v27, p0, v13

    aput v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_e
    aput v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    :cond_1f
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_e

    :cond_20
    aget v22, p0, v10

    move/from16 v18, p1

    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    aget v27, p0, v18

    cmpl-float v27, v27, v22

    if-nez v27, :cond_21

    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_21
    aget v7, p0, v18

    cmpg-float v27, v7, v22

    if-gez v27, :cond_22

    aget v27, p0, v21

    aput v27, p0, v18

    aput v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    :cond_22
    :goto_11
    aget v27, p0, v13

    cmpl-float v27, v27, v22

    if-lez v27, :cond_23

    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    :cond_23
    aget v27, p0, v13

    cmpg-float v27, v27, v22

    if-gez v27, :cond_24

    aget v27, p0, v21

    aput v27, p0, v18

    aget v27, p0, v13

    aput v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_12
    aput v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    :cond_24
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_12

    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    goto :goto_d
.end method

.method static sort([FII[FII)V
    .locals 8

    const/4 v7, 0x0

    :goto_0
    if-gt p1, p2, :cond_0

    aget v6, p0, p2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    move v2, p2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_2

    aget v0, p0, v2

    cmpl-float v6, v0, v0

    if-eqz v6, :cond_1

    aget v6, p0, p2

    aput v6, p0, v2

    aput v0, p0, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([FII[FII)V

    move v1, p2

    :goto_2
    if-ge p1, v1, :cond_4

    add-int v6, p1, v1

    ushr-int/lit8 v3, v6, 0x1

    aget v4, p0, v3

    cmpg-float v6, v4, v7

    if-gez v6, :cond_3

    add-int/lit8 p1, v3, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    :goto_3
    if-gt p1, p2, :cond_5

    aget v6, p0, p1

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    if-gez v6, :cond_5

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    move v2, p1

    add-int/lit8 v5, p1, -0x1

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_7

    aget v0, p0, v2

    cmpl-float v6, v0, v7

    if-eqz v6, :cond_8

    :cond_7
    return-void

    :cond_8
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    if-gez v6, :cond_6

    aput v7, p0, v2

    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x80000000

    aput v6, p0, v5

    goto :goto_4
.end method

.method private static sort([IIIZ)V
    .locals 29

    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-eqz p3, :cond_3

    move/from16 v15, p1

    move/from16 v16, p1

    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    add-int/lit8 v27, v15, 0x1

    aget v6, p0, v27

    :goto_1
    aget v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_0

    add-int/lit8 v27, v16, 0x1

    aget v28, p0, v16

    aput v28, p0, v27

    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput v6, p0, v27

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    :cond_1
    move/from16 v16, v17

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    return-void

    :cond_4
    move/from16 v18, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    aget v4, p0, v18

    aget v5, p0, p1

    if-ge v4, v5, :cond_5

    move v5, v4

    aget v4, p0, p1

    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_6

    add-int/lit8 v27, v18, 0x2

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_3

    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput v4, p0, v27

    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    add-int/lit8 v27, v18, 0x1

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_4

    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput v5, p0, v27

    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    :cond_8
    aget v19, p0, p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    add-int/lit8 v27, p2, 0x1

    aget v28, p0, p2

    aput v28, p0, v27

    goto :goto_5

    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput v19, p0, v27

    :cond_a
    return-void

    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    sub-int v9, v10, v25

    sub-int v8, v9, v25

    add-int v11, v10, v25

    add-int v12, v11, v25

    aget v27, p0, v9

    aget v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget v26, p0, v9

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_c
    aget v27, p0, v10

    aget v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget v26, p0, v10

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_d
    aget v27, p0, v11

    aget v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget v26, p0, v11

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    aget v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_e
    aget v27, p0, v12

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    aget v26, p0, v12

    aget v27, p0, v11

    aput v27, p0, v12

    aput v26, p0, v11

    aget v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    aget v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    :cond_f
    move/from16 v21, p1

    move/from16 v13, p2

    aget v27, p0, v8

    aget v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget v27, p0, v9

    aget v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget v27, p0, v10

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget v27, p0, v11

    aget v28, p0, v12

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget v23, p0, v9

    aget v24, p0, v11

    aget v27, p0, p1

    aput v27, p0, v9

    aget v27, p0, p2

    aput v27, p0, v11

    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    add-int/lit8 v18, v21, -0x1

    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    aget v7, p0, v18

    move/from16 v0, v23

    if-ge v7, v0, :cond_13

    aget v27, p0, v21

    aput v27, p0, v18

    aput v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_13
    move/from16 v0, v24

    if-le v7, v0, :cond_12

    :goto_7
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget v27, p0, v27

    aput v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput v23, p0, v27

    add-int/lit8 v27, v13, 0x1

    aget v27, p0, v27

    aput v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput v24, p0, v27

    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    :goto_8
    aget v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    :cond_15
    move v13, v14

    goto :goto_7

    :cond_16
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    aget v27, p0, v21

    aput v27, p0, v18

    aget v27, p0, v13

    aput v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_9
    aput v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    :cond_17
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_9

    :cond_18
    :goto_a
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    aget v7, p0, v18

    move/from16 v0, v23

    if-ne v7, v0, :cond_1b

    aget v27, p0, v21

    aput v27, p0, v18

    aput v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    :cond_1b
    move/from16 v0, v24

    if-ne v7, v0, :cond_1a

    :goto_c
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    :goto_d
    return-void

    :cond_1d
    move v13, v14

    goto :goto_c

    :cond_1e
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    aget v27, p0, v21

    aput v27, p0, v18

    aput v23, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_e
    aput v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    :cond_1f
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_e

    :cond_20
    aget v22, p0, v10

    move/from16 v18, p1

    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    aget v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_21
    aget v7, p0, v18

    move/from16 v0, v22

    if-ge v7, v0, :cond_22

    aget v27, p0, v21

    aput v27, p0, v18

    aput v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    :cond_22
    :goto_11
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_23

    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    :cond_23
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    aget v27, p0, v21

    aput v27, p0, v18

    aget v27, p0, v13

    aput v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_12
    aput v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    :cond_24
    aput v22, p0, v18

    goto :goto_12

    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    goto :goto_d
.end method

.method static sort([III[III)V
    .locals 29

    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    return-void

    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/4 v8, 0x0

    const/16 v27, 0x0

    aput p1, v24, v27

    move/from16 v11, p1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    return-void

    :cond_3
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_4

    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    move v9, v11

    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    aget v25, p0, v13

    aget v27, p0, v9

    aput v27, p0, v13

    aput v25, p0, v9

    goto :goto_1

    :cond_6
    const/16 v14, 0x21

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    return-void

    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    :cond_a
    const/16 v18, 0x0

    const/16 v16, 0x1

    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_2

    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    return-void

    :cond_c
    sub-int v6, v23, p1

    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    :cond_d
    :goto_3
    new-array v0, v6, [I

    move-object/from16 p3, v0

    const/16 p4, 0x0

    :cond_e
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v5, p0

    const/4 v7, 0x0

    move-object/from16 p0, p3

    sub-int v4, p4, p1

    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    const/4 v12, 0x0

    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    aget v9, v24, v11

    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    move/from16 v19, v10

    move/from16 v21, v15

    move/from16 v22, v21

    move/from16 v20, v19

    :goto_6
    if-ge v10, v9, :cond_13

    move/from16 v0, v22

    if-ge v0, v9, :cond_f

    move/from16 v0, v20

    if-ge v0, v15, :cond_12

    add-int v27, v20, v4

    aget v27, p0, v27

    add-int v28, v22, v4

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-gt v0, v1, :cond_12

    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    add-int v28, v20, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v21, v22

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    move/from16 v20, v19

    goto :goto_6

    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    :cond_11
    move-object/from16 v5, p3

    const/4 v4, 0x0

    sub-int v7, p4, p1

    goto :goto_4

    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    add-int v28, v22, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v19, v20

    goto :goto_7

    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    move/from16 v10, v23

    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    add-int v27, v10, v7

    add-int v28, v10, v4

    aget v28, p0, v28

    aput v28, v5, v27

    goto :goto_8

    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    :cond_16
    move-object/from16 v26, p0

    move-object/from16 p0, v5

    move-object/from16 v5, v26

    move/from16 v17, v4

    move v4, v7

    move/from16 v7, v17

    move v8, v12

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method private static sort([JIIZ)V
    .locals 40

    sub-int v36, p2, p1

    add-int/lit8 v23, v36, 0x1

    const/16 v36, 0x2f

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_b

    if-eqz p3, :cond_3

    move/from16 v19, p1

    move/from16 v20, p1

    :goto_0
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    add-int/lit8 v36, v19, 0x1

    aget-wide v8, p0, v36

    :goto_1
    aget-wide v36, p0, v20

    cmp-long v36, v8, v36

    if-gez v36, :cond_0

    add-int/lit8 v36, v20, 0x1

    aget-wide v38, p0, v20

    aput-wide v38, p0, v36

    add-int/lit8 v21, v20, -0x1

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v20, v21

    :cond_0
    add-int/lit8 v36, v20, 0x1

    aput-wide v8, p0, v36

    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v19

    goto :goto_0

    :cond_1
    move/from16 v20, v21

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-wide v36, p0, p1

    add-int/lit8 v38, p1, -0x1

    aget-wide v38, p0, v38

    cmp-long v36, v36, v38

    if-ltz v36, :cond_4

    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    return-void

    :cond_4
    move/from16 v22, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    aget-wide v4, p0, v22

    aget-wide v6, p0, p1

    cmp-long v36, v4, v6

    if-gez v36, :cond_5

    move-wide v6, v4

    aget-wide v4, p0, p1

    :cond_5
    :goto_3
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmp-long v36, v4, v36

    if-gez v36, :cond_6

    add-int/lit8 v36, v22, 0x2

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_3

    :cond_6
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v36, v22, 0x1

    aput-wide v4, p0, v36

    :goto_4
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmp-long v36, v6, v36

    if-gez v36, :cond_7

    add-int/lit8 v36, v22, 0x1

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_4

    :cond_7
    add-int/lit8 v36, v22, 0x1

    aput-wide v6, p0, v36

    add-int/lit8 p1, p1, 0x1

    move/from16 v22, p1

    goto :goto_2

    :cond_8
    aget-wide v24, p0, p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-wide v36, p0, p2

    cmp-long v36, v24, v36

    if-gez v36, :cond_9

    add-int/lit8 v36, p2, 0x1

    aget-wide v38, p0, p2

    aput-wide v38, p0, v36

    goto :goto_5

    :cond_9
    add-int/lit8 v36, p2, 0x1

    aput-wide v24, p0, v36

    :cond_a
    return-void

    :cond_b
    shr-int/lit8 v36, v23, 0x3

    shr-int/lit8 v37, v23, 0x6

    add-int v36, v36, v37

    add-int/lit8 v27, v36, 0x1

    add-int v36, p1, p2

    ushr-int/lit8 v14, v36, 0x1

    sub-int v13, v14, v27

    sub-int v12, v13, v27

    add-int v15, v14, v27

    add-int v16, v15, v27

    aget-wide v36, p0, v13

    aget-wide v38, p0, v12

    cmp-long v36, v36, v38

    if-gez v36, :cond_c

    aget-wide v34, p0, v13

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_c
    aget-wide v36, p0, v14

    aget-wide v38, p0, v13

    cmp-long v36, v36, v38

    if-gez v36, :cond_d

    aget-wide v34, p0, v14

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_d

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_d
    aget-wide v36, p0, v15

    aget-wide v38, p0, v14

    cmp-long v36, v36, v38

    if-gez v36, :cond_e

    aget-wide v34, p0, v15

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    aget-wide v36, p0, v13

    cmp-long v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_e
    aget-wide v36, p0, v16

    aget-wide v38, p0, v15

    cmp-long v36, v36, v38

    if-gez v36, :cond_f

    aget-wide v34, p0, v16

    aget-wide v36, p0, v15

    aput-wide v36, p0, v16

    aput-wide v34, p0, v15

    aget-wide v36, p0, v14

    cmp-long v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    aget-wide v36, p0, v13

    cmp-long v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    :cond_f
    move/from16 v26, p1

    move/from16 v17, p2

    aget-wide v36, p0, v12

    aget-wide v38, p0, v13

    cmp-long v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v36, p0, v13

    aget-wide v38, p0, v14

    cmp-long v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v36, p0, v14

    aget-wide v38, p0, v15

    cmp-long v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v36, p0, v15

    aget-wide v38, p0, v16

    cmp-long v36, v36, v38

    if-eqz v36, :cond_20

    aget-wide v30, p0, v13

    aget-wide v32, p0, v15

    aget-wide v36, p0, p1

    aput-wide v36, p0, v13

    aget-wide v36, p0, p2

    aput-wide v36, p0, v15

    :cond_10
    add-int/lit8 v26, v26, 0x1

    aget-wide v36, p0, v26

    cmp-long v36, v36, v30

    if-ltz v36, :cond_10

    :cond_11
    add-int/lit8 v17, v17, -0x1

    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-gtz v36, :cond_11

    add-int/lit8 v22, v26, -0x1

    :cond_12
    :goto_6
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_14

    aget-wide v10, p0, v22

    cmp-long v36, v10, v30

    if-gez v36, :cond_13

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aput-wide v10, p0, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    :cond_13
    cmp-long v36, v10, v32

    if-lez v36, :cond_12

    :goto_7
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-lez v36, :cond_16

    add-int/lit8 v18, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    move/from16 v17, v18

    :cond_14
    add-int/lit8 v36, v26, -0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p1

    add-int/lit8 v36, v26, -0x1

    aput-wide v30, p0, v36

    add-int/lit8 v36, v17, 0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p2

    add-int/lit8 v36, v17, 0x1

    aput-wide v32, p0, v36

    add-int/lit8 v36, v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    add-int/lit8 v36, v17, 0x2

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    move/from16 v0, v26

    if-ge v0, v12, :cond_1c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    :goto_8
    aget-wide v36, p0, v26

    cmp-long v36, v36, v30

    if-nez v36, :cond_18

    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    :cond_15
    move/from16 v17, v18

    goto :goto_7

    :cond_16
    aget-wide v36, p0, v17

    cmp-long v36, v36, v30

    if-gez v36, :cond_17

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    add-int/lit8 v26, v26, 0x1

    :goto_9
    aput-wide v10, p0, v17

    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6

    :cond_17
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_9

    :cond_18
    :goto_a
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-nez v36, :cond_19

    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v22, v26, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    aget-wide v10, p0, v22

    cmp-long v36, v10, v30

    if-nez v36, :cond_1b

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aput-wide v10, p0, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    :cond_1b
    cmp-long v36, v10, v32

    if-nez v36, :cond_1a

    :goto_c
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-nez v36, :cond_1e

    add-int/lit8 v18, v17, -0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    move/from16 v17, v18

    :cond_1c
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    :goto_d
    return-void

    :cond_1d
    move/from16 v17, v18

    goto :goto_c

    :cond_1e
    aget-wide v36, p0, v17

    cmp-long v36, v36, v30

    if-nez v36, :cond_1f

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aput-wide v30, p0, v26

    add-int/lit8 v26, v26, 0x1

    :goto_e
    aput-wide v10, p0, v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_b

    :cond_1f
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_e

    :cond_20
    aget-wide v28, p0, v14

    move/from16 v22, p1

    :goto_f
    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_25

    aget-wide v36, p0, v22

    cmp-long v36, v36, v28

    if-nez v36, :cond_21

    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    :cond_21
    aget-wide v10, p0, v22

    cmp-long v36, v10, v28

    if-gez v36, :cond_22

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aput-wide v10, p0, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    :cond_22
    :goto_11
    aget-wide v36, p0, v17

    cmp-long v36, v36, v28

    if-lez v36, :cond_23

    add-int/lit8 v17, v17, -0x1

    goto :goto_11

    :cond_23
    aget-wide v36, p0, v17

    cmp-long v36, v36, v28

    if-gez v36, :cond_24

    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    add-int/lit8 v26, v26, 0x1

    :goto_12
    aput-wide v10, p0, v17

    add-int/lit8 v17, v17, -0x1

    goto :goto_10

    :cond_24
    aput-wide v28, p0, v22

    goto :goto_12

    :cond_25
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    add-int/lit8 v36, v17, 0x1

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    goto :goto_d
.end method

.method static sort([JII[JII)V
    .locals 32

    sub-int v28, p2, p1

    const/16 v29, 0x11e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    return-void

    :cond_0
    const/16 v28, 0x44

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/4 v8, 0x0

    const/16 v28, 0x0

    aput p1, v24, v28

    move/from16 v11, p1

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-gez v28, :cond_3

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-lez v28, :cond_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v28, 0x43

    move/from16 v0, v28

    if-ne v8, v0, :cond_8

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    return-void

    :cond_3
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-lez v28, :cond_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-gez v28, :cond_4

    :cond_5
    aget v28, v24, v8

    add-int/lit8 v13, v28, -0x1

    move v9, v11

    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    aget-wide v26, p0, v13

    aget-wide v28, p0, v9

    aput-wide v28, p0, v13

    aput-wide v26, p0, v9

    goto :goto_1

    :cond_6
    const/16 v14, 0x21

    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-nez v28, :cond_2

    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    return-void

    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    :cond_9
    aget v28, v24, v8

    add-int/lit8 v23, p2, 0x1

    move/from16 v0, v28

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    :cond_a
    const/16 v18, 0x0

    const/16 v16, 0x1

    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v28, v18, 0x1

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v18, v0

    goto :goto_2

    :cond_b
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_a

    return-void

    :cond_c
    sub-int v6, v23, p1

    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    :cond_d
    :goto_3
    new-array v0, v6, [J

    move-object/from16 p3, v0

    const/16 p4, 0x0

    :cond_e
    if-nez v18, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    move-object/from16 v5, p0

    const/4 v7, 0x0

    move-object/from16 p0, p3

    sub-int v4, p4, p1

    :goto_4
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v8, v0, :cond_17

    const/4 v12, 0x0

    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    aget v9, v24, v11

    add-int/lit8 v28, v11, -0x1

    aget v15, v24, v28

    add-int/lit8 v28, v11, -0x2

    aget v10, v24, v28

    move/from16 v19, v10

    move/from16 v21, v15

    move/from16 v22, v21

    move/from16 v20, v19

    :goto_6
    if-ge v10, v9, :cond_13

    move/from16 v0, v22

    if-ge v0, v9, :cond_f

    move/from16 v0, v20

    if-ge v0, v15, :cond_12

    add-int v28, v20, v4

    aget-wide v28, p0, v28

    add-int v30, v22, v4

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-gtz v28, :cond_12

    :cond_f
    add-int v28, v10, v7

    add-int/lit8 v19, v20, 0x1

    add-int v29, v20, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v21, v22

    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    move/from16 v20, v19

    goto :goto_6

    :cond_10
    add-int v28, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e

    goto :goto_3

    :cond_11
    move-object/from16 v5, p3

    const/4 v4, 0x0

    sub-int v7, p4, p1

    goto :goto_4

    :cond_12
    add-int v28, v10, v7

    add-int/lit8 v21, v22, 0x1

    add-int v29, v22, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v19, v20

    goto :goto_7

    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    :cond_14
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_16

    move/from16 v10, v23

    add-int/lit8 v28, v8, -0x1

    aget v13, v24, v28

    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    add-int v28, v10, v7

    add-int v29, v10, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    goto :goto_8

    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    :cond_16
    move-object/from16 v25, p0

    move-object/from16 p0, v5

    move-object/from16 v5, v25

    move/from16 v17, v4

    move v4, v7

    move/from16 v7, v17

    move v8, v12

    goto/16 :goto_4

    :cond_17
    return-void
.end method

.method private static sort([SIIZ)V
    .locals 29

    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    if-eqz p3, :cond_3

    move/from16 v15, p1

    move/from16 v16, p1

    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    add-int/lit8 v27, v15, 0x1

    aget-short v6, p0, v27

    :goto_1
    aget-short v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_0

    add-int/lit8 v27, v16, 0x1

    aget-short v28, p0, v16

    aput-short v28, p0, v27

    add-int/lit8 v17, v16, -0x1

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput-short v6, p0, v27

    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    :cond_1
    move/from16 v16, v17

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-short v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    return-void

    :cond_4
    move/from16 v18, p1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    aget-short v4, p0, v18

    aget-short v5, p0, p1

    if-ge v4, v5, :cond_5

    move v5, v4

    aget-short v4, p0, p1

    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget-short v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_6

    add-int/lit8 v27, v18, 0x2

    aget-short v28, p0, v18

    aput-short v28, p0, v27

    goto :goto_3

    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput-short v4, p0, v27

    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget-short v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    add-int/lit8 v27, v18, 0x1

    aget-short v28, p0, v18

    aput-short v28, p0, v27

    goto :goto_4

    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput-short v5, p0, v27

    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    :cond_8
    aget-short v19, p0, p2

    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-short v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    add-int/lit8 v27, p2, 0x1

    aget-short v28, p0, p2

    aput-short v28, p0, v27

    goto :goto_5

    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput-short v19, p0, v27

    :cond_a
    return-void

    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    sub-int v9, v10, v25

    sub-int v8, v9, v25

    add-int v11, v10, v25

    add-int v12, v11, v25

    aget-short v27, p0, v9

    aget-short v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget-short v26, p0, v9

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    :cond_c
    aget-short v27, p0, v10

    aget-short v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-short v26, p0, v10

    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    :cond_d
    aget-short v27, p0, v11

    aget-short v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget-short v26, p0, v11

    aget-short v27, p0, v10

    aput-short v27, p0, v11

    aput-short v26, p0, v10

    aget-short v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    :cond_e
    aget-short v27, p0, v12

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    aget-short v26, p0, v12

    aget-short v27, p0, v11

    aput-short v27, p0, v12

    aput-short v26, p0, v11

    aget-short v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-short v27, p0, v10

    aput-short v27, p0, v11

    aput-short v26, p0, v10

    aget-short v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    :cond_f
    move/from16 v21, p1

    move/from16 v13, p2

    aget-short v27, p0, v8

    aget-short v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-short v27, p0, v9

    aget-short v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-short v27, p0, v10

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-short v27, p0, v11

    aget-short v28, p0, v12

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_20

    aget-short v23, p0, v9

    aget-short v24, p0, v11

    aget-short v27, p0, p1

    aput-short v27, p0, v9

    aget-short v27, p0, p2

    aput-short v27, p0, v11

    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget-short v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    add-int/lit8 v18, v21, -0x1

    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    aget-short v7, p0, v18

    move/from16 v0, v23

    if-ge v7, v0, :cond_13

    aget-short v27, p0, v21

    aput-short v27, p0, v18

    aput-short v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    :cond_13
    move/from16 v0, v24

    if-le v7, v0, :cond_12

    :goto_7
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget-short v27, p0, v27

    aput-short v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput-short v23, p0, v27

    add-int/lit8 v27, v13, 0x1

    aget-short v27, p0, v27

    aput-short v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput-short v24, p0, v27

    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    :goto_8
    aget-short v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    :cond_15
    move v13, v14

    goto :goto_7

    :cond_16
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    aget-short v27, p0, v21

    aput-short v27, p0, v18

    aget-short v27, p0, v13

    aput-short v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_9
    aput-short v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    :cond_17
    aget-short v27, p0, v13

    aput-short v27, p0, v18

    goto :goto_9

    :cond_18
    :goto_a
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    aget-short v7, p0, v18

    move/from16 v0, v23

    if-ne v7, v0, :cond_1b

    aget-short v27, p0, v21

    aput-short v27, p0, v18

    aput-short v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    :cond_1b
    move/from16 v0, v24

    if-ne v7, v0, :cond_1a

    :goto_c
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    add-int/lit8 v14, v13, -0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    :goto_d
    return-void

    :cond_1d
    move v13, v14

    goto :goto_c

    :cond_1e
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    aget-short v27, p0, v21

    aput-short v27, p0, v18

    aput-short v23, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_e
    aput-short v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    :cond_1f
    aget-short v27, p0, v13

    aput-short v27, p0, v18

    goto :goto_e

    :cond_20
    aget-short v22, p0, v10

    move/from16 v18, p1

    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    aget-short v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_21
    aget-short v7, p0, v18

    move/from16 v0, v22

    if-ge v7, v0, :cond_22

    aget-short v27, p0, v21

    aput-short v27, p0, v18

    aput-short v7, p0, v21

    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    :cond_22
    :goto_11
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_23

    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    :cond_23
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    aget-short v27, p0, v21

    aput-short v27, p0, v18

    aget-short v27, p0, v13

    aput-short v27, p0, v21

    add-int/lit8 v21, v21, 0x1

    :goto_12
    aput-short v7, p0, v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    :cond_24
    aput-short v22, p0, v18

    goto :goto_12

    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    add-int/lit8 v27, v13, 0x1

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    goto :goto_d
.end method

.method static sort([SII[SII)V
    .locals 7

    sub-int v5, p2, p1

    const/16 v6, 0xc80

    if-le v5, v6, :cond_3

    const/high16 v5, 0x10000

    new-array v0, v5, [I

    add-int/lit8 v1, p1, -0x1

    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_0

    aget-short v5, p0, v1

    const/16 v6, -0x8000

    sub-int/2addr v5, v6

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000

    add-int/lit8 v2, p2, 0x1

    :cond_1
    if-le v2, p1, :cond_4

    :cond_2
    add-int/lit8 v1, v1, -0x1

    aget v5, v0, v1

    if-eqz v5, :cond_2

    add-int/lit16 v5, v1, -0x8000

    int-to-short v4, v5

    aget v3, v0, v1

    :goto_1
    add-int/lit8 v2, v2, -0x1

    aput-short v4, p0, v2

    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_3
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([SII[SII)V

    :cond_4
    return-void
.end method
