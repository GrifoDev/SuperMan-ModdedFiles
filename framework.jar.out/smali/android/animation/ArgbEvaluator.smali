.class public Landroid/animation/ArgbEvaluator;
.super Ljava/lang/Object;
.source "ArgbEvaluator.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field private static final sInstance:Landroid/animation/ArgbEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    sput-object v0, Landroid/animation/ArgbEvaluator;->sInstance:Landroid/animation/ArgbEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/animation/ArgbEvaluator;
    .locals 1

    sget-object v0, Landroid/animation/ArgbEvaluator;->sInstance:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v12

    shr-int/lit8 v14, v12, 0x18

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v9, v14, v15

    shr-int/lit8 v14, v12, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v13, v14, v15

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v11, v14, v15

    and-int/lit16 v14, v12, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v10, v14, v15

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    shr-int/lit8 v14, v5, 0x18

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v2, v14, v15

    shr-int/lit8 v14, v5, 0x10

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v6, v14, v15

    shr-int/lit8 v14, v5, 0x8

    and-int/lit16 v14, v14, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v4, v14, v15

    and-int/lit16 v14, v5, 0xff

    int-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    div-float v3, v14, v15

    float-to-double v14, v13

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v13, v14

    float-to-double v14, v11

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v11, v14

    float-to-double v14, v10

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v10, v14

    float-to-double v14, v6

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v6, v14

    float-to-double v14, v4

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v4, v14

    float-to-double v14, v3

    const-wide v16, 0x400199999999999aL    # 2.2

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v3, v14

    sub-float v14, v2, v9

    mul-float v14, v14, p1

    add-float v0, v9, v14

    sub-float v14, v6, v13

    mul-float v14, v14, p1

    add-float v8, v13, v14

    sub-float v14, v4, v11

    mul-float v14, v14, p1

    add-float v7, v11, v14

    sub-float v14, v3, v10

    mul-float v14, v14, p1

    add-float v1, v10, v14

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float/2addr v0, v14

    float-to-double v14, v8

    const-wide v16, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v8, v14, v15

    float-to-double v14, v7

    const-wide v16, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v7, v14, v15

    float-to-double v14, v1

    const-wide v16, 0x3fdd1745d1745d17L    # 0.45454545454545453

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    double-to-float v14, v14

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v1, v14, v15

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v15

    shl-int/lit8 v15, v15, 0x10

    or-int/2addr v14, v15

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v15

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v15

    or-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    return-object v14
.end method
