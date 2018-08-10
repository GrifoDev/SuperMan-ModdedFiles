.class public Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;
.super Landroid/view/animation/PathInterpolator;
.source "HeadsUpAppearInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/stack/HeadsUpAppearInterpolator;->getAppearPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/graphics/Path;)V

    return-void
.end method

.method private static getAppearPath()Landroid/graphics/Path;
    .locals 14

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v7, 0x437a0000    # 250.0f

    const/high16 v8, 0x43160000    # 150.0f

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v11, 0x42b40000    # 90.0f

    const/high16 v12, 0x429c0000    # 78.0f

    const/high16 v13, 0x42a00000    # 80.0f

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x42c80000    # 100.0f

    add-float v10, v1, v2

    const/high16 v1, 0x43610000    # 225.0f

    div-float/2addr v1, v10

    const/high16 v2, 0x43480000    # 200.0f

    div-float v3, v2, v10

    const/high16 v4, 0x3f900000    # 1.125f

    const/high16 v2, 0x437a0000    # 250.0f

    div-float v5, v2, v10

    const/high16 v6, 0x3f900000    # 1.125f

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, 0x437a0000    # 250.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v10

    const/high16 v2, 0x3f900000    # 1.125f

    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v4, 0x437a0000    # 250.0f

    add-float/2addr v3, v4

    div-float/2addr v3, v10

    const v4, 0x3f79999a    # 0.975f

    const/high16 v5, 0x43c80000    # 400.0f

    div-float/2addr v5, v10

    const v6, 0x3f79999a    # 0.975f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x43c80000    # 400.0f

    const/high16 v2, 0x42200000    # 40.0f

    add-float/2addr v1, v2

    div-float/2addr v1, v10

    const v2, 0x3f79999a    # 0.975f

    const/high16 v3, 0x43c80000    # 400.0f

    const/high16 v4, 0x41a00000    # 20.0f

    add-float/2addr v3, v4

    div-float/2addr v3, v10

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    return-object v0
.end method
