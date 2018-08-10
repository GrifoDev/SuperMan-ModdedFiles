.class Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;
.super Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "AnimationScaleListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimationScaleListState"
.end annotation


# instance fields
.field mAnimatableDrawableIndex:I

.field mStaticDrawableIndex:I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;Landroid/content/res/Resources;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    iget v0, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    iget v0, p1, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    :cond_0
    return-void
.end method


# virtual methods
.method addDrawable(Landroid/graphics/drawable/Drawable;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    instance-of v1, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    :goto_0
    return v0

    :cond_0
    iput v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentDrawableIndexBasedOnScale()I
    .locals 2

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mStaticDrawableIndex:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mAnimatableDrawableIndex:I

    return v0
.end method

.method mutate()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :cond_0
    iput-object v0, p0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;->mThemeAttrs:[I

    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;

    invoke-direct {v0, p0, v1, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;-><init>(Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable$AnimationScaleListState;Landroid/content/res/Resources;Lcom/android/internal/graphics/drawable/AnimationScaleListDrawable;)V

    return-object v0
.end method
