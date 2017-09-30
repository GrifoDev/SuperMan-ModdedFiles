.class public Lcom/sec/android/gradient_color_extractor/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/b$a;
    }
.end annotation


# static fields
.field static a:Lcom/sec/android/gradient_color_extractor/b$a;

.field static b:I

.field static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/android/gradient_color_extractor/b$a;->b:Lcom/sec/android/gradient_color_extractor/b$a;

    sput-object v0, Lcom/sec/android/gradient_color_extractor/b;->a:Lcom/sec/android/gradient_color_extractor/b$a;

    const/16 v0, 0x200

    sput v0, Lcom/sec/android/gradient_color_extractor/b;->b:I

    const/16 v0, 0x13

    sput v0, Lcom/sec/android/gradient_color_extractor/b;->c:I

    return-void
.end method

.method static a(FFFF)F
    .locals 1

    mul-float v0, p2, p0

    div-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method static a(FFFFF)F
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p0

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr v0, p0

    float-to-double v4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    float-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    float-to-double v6, p3

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    float-to-double v6, p0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    float-to-double v6, v0

    mul-double/2addr v4, v6

    float-to-double v6, p4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    float-to-double v4, p0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v0, v1

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    return v0
.end method

.method static a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sget-object v0, Lcom/sec/android/gradient_color_extractor/b$1;->a:[I

    invoke-virtual {p3}, Lcom/sec/android/gradient_color_extractor/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFF)F

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/b;->b(FFFF)F

    move-result v0

    goto :goto_0

    :pswitch_1
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/b;->c(FFFF)F

    move-result v0

    goto :goto_0

    :pswitch_2
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/b;->d(FFFF)F

    move-result v0

    goto :goto_0

    :pswitch_3
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/b;->e(FFFF)F

    move-result v0

    goto :goto_0

    :pswitch_4
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/b;->f(FFFF)F

    move-result v0

    goto :goto_0

    :pswitch_5
    sub-float v0, p2, p1

    invoke-static {p0, p1, v0, v2}, Lcom/sec/android/gradient_color_extractor/b;->g(FFFF)F

    move-result v0

    goto :goto_0

    :pswitch_6
    sub-float v0, p2, p1

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3f19999a    # 0.6f

    invoke-static {p0, p1, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFFF)F

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static a(II)I
    .locals 2

    add-int/lit8 v0, p0, -0x1

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int v1, p0, p1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static a(IIII)Landroid/graphics/Bitmap;
    .locals 31

    const/4 v4, 0x4

    move/from16 v0, p3

    if-ge v0, v4, :cond_0

    move v12, v4

    :goto_0
    sget v4, Lcom/sec/android/gradient_color_extractor/b;->b:I

    div-int v4, v12, v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v14

    sget v15, Lcom/sec/android/gradient_color_extractor/b;->c:I

    const/4 v6, 0x1

    const/4 v4, 0x1

    mul-int v7, p2, v4

    mul-int v11, v12, v4

    mul-int v4, v7, v11

    new-array v5, v4, [I

    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v16, v0

    const/4 v4, 0x0

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    aput v8, v16, v4

    const/4 v4, 0x1

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    aput v8, v16, v4

    const/4 v4, 0x2

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    aput v8, v16, v4

    const/4 v4, 0x3

    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    aput v8, v16, v4

    const/4 v4, 0x4

    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/4 v4, 0x0

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    aput v8, v17, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    aput v8, v17, v4

    const/4 v4, 0x2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    aput v8, v17, v4

    const/4 v4, 0x3

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    aput v8, v17, v4

    new-instance v18, Ljava/util/Random;

    invoke-direct/range {v18 .. v18}, Ljava/util/Random;-><init>()V

    new-array v0, v15, [[I

    move-object/from16 v19, v0

    new-array v0, v15, [[I

    move-object/from16 v20, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_3

    const/4 v8, 0x4

    new-array v8, v8, [I

    aput-object v8, v19, v4

    const/4 v8, 0x4

    new-array v8, v8, [I

    aput-object v8, v20, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v6, 0x402c000000000000L    # 14.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v5, 0x7

    if-ge v6, v5, :cond_f

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-int/lit8 v5, v6, 0x8

    add-int/lit8 v5, v5, 0x1

    int-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v7, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-int/lit8 v5, v6, 0x8

    int-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v5, v8

    move/from16 v0, p3

    if-lt v0, v5, :cond_1

    move/from16 v0, p3

    if-ge v0, v7, :cond_1

    :goto_3
    if-le v5, v4, :cond_2

    :goto_4
    move v12, v4

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_2

    :cond_2
    move v4, v5

    goto :goto_4

    :cond_3
    sget-object v21, Lcom/sec/android/gradient_color_extractor/b;->a:Lcom/sec/android/gradient_color_extractor/b$a;

    const/4 v4, 0x0

    move v13, v4

    :goto_5
    if-ge v13, v11, :cond_e

    const/high16 v4, 0x3f800000    # 1.0f

    add-int/lit8 v8, v11, -0x1

    int-to-float v8, v8

    div-float v9, v4, v8

    const/4 v4, 0x0

    move v8, v4

    :goto_6
    if-ge v8, v15, :cond_6

    add-int/lit8 v4, v8, 0x1

    mul-int/2addr v4, v14

    add-int/2addr v4, v13

    int-to-float v4, v4

    int-to-float v10, v11

    cmpl-float v10, v4, v10

    if-ltz v10, :cond_4

    add-int/lit8 v10, v11, -0x1

    int-to-float v10, v10

    add-int/lit8 v22, v11, -0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v4, v4, v22

    sub-float v4, v10, v4

    :cond_4
    mul-float/2addr v4, v9

    aget-object v10, v20, v8

    const/16 v22, 0x0

    const/16 v23, 0x0

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v10, v22

    aget-object v10, v20, v8

    const/16 v22, 0x1

    const/16 v23, 0x1

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v10, v22

    aget-object v10, v20, v8

    const/16 v22, 0x2

    const/16 v23, 0x2

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v10, v22

    aget-object v10, v20, v8

    const/16 v22, 0x3

    const/16 v23, 0x3

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v4

    float-to-int v4, v4

    aput v4, v10, v22

    mul-int v4, v14, v8

    sub-int v4, v13, v4

    int-to-float v4, v4

    const/4 v10, 0x0

    cmpg-float v10, v4, v10

    if-gez v10, :cond_5

    neg-float v4, v4

    :cond_5
    mul-float/2addr v4, v9

    aget-object v10, v19, v8

    const/16 v22, 0x0

    const/16 v23, 0x0

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v10, v22

    aget-object v10, v19, v8

    const/16 v22, 0x1

    const/16 v23, 0x1

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v10, v22

    aget-object v10, v19, v8

    const/16 v22, 0x2

    const/16 v23, 0x2

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v10, v22

    aget-object v10, v19, v8

    const/16 v22, 0x3

    const/16 v23, 0x3

    aget v23, v16, v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x3

    aget v24, v17, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v4, v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/b;->a(FFFLcom/sec/android/gradient_color_extractor/b$a;)F

    move-result v4

    float-to-int v4, v4

    aput v4, v10, v22

    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_6

    :cond_6
    mul-int v22, v13, v7

    add-int/lit8 v4, v13, 0x1

    mul-int/2addr v4, v7

    const/4 v4, 0x0

    move v10, v4

    :goto_7
    if-ge v10, v7, :cond_d

    const/4 v4, 0x0

    move v9, v4

    :goto_8
    if-ge v9, v14, :cond_c

    add-int v4, v22, v10

    mul-int v8, v9, v7

    add-int v23, v4, v8

    const/4 v4, 0x1

    sub-int v8, v15, v6

    invoke-static {v4, v8}, Lcom/sec/android/gradient_color_extractor/b;->a(II)I

    move-result v4

    const/4 v8, 0x1

    add-int/lit8 v24, v15, -0x1

    sub-int v24, v24, v6

    move/from16 v0, v24

    invoke-static {v8, v0}, Lcom/sec/android/gradient_color_extractor/b;->a(II)I

    move-result v8

    add-int/2addr v4, v8

    mul-int v24, v14, v4

    invoke-virtual/range {v18 .. v18}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int v4, v4, v24

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v25

    const/4 v4, 0x0

    move v8, v4

    move v4, v6

    :goto_9
    if-ge v4, v15, :cond_7

    mul-int v26, v14, v15

    add-int/lit8 v27, v4, 0x1

    mul-int v27, v27, v14

    sub-int v27, v27, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    sub-int v26, v26, v27

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int v8, v8, v26

    move/from16 v0, v25

    if-ge v0, v8, :cond_8

    aget-object v8, v20, v4

    const/16 v24, 0x0

    aget v8, v8, v24

    aget-object v24, v20, v4

    const/16 v25, 0x1

    aget v24, v24, v25

    aget-object v25, v20, v4

    const/16 v26, 0x2

    aget v25, v25, v26

    aget-object v4, v20, v4

    const/16 v26, 0x3

    aget v4, v4, v26

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v8, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v5, v23

    :cond_7
    :goto_a
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto :goto_8

    :cond_8
    mul-int v26, v14, v15

    add-int/lit8 v27, v4, 0x0

    mul-int v27, v27, v14

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    sub-int v26, v26, v27

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->max(II)I

    move-result v26

    add-int v8, v8, v26

    move/from16 v0, v25

    if-ge v0, v8, :cond_9

    aget-object v8, v19, v4

    const/16 v24, 0x0

    aget v8, v8, v24

    aget-object v24, v19, v4

    const/16 v25, 0x1

    aget v24, v24, v25

    aget-object v25, v19, v4

    const/16 v26, 0x2

    aget v25, v25, v26

    aget-object v4, v19, v4

    const/16 v26, 0x3

    aget v4, v4, v26

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-static {v8, v0, v1, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v5, v23

    goto :goto_a

    :cond_9
    add-int/lit8 v26, v15, -0x1

    move/from16 v0, v26

    if-ne v4, v0, :cond_a

    sub-int v26, v24, v25

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(I)I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v25

    if-le v0, v1, :cond_b

    const/16 v26, 0x0

    aget-object v26, v20, v26

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget-object v27, v20, v27

    const/16 v28, 0x1

    aget v27, v27, v28

    const/16 v28, 0x0

    aget-object v28, v20, v28

    const/16 v29, 0x2

    aget v28, v28, v29

    const/16 v29, 0x0

    aget-object v29, v20, v29

    const/16 v30, 0x3

    aget v29, v29, v30

    invoke-static/range {v26 .. v29}, Landroid/graphics/Color;->argb(IIII)I

    move-result v26

    aput v26, v5, v23

    :cond_a
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_b
    const/16 v26, 0x0

    aget-object v26, v19, v26

    const/16 v27, 0x0

    aget v26, v26, v27

    const/16 v27, 0x0

    aget-object v27, v19, v27

    const/16 v28, 0x1

    aget v27, v27, v28

    const/16 v28, 0x0

    aget-object v28, v19, v28

    const/16 v29, 0x2

    aget v28, v28, v29

    const/16 v29, 0x0

    aget-object v29, v19, v29

    const/16 v30, 0x3

    aget v29, v29, v30

    invoke-static/range {v26 .. v29}, Landroid/graphics/Color;->argb(IIII)I

    move-result v26

    aput v26, v5, v23

    goto :goto_b

    :cond_c
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    goto/16 :goto_7

    :cond_d
    add-int v4, v13, v14

    move v13, v4

    goto/16 :goto_5

    :cond_e
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v11, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-static {v4, v0, v12, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-object v5

    :cond_f
    move/from16 v5, p3

    goto/16 :goto_3
.end method

.method static b(FFFF)F
    .locals 6

    neg-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    float-to-double v4, p0

    mul-double/2addr v2, v4

    float-to-double v4, p3

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method static c(FFFF)F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, p3, v3

    div-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    div-float v1, p2, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    div-float v1, p2, v3

    sub-float/2addr v0, v3

    mul-float v2, v0, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0
.end method

.method static d(FFFF)F
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, p3, v2

    div-float v0, p0, v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    div-float v1, p2, v2

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    neg-float v1, p2

    div-float/2addr v1, v2

    sub-float/2addr v0, v3

    sub-float v2, v0, v2

    mul-float/2addr v0, v2

    sub-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0
.end method

.method static e(FFFF)F
    .locals 5

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v0, p3, v2

    div-float v0, p0, v0

    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    neg-float v1, p2

    div-float/2addr v1, v2

    mul-float/2addr v0, v0

    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    sub-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    div-float v1, p2, v2

    sub-float/2addr v0, v2

    mul-float/2addr v0, v0

    sub-float v0, v4, v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    add-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0
.end method

.method public static f(FFFF)F
    .locals 8

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p3

    if-nez v0, :cond_1

    add-float/2addr p1, p2

    goto :goto_0

    :cond_1
    div-float v0, p3, v4

    div-float v0, p0, v0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_2

    div-float v1, p2, v4

    const/high16 v2, 0x41200000    # 10.0f

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    goto :goto_0

    :cond_2
    div-float v1, p2, v4

    const/high16 v2, -0x3ee00000    # -10.0f

    sub-float/2addr v0, v3

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    neg-float v0, v0

    add-float/2addr v0, v4

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    goto :goto_0
.end method

.method static g(FFFF)F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, p3, v3

    div-float v0, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    div-float v1, p2, v3

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    div-float v1, p2, v3

    sub-float/2addr v0, v3

    mul-float v2, v0, v0

    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v3

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    goto :goto_0
.end method
