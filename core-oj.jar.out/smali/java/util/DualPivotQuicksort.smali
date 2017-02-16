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

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static doSort([CII[CII)V
    .locals 29
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1526
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 1527
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1528
    return-void

    .line 1535
    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1536
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 1539
    move/from16 v11, p1

    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    .line 1540
    aget-char v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 1541
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

    .line 1560
    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    .line 1561
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1562
    return-void

    .line 1542
    :cond_3
    aget-char v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 1543
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

    .line 1544
    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    .line 1545
    aget-char v25, p0, v13

    .local v25, "t":C
    aget-char v27, p0, v9

    aput-char v27, p0, v13

    aput-char v25, p0, v9

    goto :goto_1

    .line 1548
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":C
    :cond_6
    const/16 v14, 0x21

    .local v14, "m":I
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

    .line 1549
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    .line 1550
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1551
    return-void

    .line 1539
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    .line 1568
    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 1569
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 1575
    :cond_a
    const/16 v18, 0x0

    .line 1576
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_2

    .line 1570
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    .line 1571
    return-void

    .line 1581
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    .line 1582
    .local v6, "blen":I
    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    .line 1583
    :cond_d
    :goto_3
    new-array v0, v6, [C

    move-object/from16 p3, v0

    .line 1584
    const/16 p4, 0x0

    .line 1586
    :cond_e
    if-nez v18, :cond_11

    .line 1587
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 1588
    move-object/from16 v5, p0

    .line 1589
    .local v5, "b":[C
    const/4 v7, 0x0

    .line 1590
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 1591
    sub-int v4, p4, p1

    .line 1599
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    .line 1600
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    .line 1601
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 1602
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    .line 1603
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

    .line 1604
    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    move/from16 v21, v22

    .line 1602
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    .line 1582
    .end local v4    # "ao":I
    .end local v5    # "b":[C
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    .line 1593
    :cond_11
    move-object/from16 v5, p3

    .line 1594
    .restart local v5    # "b":[C
    const/4 v4, 0x0

    .line 1595
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_4

    .line 1606
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    .line 1609
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 1600
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 1611
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    .line 1612
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    .line 1613
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget-char v28, p0, v28

    aput-char v28, v5, v27

    goto :goto_8

    .line 1615
    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 1617
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    .local v26, "t":[C
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 1618
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 1599
    move v8, v12

    goto/16 :goto_4

    .line 1524
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[C
    :cond_17
    return-void
.end method

.method private static doSort([DII[DII)V
    .locals 32
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 2645
    sub-int v28, p2, p1

    const/16 v29, 0x11e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 2646
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2647
    return-void

    .line 2654
    :cond_0
    const/16 v28, 0x44

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 2655
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v28, 0x0

    aput p1, v24, v28

    .line 2658
    move/from16 v11, p1

    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    .line 2659
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    .line 2660
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpg-double v28, v28, v30

    if-lez v28, :cond_1

    .line 2679
    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v28, 0x43

    move/from16 v0, v28

    if-ne v8, v0, :cond_8

    .line 2680
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2681
    return-void

    .line 2661
    :cond_3
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmpl-double v28, v28, v30

    if-lez v28, :cond_6

    .line 2662
    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpl-double v28, v28, v30

    if-gez v28, :cond_4

    .line 2663
    :cond_5
    aget v28, v24, v8

    add-int/lit8 v13, v28, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    .line 2664
    aget-wide v26, p0, v13

    .local v26, "t":D
    aget-wide v28, p0, v9

    aput-wide v28, p0, v13

    aput-wide v26, p0, v9

    goto :goto_1

    .line 2667
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v26    # "t":D
    :cond_6
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmpl-double v28, v28, v30

    if-nez v28, :cond_2

    .line 2668
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    .line 2669
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2670
    return-void

    .line 2658
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    .line 2687
    :cond_9
    aget v28, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v28

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 2688
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 2694
    :cond_a
    const/16 v18, 0x0

    .line 2695
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v28, v18, 0x1

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_2

    .line 2689
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_a

    .line 2690
    return-void

    .line 2700
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    .line 2701
    .local v6, "blen":I
    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    .line 2702
    :cond_d
    :goto_3
    new-array v0, v6, [D

    move-object/from16 p3, v0

    .line 2703
    const/16 p4, 0x0

    .line 2705
    :cond_e
    if-nez v18, :cond_11

    .line 2706
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 2707
    move-object/from16 v5, p0

    .line 2708
    .local v5, "b":[D
    const/4 v7, 0x0

    .line 2709
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 2710
    sub-int v4, p4, p1

    .line 2718
    .local v4, "ao":I
    :goto_4
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v8, v0, :cond_17

    .line 2719
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    .line 2720
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v28, v11, -0x1

    aget v15, v24, v28

    .line 2721
    .local v15, "mi":I
    add-int/lit8 v28, v11, -0x2

    aget v10, v24, v28

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    .line 2722
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

    .line 2723
    :cond_f
    add-int v28, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v29, v20, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v21, v22

    .line 2721
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    .line 2701
    .end local v4    # "ao":I
    .end local v5    # "b":[D
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v28, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e

    goto :goto_3

    .line 2712
    :cond_11
    move-object/from16 v5, p3

    .line 2713
    .restart local v5    # "b":[D
    const/4 v4, 0x0

    .line 2714
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_4

    .line 2725
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v28, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v29, v22, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    .line 2728
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 2719
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 2730
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_16

    .line 2731
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v28, v8, -0x1

    aget v13, v24, v28

    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    .line 2732
    add-int v28, v10, v7

    add-int v29, v10, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    goto :goto_8

    .line 2734
    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 2736
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v25, p0

    .local v25, "t":[D
    move-object/from16 p0, v5

    move-object/from16 v5, v25

    .line 2737
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 2718
    move v8, v12

    goto/16 :goto_4

    .line 2643
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v25    # "t":[D
    :cond_17
    return-void
.end method

.method private static doSort([FII[FII)V
    .locals 29
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 2106
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 2107
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2108
    return-void

    .line 2115
    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 2116
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 2119
    move/from16 v11, p1

    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    .line 2120
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    cmpg-float v27, v27, v28

    if-gez v27, :cond_3

    .line 2121
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpg-float v27, v27, v28

    if-lez v27, :cond_1

    .line 2140
    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    .line 2141
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2142
    return-void

    .line 2122
    :cond_3
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    cmpl-float v27, v27, v28

    if-lez v27, :cond_6

    .line 2123
    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-gez v27, :cond_4

    .line 2124
    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    .line 2125
    aget v25, p0, v13

    .local v25, "t":F
    aget v27, p0, v9

    aput v27, p0, v13

    aput v25, p0, v9

    goto :goto_1

    .line 2128
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":F
    :cond_6
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v27, v11, -0x1

    aget v27, p0, v27

    aget v28, p0, v11

    cmpl-float v27, v27, v28

    if-nez v27, :cond_2

    .line 2129
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    .line 2130
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2131
    return-void

    .line 2119
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    .line 2148
    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 2149
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 2155
    :cond_a
    const/16 v18, 0x0

    .line 2156
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_2

    .line 2150
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    .line 2151
    return-void

    .line 2161
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    .line 2162
    .local v6, "blen":I
    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    .line 2163
    :cond_d
    :goto_3
    new-array v0, v6, [F

    move-object/from16 p3, v0

    .line 2164
    const/16 p4, 0x0

    .line 2166
    :cond_e
    if-nez v18, :cond_11

    .line 2167
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 2168
    move-object/from16 v5, p0

    .line 2169
    .local v5, "b":[F
    const/4 v7, 0x0

    .line 2170
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 2171
    sub-int v4, p4, p1

    .line 2179
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    .line 2180
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    .line 2181
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 2182
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    .line 2183
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

    .line 2184
    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v21, v22

    .line 2182
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    .line 2162
    .end local v4    # "ao":I
    .end local v5    # "b":[F
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    .line 2173
    :cond_11
    move-object/from16 v5, p3

    .line 2174
    .restart local v5    # "b":[F
    const/4 v4, 0x0

    .line 2175
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_4

    .line 2186
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    .line 2189
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 2180
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 2191
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    .line 2192
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    .line 2193
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget v28, p0, v28

    aput v28, v5, v27

    goto :goto_8

    .line 2195
    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 2197
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    .local v26, "t":[F
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 2198
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 2179
    move v8, v12

    goto/16 :goto_4

    .line 2104
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[F
    :cond_17
    return-void
.end method

.method private static doSort([SII[SII)V
    .locals 29
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1042
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 1043
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1044
    return-void

    .line 1051
    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1052
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 1055
    move/from16 v11, p1

    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    .line 1056
    aget-short v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 1057
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

    .line 1076
    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    .line 1077
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1078
    return-void

    .line 1058
    :cond_3
    aget-short v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 1059
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

    .line 1060
    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    .line 1061
    aget-short v25, p0, v13

    .local v25, "t":S
    aget-short v27, p0, v9

    aput-short v27, p0, v13

    aput-short v25, p0, v9

    goto :goto_1

    .line 1064
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":S
    :cond_6
    const/16 v14, 0x21

    .local v14, "m":I
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

    .line 1065
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    .line 1066
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1067
    return-void

    .line 1055
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    .line 1084
    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 1085
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 1091
    :cond_a
    const/16 v18, 0x0

    .line 1092
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_2

    .line 1086
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    .line 1087
    return-void

    .line 1097
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    .line 1098
    .local v6, "blen":I
    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    .line 1099
    :cond_d
    :goto_3
    new-array v0, v6, [S

    move-object/from16 p3, v0

    .line 1100
    const/16 p4, 0x0

    .line 1102
    :cond_e
    if-nez v18, :cond_11

    .line 1103
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([SI[SII)V

    .line 1104
    move-object/from16 v5, p0

    .line 1105
    .local v5, "b":[S
    const/4 v7, 0x0

    .line 1106
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 1107
    sub-int v4, p4, p1

    .line 1115
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    .line 1116
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    .line 1117
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 1118
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    .line 1119
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

    .line 1120
    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    move/from16 v21, v22

    .line 1118
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    .line 1098
    .end local v4    # "ao":I
    .end local v5    # "b":[S
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    .line 1109
    :cond_11
    move-object/from16 v5, p3

    .line 1110
    .restart local v5    # "b":[S
    const/4 v4, 0x0

    .line 1111
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_4

    .line 1122
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    .line 1125
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 1116
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 1127
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    .line 1128
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    .line 1129
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget-short v28, p0, v28

    aput-short v28, v5, v27

    goto :goto_8

    .line 1131
    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 1133
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    .local v26, "t":[S
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 1134
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 1115
    move v8, v12

    goto/16 :goto_4

    .line 1040
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[S
    :cond_17
    return-void
.end method

.method static sort([BII)V
    .locals 10
    .param p0, "a"    # [B
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1972
    sub-int v8, p2, p1

    const/16 v9, 0x1d

    if-le v8, v9, :cond_3

    .line 1973
    const/16 v8, 0x100

    new-array v1, v8, [I

    .line 1975
    .local v1, "count":[I
    add-int/lit8 v2, p1, -0x1

    .local v2, "i":I
    :goto_0
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_0

    .line 1976
    aget-byte v8, p0, v2

    add-int/lit16 v8, v8, 0x80

    aget v9, v1, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v1, v8

    goto :goto_0

    .line 1978
    :cond_0
    const/16 v2, 0x100

    add-int/lit8 v5, p2, 0x1

    .local v5, "k":I
    :cond_1
    if-le v5, p1, :cond_6

    .line 1979
    :cond_2
    add-int/lit8 v2, v2, -0x1

    aget v8, v1, v2

    if-eqz v8, :cond_2

    .line 1980
    add-int/lit8 v8, v2, -0x80

    int-to-byte v7, v8

    .line 1981
    .local v7, "value":B
    aget v6, v1, v2

    .line 1984
    .local v6, "s":I
    :goto_1
    add-int/lit8 v5, v5, -0x1

    aput-byte v7, p0, v5

    .line 1985
    add-int/lit8 v6, v6, -0x1

    if-lez v6, :cond_1

    goto :goto_1

    .line 1988
    .end local v1    # "count":[I
    .end local v2    # "i":I
    .end local v5    # "k":I
    .end local v6    # "s":I
    .end local v7    # "value":B
    :cond_3
    move v2, p1

    .restart local v2    # "i":I
    move v3, p1

    .local v3, "j":I
    :goto_2
    if-ge v2, p2, :cond_6

    .line 1989
    add-int/lit8 v8, v2, 0x1

    aget-byte v0, p0, v8

    .line 1990
    .local v0, "ai":B
    :goto_3
    aget-byte v8, p0, v3

    if-ge v0, v8, :cond_4

    .line 1991
    add-int/lit8 v8, v3, 0x1

    aget-byte v9, p0, v3

    aput-byte v9, p0, v8

    .line 1992
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "j":I
    .local v4, "j":I
    if-ne v3, p1, :cond_5

    move v3, v4

    .line 1996
    .end local v4    # "j":I
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v8, v3, 0x1

    aput-byte v0, p0, v8

    .line 1988
    add-int/lit8 v2, v2, 0x1

    move v3, v2

    goto :goto_2

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :cond_5
    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    .line 1970
    .end local v0    # "ai":B
    .end local v3    # "j":I
    :cond_6
    return-void
.end method

.method private static sort([CIIZ)V
    .locals 29
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 1631
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 1634
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 1635
    if-eqz p3, :cond_3

    .line 1641
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    .line 1642
    add-int/lit8 v27, v15, 0x1

    aget-char v6, p0, v27

    .line 1643
    .local v6, "ai":C
    :goto_1
    aget-char v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_0

    .line 1644
    add-int/lit8 v27, v16, 0x1

    aget-char v28, p0, v16

    aput-char v28, p0, v27

    .line 1645
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    .line 1649
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput-char v6, p0, v27

    .line 1641
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    .line 1659
    .end local v6    # "ai":C
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-char v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget-char v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    .line 1656
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    .line 1657
    return-void

    .line 1669
    :cond_4
    move/from16 v18, p1

    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    .line 1670
    aget-char v4, p0, v18

    .local v4, "a1":C
    aget-char v5, p0, p1

    .line 1672
    .local v5, "a2":C
    if-ge v4, v5, :cond_5

    .line 1673
    move v5, v4

    aget-char v4, p0, p1

    .line 1675
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget-char v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_6

    .line 1676
    add-int/lit8 v27, v18, 0x2

    aget-char v28, p0, v18

    aput-char v28, p0, v27

    goto :goto_3

    .line 1678
    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput-char v4, p0, v27

    .line 1680
    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget-char v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    .line 1681
    add-int/lit8 v27, v18, 0x1

    aget-char v28, p0, v18

    aput-char v28, p0, v27

    goto :goto_4

    .line 1683
    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput-char v5, p0, v27

    .line 1669
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    .line 1685
    .end local v4    # "a1":C
    .end local v5    # "a2":C
    :cond_8
    aget-char v19, p0, p2

    .line 1687
    .local v19, "last":C
    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-char v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 1688
    add-int/lit8 v27, p2, 0x1

    aget-char v28, p0, p2

    aput-char v28, p0, v27

    goto :goto_5

    .line 1690
    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput-char v19, p0, v27

    .line 1692
    .end local v18    # "k":I
    .end local v19    # "last":C
    :cond_a
    return-void

    .line 1696
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 1705
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 1706
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 1707
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 1708
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 1709
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 1712
    .local v12, "e5":I
    aget-char v27, p0, v9

    aget-char v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget-char v26, p0, v9

    .local v26, "t":C
    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1714
    .end local v26    # "t":C
    :cond_c
    aget-char v27, p0, v10

    aget-char v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-char v26, p0, v10

    .restart local v26    # "t":C
    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    .line 1715
    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1717
    .end local v26    # "t":C
    :cond_d
    aget-char v27, p0, v11

    aget-char v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget-char v26, p0, v11

    .restart local v26    # "t":C
    aget-char v27, p0, v10

    aput-char v27, p0, v11

    aput-char v26, p0, v10

    .line 1718
    aget-char v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    .line 1719
    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1722
    .end local v26    # "t":C
    :cond_e
    aget-char v27, p0, v12

    aget-char v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    aget-char v26, p0, v12

    .restart local v26    # "t":C
    aget-char v27, p0, v11

    aput-char v27, p0, v12

    aput-char v26, p0, v11

    .line 1723
    aget-char v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-char v27, p0, v10

    aput-char v27, p0, v11

    aput-char v26, p0, v10

    .line 1724
    aget-char v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-char v27, p0, v9

    aput-char v27, p0, v10

    aput-char v26, p0, v9

    .line 1725
    aget-char v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-char v27, p0, v8

    aput-char v27, p0, v9

    aput-char v26, p0, v8

    .line 1731
    .end local v26    # "t":C
    :cond_f
    move/from16 v21, p1

    .line 1732
    .local v21, "less":I
    move/from16 v13, p2

    .line 1734
    .local v13, "great":I
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

    .line 1740
    aget-char v23, p0, v9

    .line 1741
    .local v23, "pivot1":C
    aget-char v24, p0, v11

    .line 1749
    .local v24, "pivot2":C
    aget-char v27, p0, p1

    aput-char v27, p0, v9

    .line 1750
    aget-char v27, p0, p2

    aput-char v27, p0, v11

    .line 1755
    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget-char v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    .line 1756
    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    .line 1778
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    .line 1779
    aget-char v7, p0, v18

    .line 1780
    .local v7, "ak":C
    move/from16 v0, v23

    if-ge v7, v0, :cond_13

    .line 1781
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1786
    aput-char v7, p0, v21

    .line 1787
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1788
    :cond_13
    move/from16 v0, v24

    if-le v7, v0, :cond_12

    .line 1789
    :goto_7
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    .line 1790
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    .line 1811
    .end local v7    # "ak":C
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget-char v27, p0, v27

    aput-char v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput-char v23, p0, v27

    .line 1812
    add-int/lit8 v27, v13, 0x1

    aget-char v27, p0, v27

    aput-char v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput-char v24, p0, v27

    .line 1815
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1816
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1822
    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    .line 1826
    :goto_8
    aget-char v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 1827
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .end local v13    # "great":I
    .restart local v7    # "ak":C
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    .line 1794
    :cond_16
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 1795
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1796
    aget-char v27, p0, v13

    aput-char v27, p0, v21

    .line 1797
    add-int/lit8 v21, v21, 0x1

    .line 1805
    :goto_9
    aput-char v7, p0, v13

    .line 1806
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    .line 1799
    :cond_17
    aget-char v27, p0, v13

    aput-char v27, p0, v18

    goto :goto_9

    .line 1830
    .end local v7    # "ak":C
    :cond_18
    :goto_a
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 1831
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 1854
    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    .line 1855
    aget-char v7, p0, v18

    .line 1856
    .restart local v7    # "ak":C
    move/from16 v0, v23

    if-ne v7, v0, :cond_1b

    .line 1857
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1858
    aput-char v7, p0, v21

    .line 1859
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 1860
    :cond_1b
    move/from16 v0, v24

    if-ne v7, v0, :cond_1a

    .line 1861
    :goto_c
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 1862
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    .line 1888
    .end local v7    # "ak":C
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1630
    .end local v23    # "pivot1":C
    .end local v24    # "pivot2":C
    :goto_d
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":C
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":C
    .restart local v24    # "pivot2":C
    :cond_1d
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    .line 1866
    :cond_1e
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 1867
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1876
    aput-char v23, p0, v21

    .line 1877
    add-int/lit8 v21, v21, 0x1

    .line 1881
    :goto_e
    aput-char v7, p0, v13

    .line 1882
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 1879
    :cond_1f
    aget-char v27, p0, v13

    aput-char v27, p0, v18

    goto :goto_e

    .line 1895
    .end local v7    # "ak":C
    .end local v18    # "k":I
    .end local v23    # "pivot1":C
    .end local v24    # "pivot2":C
    :cond_20
    aget-char v22, p0, v10

    .line 1917
    .local v22, "pivot":C
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    .line 1918
    aget-char v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    .line 1917
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 1921
    :cond_21
    aget-char v7, p0, v18

    .line 1922
    .restart local v7    # "ak":C
    move/from16 v0, v22

    if-ge v7, v0, :cond_22

    .line 1923
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1924
    aput-char v7, p0, v21

    .line 1925
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1927
    :cond_22
    :goto_11
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_23

    .line 1928
    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    .line 1930
    :cond_23
    aget-char v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 1931
    aget-char v27, p0, v21

    aput-char v27, p0, v18

    .line 1932
    aget-char v27, p0, v13

    aput-char v27, p0, v21

    .line 1933
    add-int/lit8 v21, v21, 0x1

    .line 1945
    :goto_12
    aput-char v7, p0, v13

    .line 1946
    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    .line 1943
    :cond_24
    aput-char v22, p0, v18

    goto :goto_12

    .line 1955
    .end local v7    # "ak":C
    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([CIIZ)V

    .line 1956
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
    .param p0, "a"    # [C
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [C
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1490
    sub-int v5, p2, p1

    const/16 v6, 0xc80

    if-le v5, v6, :cond_3

    .line 1491
    const/high16 v5, 0x10000

    new-array v0, v5, [I

    .line 1493
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_0

    .line 1494
    aget-char v5, p0, v1

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    goto :goto_0

    .line 1496
    :cond_0
    const/high16 v1, 0x10000

    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :cond_1
    if-le v2, p1, :cond_4

    .line 1497
    :cond_2
    add-int/lit8 v1, v1, -0x1

    aget v5, v0, v1

    if-eqz v5, :cond_2

    .line 1498
    int-to-char v4, v1

    .line 1499
    .local v4, "value":C
    aget v3, v0, v1

    .line 1502
    .local v3, "s":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    aput-char v4, p0, v2

    .line 1503
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    goto :goto_1

    .line 1506
    .end local v0    # "count":[I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "s":I
    .end local v4    # "value":C
    :cond_3
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([CII[CII)V

    .line 1488
    :cond_4
    return-void
.end method

.method private static sort([DIIZ)V
    .locals 40
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 2750
    sub-int v36, p2, p1

    add-int/lit8 v23, v36, 0x1

    .line 2753
    .local v23, "length":I
    const/16 v36, 0x2f

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_b

    .line 2754
    if-eqz p3, :cond_3

    .line 2760
    move/from16 v19, p1

    .local v19, "i":I
    move/from16 v20, p1

    .local v20, "j":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    .line 2761
    add-int/lit8 v36, v19, 0x1

    aget-wide v8, p0, v36

    .line 2762
    .local v8, "ai":D
    :goto_1
    aget-wide v36, p0, v20

    cmpg-double v36, v8, v36

    if-gez v36, :cond_0

    .line 2763
    add-int/lit8 v36, v20, 0x1

    aget-wide v38, p0, v20

    aput-wide v38, p0, v36

    .line 2764
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "j":I
    .local v21, "j":I
    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v20, v21

    .line 2768
    .end local v21    # "j":I
    .restart local v20    # "j":I
    :cond_0
    add-int/lit8 v36, v20, 0x1

    aput-wide v8, p0, v36

    .line 2760
    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v19

    goto :goto_0

    .end local v20    # "j":I
    .restart local v21    # "j":I
    :cond_1
    move/from16 v20, v21

    .end local v21    # "j":I
    .restart local v20    # "j":I
    goto :goto_1

    .line 2778
    .end local v8    # "ai":D
    .end local v19    # "i":I
    .end local v20    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-wide v36, p0, p1

    add-int/lit8 v38, p1, -0x1

    aget-wide v38, p0, v38

    cmpl-double v36, v36, v38

    if-ltz v36, :cond_4

    .line 2775
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    .line 2776
    return-void

    .line 2788
    :cond_4
    move/from16 v22, p1

    .local v22, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    .line 2789
    aget-wide v4, p0, v22

    .local v4, "a1":D
    aget-wide v6, p0, p1

    .line 2791
    .local v6, "a2":D
    cmpg-double v36, v4, v6

    if-gez v36, :cond_5

    .line 2792
    move-wide v6, v4

    aget-wide v4, p0, p1

    .line 2794
    :cond_5
    :goto_3
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmpg-double v36, v4, v36

    if-gez v36, :cond_6

    .line 2795
    add-int/lit8 v36, v22, 0x2

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_3

    .line 2797
    :cond_6
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v36, v22, 0x1

    aput-wide v4, p0, v36

    .line 2799
    :goto_4
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmpg-double v36, v6, v36

    if-gez v36, :cond_7

    .line 2800
    add-int/lit8 v36, v22, 0x1

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_4

    .line 2802
    :cond_7
    add-int/lit8 v36, v22, 0x1

    aput-wide v6, p0, v36

    .line 2788
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, p1

    goto :goto_2

    .line 2804
    .end local v4    # "a1":D
    .end local v6    # "a2":D
    :cond_8
    aget-wide v24, p0, p2

    .line 2806
    .local v24, "last":D
    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-wide v36, p0, p2

    cmpg-double v36, v24, v36

    if-gez v36, :cond_9

    .line 2807
    add-int/lit8 v36, p2, 0x1

    aget-wide v38, p0, p2

    aput-wide v38, p0, v36

    goto :goto_5

    .line 2809
    :cond_9
    add-int/lit8 v36, p2, 0x1

    aput-wide v24, p0, v36

    .line 2811
    .end local v22    # "k":I
    .end local v24    # "last":D
    :cond_a
    return-void

    .line 2815
    :cond_b
    shr-int/lit8 v36, v23, 0x3

    shr-int/lit8 v37, v23, 0x6

    add-int v36, v36, v37

    add-int/lit8 v27, v36, 0x1

    .line 2824
    .local v27, "seventh":I
    add-int v36, p1, p2

    ushr-int/lit8 v14, v36, 0x1

    .line 2825
    .local v14, "e3":I
    sub-int v13, v14, v27

    .line 2826
    .local v13, "e2":I
    sub-int v12, v13, v27

    .line 2827
    .local v12, "e1":I
    add-int v15, v14, v27

    .line 2828
    .local v15, "e4":I
    add-int v16, v15, v27

    .line 2831
    .local v16, "e5":I
    aget-wide v36, p0, v13

    aget-wide v38, p0, v12

    cmpg-double v36, v36, v38

    if-gez v36, :cond_c

    aget-wide v34, p0, v13

    .local v34, "t":D
    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2833
    .end local v34    # "t":D
    :cond_c
    aget-wide v36, p0, v14

    aget-wide v38, p0, v13

    cmpg-double v36, v36, v38

    if-gez v36, :cond_d

    aget-wide v34, p0, v14

    .restart local v34    # "t":D
    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 2834
    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_d

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2836
    .end local v34    # "t":D
    :cond_d
    aget-wide v36, p0, v15

    aget-wide v38, p0, v14

    cmpg-double v36, v36, v38

    if-gez v36, :cond_e

    aget-wide v34, p0, v15

    .restart local v34    # "t":D
    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 2837
    aget-wide v36, p0, v13

    cmpg-double v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 2838
    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2841
    .end local v34    # "t":D
    :cond_e
    aget-wide v36, p0, v16

    aget-wide v38, p0, v15

    cmpg-double v36, v36, v38

    if-gez v36, :cond_f

    aget-wide v34, p0, v16

    .restart local v34    # "t":D
    aget-wide v36, p0, v15

    aput-wide v36, p0, v16

    aput-wide v34, p0, v15

    .line 2842
    aget-wide v36, p0, v14

    cmpg-double v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 2843
    aget-wide v36, p0, v13

    cmpg-double v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 2844
    aget-wide v36, p0, v12

    cmpg-double v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 2850
    .end local v34    # "t":D
    :cond_f
    move/from16 v26, p1

    .line 2851
    .local v26, "less":I
    move/from16 v17, p2

    .line 2853
    .local v17, "great":I
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

    .line 2859
    aget-wide v30, p0, v13

    .line 2860
    .local v30, "pivot1":D
    aget-wide v32, p0, v15

    .line 2868
    .local v32, "pivot2":D
    aget-wide v36, p0, p1

    aput-wide v36, p0, v13

    .line 2869
    aget-wide v36, p0, p2

    aput-wide v36, p0, v15

    .line 2874
    :cond_10
    add-int/lit8 v26, v26, 0x1

    aget-wide v36, p0, v26

    cmpg-double v36, v36, v30

    if-ltz v36, :cond_10

    .line 2875
    :cond_11
    add-int/lit8 v17, v17, -0x1

    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-gtz v36, :cond_11

    .line 2897
    add-int/lit8 v22, v26, -0x1

    .restart local v22    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_14

    .line 2898
    aget-wide v10, p0, v22

    .line 2899
    .local v10, "ak":D
    cmpg-double v36, v10, v30

    if-gez v36, :cond_13

    .line 2900
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2905
    aput-wide v10, p0, v26

    .line 2906
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 2907
    :cond_13
    cmpl-double v36, v10, v32

    if-lez v36, :cond_12

    .line 2908
    :goto_7
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-lez v36, :cond_16

    .line 2909
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .local v18, "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    move/from16 v17, v18

    .line 2930
    .end local v10    # "ak":D
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_14
    add-int/lit8 v36, v26, -0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p1

    add-int/lit8 v36, v26, -0x1

    aput-wide v30, p0, v36

    .line 2931
    add-int/lit8 v36, v17, 0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p2

    add-int/lit8 v36, v17, 0x1

    aput-wide v32, p0, v36

    .line 2934
    add-int/lit8 v36, v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2935
    add-int/lit8 v36, v17, 0x2

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2941
    move/from16 v0, v26

    if-ge v0, v12, :cond_1c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    .line 2945
    :goto_8
    aget-wide v36, p0, v26

    cmpl-double v36, v36, v30

    if-nez v36, :cond_18

    .line 2946
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .end local v17    # "great":I
    .restart local v10    # "ak":D
    .restart local v18    # "great":I
    :cond_15
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_7

    .line 2913
    :cond_16
    aget-wide v36, p0, v17

    cmpg-double v36, v36, v30

    if-gez v36, :cond_17

    .line 2914
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2915
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 2916
    add-int/lit8 v26, v26, 0x1

    .line 2924
    :goto_9
    aput-wide v10, p0, v17

    .line 2925
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6

    .line 2918
    :cond_17
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_9

    .line 2949
    .end local v10    # "ak":D
    :cond_18
    :goto_a
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-nez v36, :cond_19

    .line 2950
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 2973
    :cond_19
    add-int/lit8 v22, v26, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    .line 2974
    aget-wide v10, p0, v22

    .line 2975
    .restart local v10    # "ak":D
    cmpl-double v36, v10, v30

    if-nez v36, :cond_1b

    .line 2976
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2977
    aput-wide v10, p0, v26

    .line 2978
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 2979
    :cond_1b
    cmpl-double v36, v10, v32

    if-nez v36, :cond_1a

    .line 2980
    :goto_c
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v32

    if-nez v36, :cond_1e

    .line 2981
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .restart local v18    # "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    move/from16 v17, v18

    .line 3007
    .end local v10    # "ak":D
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_1c
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 2749
    .end local v30    # "pivot1":D
    .end local v32    # "pivot2":D
    :goto_d
    return-void

    .end local v17    # "great":I
    .restart local v10    # "ak":D
    .restart local v18    # "great":I
    .restart local v30    # "pivot1":D
    .restart local v32    # "pivot2":D
    :cond_1d
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_c

    .line 2985
    :cond_1e
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v30

    if-nez v36, :cond_1f

    .line 2986
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 2995
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 2996
    add-int/lit8 v26, v26, 0x1

    .line 3000
    :goto_e
    aput-wide v10, p0, v17

    .line 3001
    add-int/lit8 v17, v17, -0x1

    goto :goto_b

    .line 2998
    :cond_1f
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_e

    .line 3014
    .end local v10    # "ak":D
    .end local v22    # "k":I
    .end local v30    # "pivot1":D
    .end local v32    # "pivot2":D
    :cond_20
    aget-wide v28, p0, v14

    .line 3036
    .local v28, "pivot":D
    move/from16 v22, p1

    .restart local v22    # "k":I
    :goto_f
    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_25

    .line 3037
    aget-wide v36, p0, v22

    cmpl-double v36, v36, v28

    if-nez v36, :cond_21

    .line 3036
    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 3040
    :cond_21
    aget-wide v10, p0, v22

    .line 3041
    .restart local v10    # "ak":D
    cmpg-double v36, v10, v28

    if-gez v36, :cond_22

    .line 3042
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 3043
    aput-wide v10, p0, v26

    .line 3044
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 3046
    :cond_22
    :goto_11
    aget-wide v36, p0, v17

    cmpl-double v36, v36, v28

    if-lez v36, :cond_23

    .line 3047
    add-int/lit8 v17, v17, -0x1

    goto :goto_11

    .line 3049
    :cond_23
    aget-wide v36, p0, v17

    cmpg-double v36, v36, v28

    if-gez v36, :cond_24

    .line 3050
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 3051
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 3052
    add-int/lit8 v26, v26, 0x1

    .line 3064
    :goto_12
    aput-wide v10, p0, v17

    .line 3065
    add-int/lit8 v17, v17, -0x1

    goto :goto_10

    .line 3062
    :cond_24
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_12

    .line 3074
    .end local v10    # "ak":D
    :cond_25
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([DIIZ)V

    .line 3075
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
    .param p0, "a"    # [D
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [D
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 2556
    :goto_0
    if-gt p1, p2, :cond_0

    aget-wide v8, p0, p2

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2557
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2559
    :cond_0
    move v3, p2

    .local v3, "k":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    if-lt v3, p1, :cond_2

    .line 2560
    aget-wide v0, p0, v3

    .line 2561
    .local v0, "ak":D
    cmpl-double v8, v0, v0

    if-eqz v8, :cond_1

    .line 2562
    aget-wide v8, p0, p2

    aput-wide v8, p0, v3

    .line 2563
    aput-wide v0, p0, p2

    .line 2564
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2571
    .end local v0    # "ak":D
    :cond_2
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([DII[DII)V

    .line 2576
    move v2, p2

    .line 2581
    .local v2, "hi":I
    :goto_2
    if-ge p1, v2, :cond_4

    .line 2582
    add-int v8, p1, v2

    ushr-int/lit8 v4, v8, 0x1

    .line 2583
    .local v4, "middle":I
    aget-wide v6, p0, v4

    .line 2585
    .local v6, "middleValue":D
    const-wide/16 v8, 0x0

    cmpg-double v8, v6, v8

    if-gez v8, :cond_3

    .line 2586
    add-int/lit8 p1, v4, 0x1

    goto :goto_2

    .line 2588
    :cond_3
    move v2, v4

    goto :goto_2

    .line 2595
    .end local v4    # "middle":I
    .end local v6    # "middleValue":D
    :cond_4
    :goto_3
    if-gt p1, p2, :cond_5

    aget-wide v8, p0, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_5

    .line 2596
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 2620
    :cond_5
    move v3, p1

    add-int/lit8 v5, p1, -0x1

    .local v5, "p":I
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    if-gt v3, p2, :cond_7

    .line 2621
    aget-wide v0, p0, v3

    .line 2622
    .restart local v0    # "ak":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v0, v8

    if-eqz v8, :cond_8

    .line 2552
    .end local v0    # "ak":D
    :cond_7
    return-void

    .line 2625
    .restart local v0    # "ak":D
    :cond_8
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_6

    .line 2626
    const-wide/16 v8, 0x0

    aput-wide v8, p0, v3

    .line 2627
    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    aput-wide v8, p0, v5

    goto :goto_4
.end method

.method private static sort([FIIZ)V
    .locals 29
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 2211
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 2214
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 2215
    if-eqz p3, :cond_3

    .line 2221
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    .line 2222
    add-int/lit8 v27, v15, 0x1

    aget v6, p0, v27

    .line 2223
    .local v6, "ai":F
    :goto_1
    aget v27, p0, v16

    cmpg-float v27, v6, v27

    if-gez v27, :cond_0

    .line 2224
    add-int/lit8 v27, v16, 0x1

    aget v28, p0, v16

    aput v28, p0, v27

    .line 2225
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    .line 2229
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput v6, p0, v27

    .line 2221
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    .line 2239
    .end local v6    # "ai":F
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget v28, p0, v28

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_4

    .line 2236
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    .line 2237
    return-void

    .line 2249
    :cond_4
    move/from16 v18, p1

    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    .line 2250
    aget v4, p0, v18

    .local v4, "a1":F
    aget v5, p0, p1

    .line 2252
    .local v5, "a2":F
    cmpg-float v27, v4, v5

    if-gez v27, :cond_5

    .line 2253
    move v5, v4

    aget v4, p0, p1

    .line 2255
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    cmpg-float v27, v4, v27

    if-gez v27, :cond_6

    .line 2256
    add-int/lit8 v27, v18, 0x2

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_3

    .line 2258
    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput v4, p0, v27

    .line 2260
    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    cmpg-float v27, v5, v27

    if-gez v27, :cond_7

    .line 2261
    add-int/lit8 v27, v18, 0x1

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_4

    .line 2263
    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput v5, p0, v27

    .line 2249
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    .line 2265
    .end local v4    # "a1":F
    .end local v5    # "a2":F
    :cond_8
    aget v19, p0, p2

    .line 2267
    .local v19, "last":F
    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget v27, p0, p2

    cmpg-float v27, v19, v27

    if-gez v27, :cond_9

    .line 2268
    add-int/lit8 v27, p2, 0x1

    aget v28, p0, p2

    aput v28, p0, v27

    goto :goto_5

    .line 2270
    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput v19, p0, v27

    .line 2272
    .end local v18    # "k":I
    .end local v19    # "last":F
    :cond_a
    return-void

    .line 2276
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 2285
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 2286
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 2287
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 2288
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 2289
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 2292
    .local v12, "e5":I
    aget v27, p0, v9

    aget v28, p0, v8

    cmpg-float v27, v27, v28

    if-gez v27, :cond_c

    aget v26, p0, v9

    .local v26, "t":F
    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2294
    .end local v26    # "t":F
    :cond_c
    aget v27, p0, v10

    aget v28, p0, v9

    cmpg-float v27, v27, v28

    if-gez v27, :cond_d

    aget v26, p0, v10

    .restart local v26    # "t":F
    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 2295
    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_d

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2297
    .end local v26    # "t":F
    :cond_d
    aget v27, p0, v11

    aget v28, p0, v10

    cmpg-float v27, v27, v28

    if-gez v27, :cond_e

    aget v26, p0, v11

    .restart local v26    # "t":F
    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 2298
    aget v27, p0, v9

    cmpg-float v27, v26, v27

    if-gez v27, :cond_e

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 2299
    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_e

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2302
    .end local v26    # "t":F
    :cond_e
    aget v27, p0, v12

    aget v28, p0, v11

    cmpg-float v27, v27, v28

    if-gez v27, :cond_f

    aget v26, p0, v12

    .restart local v26    # "t":F
    aget v27, p0, v11

    aput v27, p0, v12

    aput v26, p0, v11

    .line 2303
    aget v27, p0, v10

    cmpg-float v27, v26, v27

    if-gez v27, :cond_f

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 2304
    aget v27, p0, v9

    cmpg-float v27, v26, v27

    if-gez v27, :cond_f

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 2305
    aget v27, p0, v8

    cmpg-float v27, v26, v27

    if-gez v27, :cond_f

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 2311
    .end local v26    # "t":F
    :cond_f
    move/from16 v21, p1

    .line 2312
    .local v21, "less":I
    move/from16 v13, p2

    .line 2314
    .local v13, "great":I
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

    .line 2320
    aget v23, p0, v9

    .line 2321
    .local v23, "pivot1":F
    aget v24, p0, v11

    .line 2329
    .local v24, "pivot2":F
    aget v27, p0, p1

    aput v27, p0, v9

    .line 2330
    aget v27, p0, p2

    aput v27, p0, v11

    .line 2335
    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget v27, p0, v21

    cmpg-float v27, v27, v23

    if-ltz v27, :cond_10

    .line 2336
    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-gtz v27, :cond_11

    .line 2358
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    .line 2359
    aget v7, p0, v18

    .line 2360
    .local v7, "ak":F
    cmpg-float v27, v7, v23

    if-gez v27, :cond_13

    .line 2361
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2366
    aput v7, p0, v21

    .line 2367
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 2368
    :cond_13
    cmpl-float v27, v7, v24

    if-lez v27, :cond_12

    .line 2369
    :goto_7
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-lez v27, :cond_16

    .line 2370
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    .line 2391
    .end local v7    # "ak":F
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget v27, p0, v27

    aput v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput v23, p0, v27

    .line 2392
    add-int/lit8 v27, v13, 0x1

    aget v27, p0, v27

    aput v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput v24, p0, v27

    .line 2395
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2396
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2402
    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    .line 2406
    :goto_8
    aget v27, p0, v21

    cmpl-float v27, v27, v23

    if-nez v27, :cond_18

    .line 2407
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .end local v13    # "great":I
    .restart local v7    # "ak":F
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    .line 2374
    :cond_16
    aget v27, p0, v13

    cmpg-float v27, v27, v23

    if-gez v27, :cond_17

    .line 2375
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2376
    aget v27, p0, v13

    aput v27, p0, v21

    .line 2377
    add-int/lit8 v21, v21, 0x1

    .line 2385
    :goto_9
    aput v7, p0, v13

    .line 2386
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 2379
    :cond_17
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_9

    .line 2410
    .end local v7    # "ak":F
    :cond_18
    :goto_a
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-nez v27, :cond_19

    .line 2411
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 2434
    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    .line 2435
    aget v7, p0, v18

    .line 2436
    .restart local v7    # "ak":F
    cmpl-float v27, v7, v23

    if-nez v27, :cond_1b

    .line 2437
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2438
    aput v7, p0, v21

    .line 2439
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 2440
    :cond_1b
    cmpl-float v27, v7, v24

    if-nez v27, :cond_1a

    .line 2441
    :goto_c
    aget v27, p0, v13

    cmpl-float v27, v27, v24

    if-nez v27, :cond_1e

    .line 2442
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    .line 2468
    .end local v7    # "ak":F
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2210
    .end local v23    # "pivot1":F
    .end local v24    # "pivot2":F
    :goto_d
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":F
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":F
    .restart local v24    # "pivot2":F
    :cond_1d
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    .line 2446
    :cond_1e
    aget v27, p0, v13

    cmpl-float v27, v27, v23

    if-nez v27, :cond_1f

    .line 2447
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2456
    aget v27, p0, v13

    aput v27, p0, v21

    .line 2457
    add-int/lit8 v21, v21, 0x1

    .line 2461
    :goto_e
    aput v7, p0, v13

    .line 2462
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 2459
    :cond_1f
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_e

    .line 2475
    .end local v7    # "ak":F
    .end local v18    # "k":I
    .end local v23    # "pivot1":F
    .end local v24    # "pivot2":F
    :cond_20
    aget v22, p0, v10

    .line 2497
    .local v22, "pivot":F
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    .line 2498
    aget v27, p0, v18

    cmpl-float v27, v27, v22

    if-nez v27, :cond_21

    .line 2497
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 2501
    :cond_21
    aget v7, p0, v18

    .line 2502
    .restart local v7    # "ak":F
    cmpg-float v27, v7, v22

    if-gez v27, :cond_22

    .line 2503
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2504
    aput v7, p0, v21

    .line 2505
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 2507
    :cond_22
    :goto_11
    aget v27, p0, v13

    cmpl-float v27, v27, v22

    if-lez v27, :cond_23

    .line 2508
    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    .line 2510
    :cond_23
    aget v27, p0, v13

    cmpg-float v27, v27, v22

    if-gez v27, :cond_24

    .line 2511
    aget v27, p0, v21

    aput v27, p0, v18

    .line 2512
    aget v27, p0, v13

    aput v27, p0, v21

    .line 2513
    add-int/lit8 v21, v21, 0x1

    .line 2525
    :goto_12
    aput v7, p0, v13

    .line 2526
    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    .line 2523
    :cond_24
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_12

    .line 2535
    .end local v7    # "ak":F
    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([FIIZ)V

    .line 2536
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
    .param p0, "a"    # [F
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [F
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    const/4 v7, 0x0

    .line 2017
    :goto_0
    if-gt p1, p2, :cond_0

    aget v6, p0, p2

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2018
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2020
    :cond_0
    move v2, p2

    .local v2, "k":I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-lt v2, p1, :cond_2

    .line 2021
    aget v0, p0, v2

    .line 2022
    .local v0, "ak":F
    cmpl-float v6, v0, v0

    if-eqz v6, :cond_1

    .line 2023
    aget v6, p0, p2

    aput v6, p0, v2

    .line 2024
    aput v0, p0, p2

    .line 2025
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2032
    .end local v0    # "ak":F
    :cond_2
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([FII[FII)V

    .line 2037
    move v1, p2

    .line 2042
    .local v1, "hi":I
    :goto_2
    if-ge p1, v1, :cond_4

    .line 2043
    add-int v6, p1, v1

    ushr-int/lit8 v3, v6, 0x1

    .line 2044
    .local v3, "middle":I
    aget v4, p0, v3

    .line 2046
    .local v4, "middleValue":F
    cmpg-float v6, v4, v7

    if-gez v6, :cond_3

    .line 2047
    add-int/lit8 p1, v3, 0x1

    goto :goto_2

    .line 2049
    :cond_3
    move v1, v3

    goto :goto_2

    .line 2056
    .end local v3    # "middle":I
    .end local v4    # "middleValue":F
    :cond_4
    :goto_3
    if-gt p1, p2, :cond_5

    aget v6, p0, p1

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    if-gez v6, :cond_5

    .line 2057
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 2081
    :cond_5
    move v2, p1

    add-int/lit8 v5, p1, -0x1

    .local v5, "p":I
    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    if-gt v2, p2, :cond_7

    .line 2082
    aget v0, p0, v2

    .line 2083
    .restart local v0    # "ak":F
    cmpl-float v6, v0, v7

    if-eqz v6, :cond_8

    .line 2013
    .end local v0    # "ak":F
    :cond_7
    return-void

    .line 2086
    .restart local v0    # "ak":F
    :cond_8
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    if-gez v6, :cond_6

    .line 2087
    aput v7, p0, v2

    .line 2088
    add-int/lit8 v5, v5, 0x1

    const/high16 v6, -0x80000000

    aput v6, p0, v5

    goto :goto_4
.end method

.method private static sort([IIIZ)V
    .locals 29
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 215
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 218
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 219
    if-eqz p3, :cond_3

    .line 225
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    .line 226
    add-int/lit8 v27, v15, 0x1

    aget v6, p0, v27

    .line 227
    .local v6, "ai":I
    :goto_1
    aget v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_0

    .line 228
    add-int/lit8 v27, v16, 0x1

    aget v28, p0, v16

    aput v28, p0, v27

    .line 229
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    .line 233
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput v6, p0, v27

    .line 225
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    .line 243
    .end local v6    # "ai":I
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    .line 240
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    .line 241
    return-void

    .line 253
    :cond_4
    move/from16 v18, p1

    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    .line 254
    aget v4, p0, v18

    .local v4, "a1":I
    aget v5, p0, p1

    .line 256
    .local v5, "a2":I
    if-ge v4, v5, :cond_5

    .line 257
    move v5, v4

    aget v4, p0, p1

    .line 259
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_6

    .line 260
    add-int/lit8 v27, v18, 0x2

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_3

    .line 262
    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput v4, p0, v27

    .line 264
    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    .line 265
    add-int/lit8 v27, v18, 0x1

    aget v28, p0, v18

    aput v28, p0, v27

    goto :goto_4

    .line 267
    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput v5, p0, v27

    .line 253
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    .line 269
    .end local v4    # "a1":I
    .end local v5    # "a2":I
    :cond_8
    aget v19, p0, p2

    .line 271
    .local v19, "last":I
    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 272
    add-int/lit8 v27, p2, 0x1

    aget v28, p0, p2

    aput v28, p0, v27

    goto :goto_5

    .line 274
    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput v19, p0, v27

    .line 276
    .end local v18    # "k":I
    .end local v19    # "last":I
    :cond_a
    return-void

    .line 280
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 289
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 290
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 291
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 292
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 293
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 296
    .local v12, "e5":I
    aget v27, p0, v9

    aget v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget v26, p0, v9

    .local v26, "t":I
    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 298
    .end local v26    # "t":I
    :cond_c
    aget v27, p0, v10

    aget v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget v26, p0, v10

    .restart local v26    # "t":I
    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 299
    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 301
    .end local v26    # "t":I
    :cond_d
    aget v27, p0, v11

    aget v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget v26, p0, v11

    .restart local v26    # "t":I
    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 302
    aget v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 303
    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 306
    .end local v26    # "t":I
    :cond_e
    aget v27, p0, v12

    aget v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    aget v26, p0, v12

    .restart local v26    # "t":I
    aget v27, p0, v11

    aput v27, p0, v12

    aput v26, p0, v11

    .line 307
    aget v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget v27, p0, v10

    aput v27, p0, v11

    aput v26, p0, v10

    .line 308
    aget v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget v27, p0, v9

    aput v27, p0, v10

    aput v26, p0, v9

    .line 309
    aget v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget v27, p0, v8

    aput v27, p0, v9

    aput v26, p0, v8

    .line 315
    .end local v26    # "t":I
    :cond_f
    move/from16 v21, p1

    .line 316
    .local v21, "less":I
    move/from16 v13, p2

    .line 318
    .local v13, "great":I
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

    .line 324
    aget v23, p0, v9

    .line 325
    .local v23, "pivot1":I
    aget v24, p0, v11

    .line 333
    .local v24, "pivot2":I
    aget v27, p0, p1

    aput v27, p0, v9

    .line 334
    aget v27, p0, p2

    aput v27, p0, v11

    .line 339
    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    .line 340
    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    .line 362
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    .line 363
    aget v7, p0, v18

    .line 364
    .local v7, "ak":I
    move/from16 v0, v23

    if-ge v7, v0, :cond_13

    .line 365
    aget v27, p0, v21

    aput v27, p0, v18

    .line 370
    aput v7, p0, v21

    .line 371
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 372
    :cond_13
    move/from16 v0, v24

    if-le v7, v0, :cond_12

    .line 373
    :goto_7
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    .line 374
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    .line 395
    .end local v7    # "ak":I
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget v27, p0, v27

    aput v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput v23, p0, v27

    .line 396
    add-int/lit8 v27, v13, 0x1

    aget v27, p0, v27

    aput v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput v24, p0, v27

    .line 399
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 400
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 406
    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    .line 410
    :goto_8
    aget v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 411
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .end local v13    # "great":I
    .restart local v7    # "ak":I
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    .line 378
    :cond_16
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 379
    aget v27, p0, v21

    aput v27, p0, v18

    .line 380
    aget v27, p0, v13

    aput v27, p0, v21

    .line 381
    add-int/lit8 v21, v21, 0x1

    .line 389
    :goto_9
    aput v7, p0, v13

    .line 390
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    .line 383
    :cond_17
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_9

    .line 414
    .end local v7    # "ak":I
    :cond_18
    :goto_a
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 415
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 438
    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    .line 439
    aget v7, p0, v18

    .line 440
    .restart local v7    # "ak":I
    move/from16 v0, v23

    if-ne v7, v0, :cond_1b

    .line 441
    aget v27, p0, v21

    aput v27, p0, v18

    .line 442
    aput v7, p0, v21

    .line 443
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 444
    :cond_1b
    move/from16 v0, v24

    if-ne v7, v0, :cond_1a

    .line 445
    :goto_c
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 446
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    .line 472
    .end local v7    # "ak":I
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 214
    .end local v23    # "pivot1":I
    .end local v24    # "pivot2":I
    :goto_d
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":I
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":I
    .restart local v24    # "pivot2":I
    :cond_1d
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    .line 450
    :cond_1e
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 451
    aget v27, p0, v21

    aput v27, p0, v18

    .line 460
    aput v23, p0, v21

    .line 461
    add-int/lit8 v21, v21, 0x1

    .line 465
    :goto_e
    aput v7, p0, v13

    .line 466
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 463
    :cond_1f
    aget v27, p0, v13

    aput v27, p0, v18

    goto :goto_e

    .line 479
    .end local v7    # "ak":I
    .end local v18    # "k":I
    .end local v23    # "pivot1":I
    .end local v24    # "pivot2":I
    :cond_20
    aget v22, p0, v10

    .line 501
    .local v22, "pivot":I
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    .line 502
    aget v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    .line 501
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 505
    :cond_21
    aget v7, p0, v18

    .line 506
    .restart local v7    # "ak":I
    move/from16 v0, v22

    if-ge v7, v0, :cond_22

    .line 507
    aget v27, p0, v21

    aput v27, p0, v18

    .line 508
    aput v7, p0, v21

    .line 509
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 511
    :cond_22
    :goto_11
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_23

    .line 512
    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    .line 514
    :cond_23
    aget v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 515
    aget v27, p0, v21

    aput v27, p0, v18

    .line 516
    aget v27, p0, v13

    aput v27, p0, v21

    .line 517
    add-int/lit8 v21, v21, 0x1

    .line 529
    :goto_12
    aput v7, p0, v13

    .line 530
    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    .line 527
    :cond_24
    aput v22, p0, v18

    goto :goto_12

    .line 539
    .end local v7    # "ak":I
    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 540
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
    .param p0, "a"    # [I
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [I
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 110
    sub-int v27, p2, p1

    const/16 v28, 0x11e

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_0

    .line 111
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 112
    return-void

    .line 119
    :cond_0
    const/16 v27, 0x44

    move/from16 v0, v27

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 120
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v27, 0x0

    aput p1, v24, v27

    .line 123
    move/from16 v11, p1

    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    .line 124
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 125
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

    .line 144
    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v27, 0x43

    move/from16 v0, v27

    if-ne v8, v0, :cond_8

    .line 145
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 146
    return-void

    .line 126
    :cond_3
    aget v27, p0, v11

    add-int/lit8 v28, v11, 0x1

    aget v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_6

    .line 127
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

    .line 128
    :cond_5
    aget v27, v24, v8

    add-int/lit8 v13, v27, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    .line 129
    aget v25, p0, v13

    .local v25, "t":I
    aget v27, p0, v9

    aput v27, p0, v13

    aput v25, p0, v9

    goto :goto_1

    .line 132
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v25    # "t":I
    :cond_6
    const/16 v14, 0x21

    .local v14, "m":I
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

    .line 133
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    .line 134
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([IIIZ)V

    .line 135
    return-void

    .line 123
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    .line 152
    :cond_9
    aget v27, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v27

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 153
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 159
    :cond_a
    const/16 v18, 0x0

    .line 160
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v27, v18, 0x1

    move/from16 v0, v27

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_2

    .line 154
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_a

    .line 155
    return-void

    .line 165
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    .line 166
    .local v6, "blen":I
    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    .line 167
    :cond_d
    :goto_3
    new-array v0, v6, [I

    move-object/from16 p3, v0

    .line 168
    const/16 p4, 0x0

    .line 170
    :cond_e
    if-nez v18, :cond_11

    .line 171
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 172
    move-object/from16 v5, p0

    .line 173
    .local v5, "b":[I
    const/4 v7, 0x0

    .line 174
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 175
    sub-int v4, p4, p1

    .line 183
    .local v4, "ao":I
    :goto_4
    const/16 v27, 0x1

    move/from16 v0, v27

    if-le v8, v0, :cond_17

    .line 184
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    .line 185
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v27, v11, -0x1

    aget v15, v24, v27

    .line 186
    .local v15, "mi":I
    add-int/lit8 v27, v11, -0x2

    aget v10, v24, v27

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    .line 187
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

    .line 188
    :cond_f
    add-int v27, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v28, v20, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v21, v22

    .line 186
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    .line 166
    .end local v4    # "ao":I
    .end local v5    # "b":[I
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v27, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_e

    goto :goto_3

    .line 177
    :cond_11
    move-object/from16 v5, p3

    .line 178
    .restart local v5    # "b":[I
    const/4 v4, 0x0

    .line 179
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_4

    .line 190
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v27, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v28, v22, v4

    aget v28, p0, v28

    aput v28, v5, v27

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    .line 193
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 184
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 195
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v27, v8, 0x1

    if-eqz v27, :cond_16

    .line 196
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v27, v8, -0x1

    aget v13, v24, v27

    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    .line 197
    add-int v27, v10, v7

    add-int v28, v10, v4

    aget v28, p0, v28

    aput v28, v5, v27

    goto :goto_8

    .line 199
    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 201
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v26, p0

    .local v26, "t":[I
    move-object/from16 p0, v5

    move-object/from16 v5, v26

    .line 202
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 183
    move v8, v12

    goto/16 :goto_4

    .line 108
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v26    # "t":[I
    :cond_17
    return-void
.end method

.method private static sort([JIIZ)V
    .locals 40
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 663
    sub-int v36, p2, p1

    add-int/lit8 v23, v36, 0x1

    .line 666
    .local v23, "length":I
    const/16 v36, 0x2f

    move/from16 v0, v23

    move/from16 v1, v36

    if-ge v0, v1, :cond_b

    .line 667
    if-eqz p3, :cond_3

    .line 673
    move/from16 v19, p1

    .local v19, "i":I
    move/from16 v20, p1

    .local v20, "j":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    .line 674
    add-int/lit8 v36, v19, 0x1

    aget-wide v8, p0, v36

    .line 675
    .local v8, "ai":J
    :goto_1
    aget-wide v36, p0, v20

    cmp-long v36, v8, v36

    if-gez v36, :cond_0

    .line 676
    add-int/lit8 v36, v20, 0x1

    aget-wide v38, p0, v20

    aput-wide v38, p0, v36

    .line 677
    add-int/lit8 v21, v20, -0x1

    .end local v20    # "j":I
    .local v21, "j":I
    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v20, v21

    .line 681
    .end local v21    # "j":I
    .restart local v20    # "j":I
    :cond_0
    add-int/lit8 v36, v20, 0x1

    aput-wide v8, p0, v36

    .line 673
    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v19

    goto :goto_0

    .end local v20    # "j":I
    .restart local v21    # "j":I
    :cond_1
    move/from16 v20, v21

    .end local v21    # "j":I
    .restart local v20    # "j":I
    goto :goto_1

    .line 691
    .end local v8    # "ai":J
    .end local v19    # "i":I
    .end local v20    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-wide v36, p0, p1

    add-int/lit8 v38, p1, -0x1

    aget-wide v38, p0, v38

    cmp-long v36, v36, v38

    if-ltz v36, :cond_4

    .line 688
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    .line 689
    return-void

    .line 701
    :cond_4
    move/from16 v22, p1

    .local v22, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    .line 702
    aget-wide v4, p0, v22

    .local v4, "a1":J
    aget-wide v6, p0, p1

    .line 704
    .local v6, "a2":J
    cmp-long v36, v4, v6

    if-gez v36, :cond_5

    .line 705
    move-wide v6, v4

    aget-wide v4, p0, p1

    .line 707
    :cond_5
    :goto_3
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmp-long v36, v4, v36

    if-gez v36, :cond_6

    .line 708
    add-int/lit8 v36, v22, 0x2

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_3

    .line 710
    :cond_6
    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v36, v22, 0x1

    aput-wide v4, p0, v36

    .line 712
    :goto_4
    add-int/lit8 v22, v22, -0x1

    aget-wide v36, p0, v22

    cmp-long v36, v6, v36

    if-gez v36, :cond_7

    .line 713
    add-int/lit8 v36, v22, 0x1

    aget-wide v38, p0, v22

    aput-wide v38, p0, v36

    goto :goto_4

    .line 715
    :cond_7
    add-int/lit8 v36, v22, 0x1

    aput-wide v6, p0, v36

    .line 701
    add-int/lit8 p1, p1, 0x1

    move/from16 v22, p1

    goto :goto_2

    .line 717
    .end local v4    # "a1":J
    .end local v6    # "a2":J
    :cond_8
    aget-wide v24, p0, p2

    .line 719
    .local v24, "last":J
    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-wide v36, p0, p2

    cmp-long v36, v24, v36

    if-gez v36, :cond_9

    .line 720
    add-int/lit8 v36, p2, 0x1

    aget-wide v38, p0, p2

    aput-wide v38, p0, v36

    goto :goto_5

    .line 722
    :cond_9
    add-int/lit8 v36, p2, 0x1

    aput-wide v24, p0, v36

    .line 724
    .end local v22    # "k":I
    .end local v24    # "last":J
    :cond_a
    return-void

    .line 728
    :cond_b
    shr-int/lit8 v36, v23, 0x3

    shr-int/lit8 v37, v23, 0x6

    add-int v36, v36, v37

    add-int/lit8 v27, v36, 0x1

    .line 737
    .local v27, "seventh":I
    add-int v36, p1, p2

    ushr-int/lit8 v14, v36, 0x1

    .line 738
    .local v14, "e3":I
    sub-int v13, v14, v27

    .line 739
    .local v13, "e2":I
    sub-int v12, v13, v27

    .line 740
    .local v12, "e1":I
    add-int v15, v14, v27

    .line 741
    .local v15, "e4":I
    add-int v16, v15, v27

    .line 744
    .local v16, "e5":I
    aget-wide v36, p0, v13

    aget-wide v38, p0, v12

    cmp-long v36, v36, v38

    if-gez v36, :cond_c

    aget-wide v34, p0, v13

    .local v34, "t":J
    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 746
    .end local v34    # "t":J
    :cond_c
    aget-wide v36, p0, v14

    aget-wide v38, p0, v13

    cmp-long v36, v36, v38

    if-gez v36, :cond_d

    aget-wide v34, p0, v14

    .restart local v34    # "t":J
    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 747
    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_d

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 749
    .end local v34    # "t":J
    :cond_d
    aget-wide v36, p0, v15

    aget-wide v38, p0, v14

    cmp-long v36, v36, v38

    if-gez v36, :cond_e

    aget-wide v34, p0, v15

    .restart local v34    # "t":J
    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 750
    aget-wide v36, p0, v13

    cmp-long v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 751
    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_e

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 754
    .end local v34    # "t":J
    :cond_e
    aget-wide v36, p0, v16

    aget-wide v38, p0, v15

    cmp-long v36, v36, v38

    if-gez v36, :cond_f

    aget-wide v34, p0, v16

    .restart local v34    # "t":J
    aget-wide v36, p0, v15

    aput-wide v36, p0, v16

    aput-wide v34, p0, v15

    .line 755
    aget-wide v36, p0, v14

    cmp-long v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v14

    aput-wide v36, p0, v15

    aput-wide v34, p0, v14

    .line 756
    aget-wide v36, p0, v13

    cmp-long v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v13

    aput-wide v36, p0, v14

    aput-wide v34, p0, v13

    .line 757
    aget-wide v36, p0, v12

    cmp-long v36, v34, v36

    if-gez v36, :cond_f

    aget-wide v36, p0, v12

    aput-wide v36, p0, v13

    aput-wide v34, p0, v12

    .line 763
    .end local v34    # "t":J
    :cond_f
    move/from16 v26, p1

    .line 764
    .local v26, "less":I
    move/from16 v17, p2

    .line 766
    .local v17, "great":I
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

    .line 772
    aget-wide v30, p0, v13

    .line 773
    .local v30, "pivot1":J
    aget-wide v32, p0, v15

    .line 781
    .local v32, "pivot2":J
    aget-wide v36, p0, p1

    aput-wide v36, p0, v13

    .line 782
    aget-wide v36, p0, p2

    aput-wide v36, p0, v15

    .line 787
    :cond_10
    add-int/lit8 v26, v26, 0x1

    aget-wide v36, p0, v26

    cmp-long v36, v36, v30

    if-ltz v36, :cond_10

    .line 788
    :cond_11
    add-int/lit8 v17, v17, -0x1

    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-gtz v36, :cond_11

    .line 810
    add-int/lit8 v22, v26, -0x1

    .restart local v22    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_14

    .line 811
    aget-wide v10, p0, v22

    .line 812
    .local v10, "ak":J
    cmp-long v36, v10, v30

    if-gez v36, :cond_13

    .line 813
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 818
    aput-wide v10, p0, v26

    .line 819
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 820
    :cond_13
    cmp-long v36, v10, v32

    if-lez v36, :cond_12

    .line 821
    :goto_7
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-lez v36, :cond_16

    .line 822
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .local v18, "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    move/from16 v17, v18

    .line 843
    .end local v10    # "ak":J
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_14
    add-int/lit8 v36, v26, -0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p1

    add-int/lit8 v36, v26, -0x1

    aput-wide v30, p0, v36

    .line 844
    add-int/lit8 v36, v17, 0x1

    aget-wide v36, p0, v36

    aput-wide v36, p0, p2

    add-int/lit8 v36, v17, 0x1

    aput-wide v32, p0, v36

    .line 847
    add-int/lit8 v36, v26, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 848
    add-int/lit8 v36, v17, 0x2

    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    move/from16 v2, p2

    move/from16 v3, v37

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 854
    move/from16 v0, v26

    if-ge v0, v12, :cond_1c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    .line 858
    :goto_8
    aget-wide v36, p0, v26

    cmp-long v36, v36, v30

    if-nez v36, :cond_18

    .line 859
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .end local v17    # "great":I
    .restart local v10    # "ak":J
    .restart local v18    # "great":I
    :cond_15
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_7

    .line 826
    :cond_16
    aget-wide v36, p0, v17

    cmp-long v36, v36, v30

    if-gez v36, :cond_17

    .line 827
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 828
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 829
    add-int/lit8 v26, v26, 0x1

    .line 837
    :goto_9
    aput-wide v10, p0, v17

    .line 838
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_6

    .line 831
    :cond_17
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_9

    .line 862
    .end local v10    # "ak":J
    :cond_18
    :goto_a
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-nez v36, :cond_19

    .line 863
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 886
    :cond_19
    add-int/lit8 v22, v26, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    .line 887
    aget-wide v10, p0, v22

    .line 888
    .restart local v10    # "ak":J
    cmp-long v36, v10, v30

    if-nez v36, :cond_1b

    .line 889
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 890
    aput-wide v10, p0, v26

    .line 891
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    .line 892
    :cond_1b
    cmp-long v36, v10, v32

    if-nez v36, :cond_1a

    .line 893
    :goto_c
    aget-wide v36, p0, v17

    cmp-long v36, v36, v32

    if-nez v36, :cond_1e

    .line 894
    add-int/lit8 v18, v17, -0x1

    .end local v17    # "great":I
    .restart local v18    # "great":I
    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_1d

    move/from16 v17, v18

    .line 920
    .end local v10    # "ak":J
    .end local v18    # "great":I
    .restart local v17    # "great":I
    :cond_1c
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v17

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 662
    .end local v30    # "pivot1":J
    .end local v32    # "pivot2":J
    :goto_d
    return-void

    .end local v17    # "great":I
    .restart local v10    # "ak":J
    .restart local v18    # "great":I
    .restart local v30    # "pivot1":J
    .restart local v32    # "pivot2":J
    :cond_1d
    move/from16 v17, v18

    .end local v18    # "great":I
    .restart local v17    # "great":I
    goto :goto_c

    .line 898
    :cond_1e
    aget-wide v36, p0, v17

    cmp-long v36, v36, v30

    if-nez v36, :cond_1f

    .line 899
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 908
    aput-wide v30, p0, v26

    .line 909
    add-int/lit8 v26, v26, 0x1

    .line 913
    :goto_e
    aput-wide v10, p0, v17

    .line 914
    add-int/lit8 v17, v17, -0x1

    goto :goto_b

    .line 911
    :cond_1f
    aget-wide v36, p0, v17

    aput-wide v36, p0, v22

    goto :goto_e

    .line 927
    .end local v10    # "ak":J
    .end local v22    # "k":I
    .end local v30    # "pivot1":J
    .end local v32    # "pivot2":J
    :cond_20
    aget-wide v28, p0, v14

    .line 949
    .local v28, "pivot":J
    move/from16 v22, p1

    .restart local v22    # "k":I
    :goto_f
    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_25

    .line 950
    aget-wide v36, p0, v22

    cmp-long v36, v36, v28

    if-nez v36, :cond_21

    .line 949
    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 953
    :cond_21
    aget-wide v10, p0, v22

    .line 954
    .restart local v10    # "ak":J
    cmp-long v36, v10, v28

    if-gez v36, :cond_22

    .line 955
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 956
    aput-wide v10, p0, v26

    .line 957
    add-int/lit8 v26, v26, 0x1

    goto :goto_10

    .line 959
    :cond_22
    :goto_11
    aget-wide v36, p0, v17

    cmp-long v36, v36, v28

    if-lez v36, :cond_23

    .line 960
    add-int/lit8 v17, v17, -0x1

    goto :goto_11

    .line 962
    :cond_23
    aget-wide v36, p0, v17

    cmp-long v36, v36, v28

    if-gez v36, :cond_24

    .line 963
    aget-wide v36, p0, v26

    aput-wide v36, p0, v22

    .line 964
    aget-wide v36, p0, v17

    aput-wide v36, p0, v26

    .line 965
    add-int/lit8 v26, v26, 0x1

    .line 977
    :goto_12
    aput-wide v10, p0, v17

    .line 978
    add-int/lit8 v17, v17, -0x1

    goto :goto_10

    .line 975
    :cond_24
    aput-wide v28, p0, v22

    goto :goto_12

    .line 987
    .end local v10    # "ak":J
    :cond_25
    add-int/lit8 v36, v26, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v36

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 988
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
    .param p0, "a"    # [J
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [J
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 558
    sub-int v28, p2, p1

    const/16 v29, 0x11e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 559
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 560
    return-void

    .line 567
    :cond_0
    const/16 v28, 0x44

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 568
    .local v24, "run":[I
    const/4 v8, 0x0

    .local v8, "count":I
    const/16 v28, 0x0

    aput p1, v24, v28

    .line 571
    move/from16 v11, p1

    .local v11, "k":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_9

    .line 572
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-gez v28, :cond_3

    .line 573
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-lez v28, :cond_1

    .line 592
    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/16 v28, 0x43

    move/from16 v0, v28

    if-ne v8, v0, :cond_8

    .line 593
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 594
    return-void

    .line 574
    :cond_3
    aget-wide v28, p0, v11

    add-int/lit8 v30, v11, 0x1

    aget-wide v30, p0, v30

    cmp-long v28, v28, v30

    if-lez v28, :cond_6

    .line 575
    :cond_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_5

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-gez v28, :cond_4

    .line 576
    :cond_5
    aget v28, v24, v8

    add-int/lit8 v13, v28, -0x1

    .local v13, "lo":I
    move v9, v11

    .local v9, "hi":I
    :goto_1
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v13, v9, :cond_2

    .line 577
    aget-wide v26, p0, v13

    .local v26, "t":J
    aget-wide v28, p0, v9

    aput-wide v28, p0, v13

    aput-wide v26, p0, v9

    goto :goto_1

    .line 580
    .end local v9    # "hi":I
    .end local v13    # "lo":I
    .end local v26    # "t":J
    :cond_6
    const/16 v14, 0x21

    .local v14, "m":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    move/from16 v0, p2

    if-gt v11, v0, :cond_2

    add-int/lit8 v28, v11, -0x1

    aget-wide v28, p0, v28

    aget-wide v30, p0, v11

    cmp-long v28, v28, v30

    if-nez v28, :cond_2

    .line 581
    add-int/lit8 v14, v14, -0x1

    if-nez v14, :cond_7

    .line 582
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([JIIZ)V

    .line 583
    return-void

    .line 571
    .end local v14    # "m":I
    :cond_8
    aput v11, v24, v8

    goto/16 :goto_0

    .line 600
    :cond_9
    aget v28, v24, v8

    add-int/lit8 v23, p2, 0x1

    .end local p2    # "right":I
    .local v23, "right":I
    move/from16 v0, v28

    move/from16 v1, p2

    if-ne v0, v1, :cond_b

    .line 601
    add-int/lit8 v8, v8, 0x1

    aput v23, v24, v8

    .line 607
    :cond_a
    const/16 v18, 0x0

    .line 608
    .local v18, "odd":B
    const/16 v16, 0x1

    .end local v18    # "odd":B
    .local v16, "n":I
    :goto_2
    shl-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    if-ge v0, v8, :cond_c

    xor-int/lit8 v28, v18, 0x1

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v18, v0

    .local v18, "odd":B
    goto :goto_2

    .line 602
    .end local v16    # "n":I
    .end local v18    # "odd":B
    :cond_b
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v8, v0, :cond_a

    .line 603
    return-void

    .line 613
    .restart local v16    # "n":I
    :cond_c
    sub-int v6, v23, p1

    .line 614
    .local v6, "blen":I
    if-eqz p3, :cond_d

    move/from16 v0, p5

    if-ge v0, v6, :cond_10

    .line 615
    :cond_d
    :goto_3
    new-array v0, v6, [J

    move-object/from16 p3, v0

    .line 616
    const/16 p4, 0x0

    .line 618
    :cond_e
    if-nez v18, :cond_11

    .line 619
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 620
    move-object/from16 v5, p0

    .line 621
    .local v5, "b":[J
    const/4 v7, 0x0

    .line 622
    .local v7, "bo":I
    move-object/from16 p0, p3

    .line 623
    sub-int v4, p4, p1

    .line 631
    .local v4, "ao":I
    :goto_4
    const/16 v28, 0x1

    move/from16 v0, v28

    if-le v8, v0, :cond_17

    .line 632
    const/4 v12, 0x0

    .local v12, "last":I
    const/4 v11, 0x2

    :goto_5
    if-gt v11, v8, :cond_14

    .line 633
    aget v9, v24, v11

    .restart local v9    # "hi":I
    add-int/lit8 v28, v11, -0x1

    aget v15, v24, v28

    .line 634
    .local v15, "mi":I
    add-int/lit8 v28, v11, -0x2

    aget v10, v24, v28

    .local v10, "i":I
    move/from16 v19, v10

    .local v19, "p":I
    move/from16 v21, v15

    .local v21, "q":I
    move/from16 v22, v21

    .end local v21    # "q":I
    .local v22, "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .local v20, "p":I
    :goto_6
    if-ge v10, v9, :cond_13

    .line 635
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

    .line 636
    :cond_f
    add-int v28, v10, v7

    add-int/lit8 v19, v20, 0x1

    .end local v20    # "p":I
    .restart local v19    # "p":I
    add-int v29, v20, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v21, v22

    .line 634
    .end local v22    # "q":I
    .restart local v21    # "q":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v22, v21

    .end local v21    # "q":I
    .restart local v22    # "q":I
    move/from16 v20, v19

    .end local v19    # "p":I
    .restart local v20    # "p":I
    goto :goto_6

    .line 614
    .end local v4    # "ao":I
    .end local v5    # "b":[J
    .end local v7    # "bo":I
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v12    # "last":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_10
    add-int v28, p4, v6

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_e

    goto :goto_3

    .line 625
    :cond_11
    move-object/from16 v5, p3

    .line 626
    .restart local v5    # "b":[J
    const/4 v4, 0x0

    .line 627
    .restart local v4    # "ao":I
    sub-int v7, p4, p1

    .restart local v7    # "bo":I
    goto :goto_4

    .line 638
    .restart local v9    # "hi":I
    .restart local v10    # "i":I
    .restart local v12    # "last":I
    .restart local v15    # "mi":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_12
    add-int v28, v10, v7

    add-int/lit8 v21, v22, 0x1

    .end local v22    # "q":I
    .restart local v21    # "q":I
    add-int v29, v22, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    move/from16 v19, v20

    .end local v20    # "p":I
    .restart local v19    # "p":I
    goto :goto_7

    .line 641
    .end local v19    # "p":I
    .end local v21    # "q":I
    .restart local v20    # "p":I
    .restart local v22    # "q":I
    :cond_13
    add-int/lit8 v12, v12, 0x1

    aput v9, v24, v12

    .line 632
    add-int/lit8 v11, v11, 0x2

    goto :goto_5

    .line 643
    .end local v9    # "hi":I
    .end local v10    # "i":I
    .end local v15    # "mi":I
    .end local v20    # "p":I
    .end local v22    # "q":I
    :cond_14
    and-int/lit8 v28, v8, 0x1

    if-eqz v28, :cond_16

    .line 644
    move/from16 v10, v23

    .restart local v10    # "i":I
    add-int/lit8 v28, v8, -0x1

    aget v13, v24, v28

    .restart local v13    # "lo":I
    :goto_8
    add-int/lit8 v10, v10, -0x1

    if-lt v10, v13, :cond_15

    .line 645
    add-int v28, v10, v7

    add-int v29, v10, v4

    aget-wide v30, p0, v29

    aput-wide v30, v5, v28

    goto :goto_8

    .line 647
    :cond_15
    add-int/lit8 v12, v12, 0x1

    aput v23, v24, v12

    .line 649
    .end local v10    # "i":I
    .end local v13    # "lo":I
    :cond_16
    move-object/from16 v25, p0

    .local v25, "t":[J
    move-object/from16 p0, v5

    move-object/from16 v5, v25

    .line 650
    move/from16 v17, v4

    .local v17, "o":I
    move v4, v7

    move/from16 v7, v17

    .line 631
    move v8, v12

    goto/16 :goto_4

    .line 556
    .end local v12    # "last":I
    .end local v17    # "o":I
    .end local v25    # "t":[J
    :cond_17
    return-void
.end method

.method private static sort([SIIZ)V
    .locals 29
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "leftmost"    # Z

    .prologue
    .line 1147
    sub-int v27, p2, p1

    add-int/lit8 v20, v27, 0x1

    .line 1150
    .local v20, "length":I
    const/16 v27, 0x2f

    move/from16 v0, v20

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 1151
    if-eqz p3, :cond_3

    .line 1157
    move/from16 v15, p1

    .local v15, "i":I
    move/from16 v16, p1

    .local v16, "j":I
    :goto_0
    move/from16 v0, p2

    if-ge v15, v0, :cond_a

    .line 1158
    add-int/lit8 v27, v15, 0x1

    aget-short v6, p0, v27

    .line 1159
    .local v6, "ai":S
    :goto_1
    aget-short v27, p0, v16

    move/from16 v0, v27

    if-ge v6, v0, :cond_0

    .line 1160
    add-int/lit8 v27, v16, 0x1

    aget-short v28, p0, v16

    aput-short v28, p0, v27

    .line 1161
    add-int/lit8 v17, v16, -0x1

    .end local v16    # "j":I
    .local v17, "j":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_1

    move/from16 v16, v17

    .line 1165
    .end local v17    # "j":I
    .restart local v16    # "j":I
    :cond_0
    add-int/lit8 v27, v16, 0x1

    aput-short v6, p0, v27

    .line 1157
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v15

    goto :goto_0

    .end local v16    # "j":I
    .restart local v17    # "j":I
    :cond_1
    move/from16 v16, v17

    .end local v17    # "j":I
    .restart local v16    # "j":I
    goto :goto_1

    .line 1175
    .end local v6    # "ai":S
    .end local v15    # "i":I
    .end local v16    # "j":I
    :cond_2
    add-int/lit8 p1, p1, 0x1

    aget-short v27, p0, p1

    add-int/lit8 v28, p1, -0x1

    aget-short v28, p0, v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_4

    .line 1172
    :cond_3
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_2

    .line 1173
    return-void

    .line 1185
    :cond_4
    move/from16 v18, p1

    .local v18, "k":I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_8

    .line 1186
    aget-short v4, p0, v18

    .local v4, "a1":S
    aget-short v5, p0, p1

    .line 1188
    .local v5, "a2":S
    if-ge v4, v5, :cond_5

    .line 1189
    move v5, v4

    aget-short v4, p0, p1

    .line 1191
    :cond_5
    :goto_3
    add-int/lit8 v18, v18, -0x1

    aget-short v27, p0, v18

    move/from16 v0, v27

    if-ge v4, v0, :cond_6

    .line 1192
    add-int/lit8 v27, v18, 0x2

    aget-short v28, p0, v18

    aput-short v28, p0, v27

    goto :goto_3

    .line 1194
    :cond_6
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v27, v18, 0x1

    aput-short v4, p0, v27

    .line 1196
    :goto_4
    add-int/lit8 v18, v18, -0x1

    aget-short v27, p0, v18

    move/from16 v0, v27

    if-ge v5, v0, :cond_7

    .line 1197
    add-int/lit8 v27, v18, 0x1

    aget-short v28, p0, v18

    aput-short v28, p0, v27

    goto :goto_4

    .line 1199
    :cond_7
    add-int/lit8 v27, v18, 0x1

    aput-short v5, p0, v27

    .line 1185
    add-int/lit8 p1, p1, 0x1

    move/from16 v18, p1

    goto :goto_2

    .line 1201
    .end local v4    # "a1":S
    .end local v5    # "a2":S
    :cond_8
    aget-short v19, p0, p2

    .line 1203
    .local v19, "last":S
    :goto_5
    add-int/lit8 p2, p2, -0x1

    aget-short v27, p0, p2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    .line 1204
    add-int/lit8 v27, p2, 0x1

    aget-short v28, p0, p2

    aput-short v28, p0, v27

    goto :goto_5

    .line 1206
    :cond_9
    add-int/lit8 v27, p2, 0x1

    aput-short v19, p0, v27

    .line 1208
    .end local v18    # "k":I
    .end local v19    # "last":S
    :cond_a
    return-void

    .line 1212
    :cond_b
    shr-int/lit8 v27, v20, 0x3

    shr-int/lit8 v28, v20, 0x6

    add-int v27, v27, v28

    add-int/lit8 v25, v27, 0x1

    .line 1221
    .local v25, "seventh":I
    add-int v27, p1, p2

    ushr-int/lit8 v10, v27, 0x1

    .line 1222
    .local v10, "e3":I
    sub-int v9, v10, v25

    .line 1223
    .local v9, "e2":I
    sub-int v8, v9, v25

    .line 1224
    .local v8, "e1":I
    add-int v11, v10, v25

    .line 1225
    .local v11, "e4":I
    add-int v12, v11, v25

    .line 1228
    .local v12, "e5":I
    aget-short v27, p0, v9

    aget-short v28, p0, v8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    aget-short v26, p0, v9

    .local v26, "t":S
    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1230
    .end local v26    # "t":S
    :cond_c
    aget-short v27, p0, v10

    aget-short v28, p0, v9

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    aget-short v26, p0, v10

    .restart local v26    # "t":S
    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    .line 1231
    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1233
    .end local v26    # "t":S
    :cond_d
    aget-short v27, p0, v11

    aget-short v28, p0, v10

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget-short v26, p0, v11

    .restart local v26    # "t":S
    aget-short v27, p0, v10

    aput-short v27, p0, v11

    aput-short v26, p0, v10

    .line 1234
    aget-short v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    .line 1235
    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_e

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1238
    .end local v26    # "t":S
    :cond_e
    aget-short v27, p0, v12

    aget-short v28, p0, v11

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_f

    aget-short v26, p0, v12

    .restart local v26    # "t":S
    aget-short v27, p0, v11

    aput-short v27, p0, v12

    aput-short v26, p0, v11

    .line 1239
    aget-short v27, p0, v10

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-short v27, p0, v10

    aput-short v27, p0, v11

    aput-short v26, p0, v10

    .line 1240
    aget-short v27, p0, v9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-short v27, p0, v9

    aput-short v27, p0, v10

    aput-short v26, p0, v9

    .line 1241
    aget-short v27, p0, v8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    aget-short v27, p0, v8

    aput-short v27, p0, v9

    aput-short v26, p0, v8

    .line 1247
    .end local v26    # "t":S
    :cond_f
    move/from16 v21, p1

    .line 1248
    .local v21, "less":I
    move/from16 v13, p2

    .line 1250
    .local v13, "great":I
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

    .line 1256
    aget-short v23, p0, v9

    .line 1257
    .local v23, "pivot1":S
    aget-short v24, p0, v11

    .line 1265
    .local v24, "pivot2":S
    aget-short v27, p0, p1

    aput-short v27, p0, v9

    .line 1266
    aget-short v27, p0, p2

    aput-short v27, p0, v11

    .line 1271
    :cond_10
    add-int/lit8 v21, v21, 0x1

    aget-short v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    .line 1272
    :cond_11
    add-int/lit8 v13, v13, -0x1

    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-gt v0, v1, :cond_11

    .line 1294
    add-int/lit8 v18, v21, -0x1

    .restart local v18    # "k":I
    :cond_12
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_14

    .line 1295
    aget-short v7, p0, v18

    .line 1296
    .local v7, "ak":S
    move/from16 v0, v23

    if-ge v7, v0, :cond_13

    .line 1297
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1302
    aput-short v7, p0, v21

    .line 1303
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1304
    :cond_13
    move/from16 v0, v24

    if-le v7, v0, :cond_12

    .line 1305
    :goto_7
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-le v0, v1, :cond_16

    .line 1306
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .local v14, "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    move v13, v14

    .line 1327
    .end local v7    # "ak":S
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_14
    add-int/lit8 v27, v21, -0x1

    aget-short v27, p0, v27

    aput-short v27, p0, p1

    add-int/lit8 v27, v21, -0x1

    aput-short v23, p0, v27

    .line 1328
    add-int/lit8 v27, v13, 0x1

    aget-short v27, p0, v27

    aput-short v27, p0, p2

    add-int/lit8 v27, v13, 0x1

    aput-short v24, p0, v27

    .line 1331
    add-int/lit8 v27, v21, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1332
    add-int/lit8 v27, v13, 0x2

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, p2

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1338
    move/from16 v0, v21

    if-ge v0, v8, :cond_1c

    if-ge v12, v13, :cond_1c

    .line 1342
    :goto_8
    aget-short v27, p0, v21

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    .line 1343
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .end local v13    # "great":I
    .restart local v7    # "ak":S
    .restart local v14    # "great":I
    :cond_15
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_7

    .line 1310
    :cond_16
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ge v0, v1, :cond_17

    .line 1311
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1312
    aget-short v27, p0, v13

    aput-short v27, p0, v21

    .line 1313
    add-int/lit8 v21, v21, 0x1

    .line 1321
    :goto_9
    aput-short v7, p0, v13

    .line 1322
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    .line 1315
    :cond_17
    aget-short v27, p0, v13

    aput-short v27, p0, v18

    goto :goto_9

    .line 1346
    .end local v7    # "ak":S
    :cond_18
    :goto_a
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 1347
    add-int/lit8 v13, v13, -0x1

    goto :goto_a

    .line 1370
    :cond_19
    add-int/lit8 v18, v21, -0x1

    :cond_1a
    :goto_b
    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v0, v13, :cond_1c

    .line 1371
    aget-short v7, p0, v18

    .line 1372
    .restart local v7    # "ak":S
    move/from16 v0, v23

    if-ne v7, v0, :cond_1b

    .line 1373
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1374
    aput-short v7, p0, v21

    .line 1375
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 1376
    :cond_1b
    move/from16 v0, v24

    if-ne v7, v0, :cond_1a

    .line 1377
    :goto_c
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 1378
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "great":I
    .restart local v14    # "great":I
    move/from16 v0, v18

    if-ne v13, v0, :cond_1d

    move v13, v14

    .line 1404
    .end local v7    # "ak":S
    .end local v14    # "great":I
    .restart local v13    # "great":I
    :cond_1c
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-static {v0, v1, v13, v2}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1146
    .end local v23    # "pivot1":S
    .end local v24    # "pivot2":S
    :goto_d
    return-void

    .end local v13    # "great":I
    .restart local v7    # "ak":S
    .restart local v14    # "great":I
    .restart local v23    # "pivot1":S
    .restart local v24    # "pivot2":S
    :cond_1d
    move v13, v14

    .end local v14    # "great":I
    .restart local v13    # "great":I
    goto :goto_c

    .line 1382
    :cond_1e
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 1383
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1392
    aput-short v23, p0, v21

    .line 1393
    add-int/lit8 v21, v21, 0x1

    .line 1397
    :goto_e
    aput-short v7, p0, v13

    .line 1398
    add-int/lit8 v13, v13, -0x1

    goto :goto_b

    .line 1395
    :cond_1f
    aget-short v27, p0, v13

    aput-short v27, p0, v18

    goto :goto_e

    .line 1411
    .end local v7    # "ak":S
    .end local v18    # "k":I
    .end local v23    # "pivot1":S
    .end local v24    # "pivot2":S
    :cond_20
    aget-short v22, p0, v10

    .line 1433
    .local v22, "pivot":S
    move/from16 v18, p1

    .restart local v18    # "k":I
    :goto_f
    move/from16 v0, v18

    if-gt v0, v13, :cond_25

    .line 1434
    aget-short v27, p0, v18

    move/from16 v0, v27

    move/from16 v1, v22

    if-ne v0, v1, :cond_21

    .line 1433
    :goto_10
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 1437
    :cond_21
    aget-short v7, p0, v18

    .line 1438
    .restart local v7    # "ak":S
    move/from16 v0, v22

    if-ge v7, v0, :cond_22

    .line 1439
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1440
    aput-short v7, p0, v21

    .line 1441
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1443
    :cond_22
    :goto_11
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-le v0, v1, :cond_23

    .line 1444
    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    .line 1446
    :cond_23
    aget-short v27, p0, v13

    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_24

    .line 1447
    aget-short v27, p0, v21

    aput-short v27, p0, v18

    .line 1448
    aget-short v27, p0, v13

    aput-short v27, p0, v21

    .line 1449
    add-int/lit8 v21, v21, 0x1

    .line 1461
    :goto_12
    aput-short v7, p0, v13

    .line 1462
    add-int/lit8 v13, v13, -0x1

    goto :goto_10

    .line 1459
    :cond_24
    aput-short v22, p0, v18

    goto :goto_12

    .line 1471
    .end local v7    # "ak":S
    :cond_25
    add-int/lit8 v27, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v27

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Ljava/util/DualPivotQuicksort;->sort([SIIZ)V

    .line 1472
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
    .param p0, "a"    # [S
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "work"    # [S
    .param p4, "workBase"    # I
    .param p5, "workLen"    # I

    .prologue
    .line 1006
    sub-int v5, p2, p1

    const/16 v6, 0xc80

    if-le v5, v6, :cond_3

    .line 1007
    const/high16 v5, 0x10000

    new-array v0, v5, [I

    .line 1009
    .local v0, "count":[I
    add-int/lit8 v1, p1, -0x1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    if-gt v1, p2, :cond_0

    .line 1010
    aget-short v5, p0, v1

    const/16 v6, -0x8000

    sub-int/2addr v5, v6

    aget v6, v0, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v5

    goto :goto_0

    .line 1012
    :cond_0
    const/high16 v1, 0x10000

    add-int/lit8 v2, p2, 0x1

    .local v2, "k":I
    :cond_1
    if-le v2, p1, :cond_4

    .line 1013
    :cond_2
    add-int/lit8 v1, v1, -0x1

    aget v5, v0, v1

    if-eqz v5, :cond_2

    .line 1014
    add-int/lit16 v5, v1, -0x8000

    int-to-short v4, v5

    .line 1015
    .local v4, "value":S
    aget v3, v0, v1

    .line 1018
    .local v3, "s":I
    :goto_1
    add-int/lit8 v2, v2, -0x1

    aput-short v4, p0, v2

    .line 1019
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    goto :goto_1

    .line 1022
    .end local v0    # "count":[I
    .end local v1    # "i":I
    .end local v2    # "k":I
    .end local v3    # "s":I
    .end local v4    # "value":S
    :cond_3
    invoke-static/range {p0 .. p5}, Ljava/util/DualPivotQuicksort;->doSort([SII[SII)V

    .line 1004
    :cond_4
    return-void
.end method
