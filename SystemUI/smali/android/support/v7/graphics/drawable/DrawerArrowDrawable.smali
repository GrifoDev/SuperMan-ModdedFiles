.class public Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/drawable/DrawerArrowDrawable$ArrowDirection;
    }
.end annotation


# static fields
.field private static final ARROW_HEAD_ANGLE:F


# instance fields
.field private mArrowHeadLength:F

.field private mArrowShaftLength:F

.field private mBarGap:F

.field private mBarLength:F

.field private mDirection:I

.field private mMaxCutForBarSize:F

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mProgress:F

.field private final mSize:I

.field private mSpin:Z

.field private mVerticalMirror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    return-void
.end method

.method private static lerp(FFF)F
    .locals 1

    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v5, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v8

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move/from16 v0, v18

    int-to-float v7, v0

    const/16 v18, 0x0

    sget v19, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v15

    if-eqz v13, :cond_3

    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    if-eqz v13, :cond_4

    const/16 v18, 0xb4

    :goto_2
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v12

    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v9, v0

    float-to-double v0, v5

    move-wide/from16 v18, v0

    float-to-double v0, v15

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v19

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F

    move/from16 v19, v0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F

    move-result v16

    neg-float v0, v8

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v4, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v4, v7

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    mul-float v19, v19, v7

    sub-float v19, v8, v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    neg-float v0, v6

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->rLineTo(FF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v10

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40400000    # 3.0f

    mul-float v19, v19, v10

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    div-int/lit8 v18, v14, 0x4

    mul-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3fc00000    # 1.5f

    mul-float v18, v18, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F

    move/from16 v19, v0

    add-float v18, v18, v19

    add-float v17, v17, v18

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    move/from16 v18, v0

    xor-int v18, v18, v13

    if-eqz v18, :cond_5

    const/16 v18, -0x1

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v12

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    :cond_0
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_1
    const/4 v13, 0x0

    goto/16 :goto_0

    :pswitch_2
    const/4 v13, 0x1

    goto/16 :goto_0

    :pswitch_3
    invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result v18

    if-nez v18, :cond_1

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v18, -0xb4

    goto/16 :goto_1

    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_5
    const/16 v18, 0x1

    goto :goto_3

    :cond_6
    if-eqz v13, :cond_0

    const/high16 v18, 0x43340000    # 180.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVerticalMirror(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z

    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method
