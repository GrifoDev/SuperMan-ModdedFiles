.class abstract Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;
.super Ljava/lang/Object;
.source "SemAbsSweepAnimationFilter.java"


# instance fields
.field protected mIsAnimationBack:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->mIsAnimationBack:Z

    .line 12
    return-void
.end method


# virtual methods
.method abstract createActionUpAnimator(Landroid/view/View;FIFZ)Landroid/animation/ValueAnimator;
.end method

.method abstract doMoveAction(Landroid/view/View;FI)V
.end method

.method abstract doRefresh()V
.end method

.method abstract doUpActionWhenAnimationUpdate(IF)V
.end method

.method abstract draw(Landroid/graphics/Canvas;)V
.end method

.method abstract getBitmapDrawableBound()Landroid/graphics/Rect;
.end method

.method abstract getEndXOfActionUpAnimator()F
.end method

.method abstract initAnimationFilter(Landroid/view/View;FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;)V
.end method

.method public isAnimationBack()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->mIsAnimationBack:Z

    return v0
.end method

.method abstract setForegroundView(Landroid/view/View;)V
.end method
