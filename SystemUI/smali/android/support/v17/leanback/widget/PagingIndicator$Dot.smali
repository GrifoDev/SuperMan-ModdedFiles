.class public Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
.super Ljava/lang/Object;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dot"
.end annotation


# instance fields
.field mAlpha:F

.field mArrowImageRadius:F

.field mCenterX:F

.field mDiameter:F

.field mDirection:F

.field mFgColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field mLayoutDirection:F

.field mRadius:F

.field mTranslationX:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PagingIndicator;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/PagingIndicator;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method


# virtual methods
.method public adjustAlpha()V
    .locals 6

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    return-void
.end method

.method deselect()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotDiameter:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    add-float v0, v1, v2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    sub-float v4, v0, v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v5, v5, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    add-float/2addr v6, v0

    float-to-int v6, v6

    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v7, v7, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    return v0
.end method

.method public getDiameter()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    return v0
.end method

.method onRtlPropertiesChanged()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    return-void

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method select()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    return-void
.end method

.method public setDiameter(F)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    div-float v0, p1, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    div-float v0, p1, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    return-void
.end method
