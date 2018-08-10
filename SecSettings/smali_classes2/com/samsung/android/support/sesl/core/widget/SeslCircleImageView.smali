.class Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;
.super Landroid/widget/ImageView;
.source "SeslCircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView$OvalShadow;
    }
.end annotation


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field mShadowRadius:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 11

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v1, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x3fe00000    # 1.75f

    mul-float/2addr v6, v1

    float-to-int v5, v6

    const/4 v6, 0x0

    mul-float/2addr v6, v1

    float-to-int v4, v6

    const/high16 v6, 0x40600000    # 3.5f

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mShadowRadius:I

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->elevationSupported()Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v2, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView$OvalShadow;

    iget v6, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mShadowRadius:I

    invoke-direct {v2, p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView$OvalShadow;-><init>(Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;I)V

    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mShadowRadius:I

    int-to-float v7, v7

    int-to-float v8, v4

    int-to-float v9, v5

    const/high16 v10, 0x1e000000

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget v3, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mShadowRadius:I

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v1

    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setElevation(F)V

    goto :goto_0
.end method

.method private elevationSupported()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationStart()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->elevationSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mShadowRadius:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mShadowRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslCircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
