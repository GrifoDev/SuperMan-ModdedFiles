.class public Lcom/android/launcher2/QuickView$Animate;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/QuickView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Animate"
.end annotation


# static fields
.field private static final PROGRESS_INT_MAX:I = 0x64


# instance fields
.field private mAnimateEngine:Lcom/android/launcher2/AnimateEngine;

.field private mDestRects:[Landroid/graphics/Rect;

.field private mResultRects:[Landroid/graphics/Rect;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartRects:[Landroid/graphics/Rect;

.field private mTargetView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher2/QuickView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickView;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/launcher2/QuickView$Animate;->this$0:Lcom/android/launcher2/QuickView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mStartRects:[Landroid/graphics/Rect;

    new-array v0, v3, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mDestRects:[Landroid/graphics/Rect;

    new-array v0, v3, [Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mResultRects:[Landroid/graphics/Rect;

    new-instance v0, Lcom/android/launcher2/AnimateEngine;

    invoke-direct {v0}, Lcom/android/launcher2/AnimateEngine;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mAnimateEngine:Lcom/android/launcher2/AnimateEngine;

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/android/launcher2/QuickView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mScroller:Landroid/widget/Scroller;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/launcher2/QuickView$Animate;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/QuickView$Animate;->mAnimateEngine:Lcom/android/launcher2/AnimateEngine;

    iget-object v5, p0, Lcom/android/launcher2/QuickView$Animate;->mStartRects:[Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/launcher2/QuickView$Animate;->mDestRects:[Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/launcher2/QuickView$Animate;->mResultRects:[Landroid/graphics/Rect;

    int-to-float v8, v1

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/launcher2/AnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/launcher2/QuickView$Animate;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/QuickView$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v10

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/launcher2/QuickView$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView$Animate;->mResultRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v4, p0, Lcom/android/launcher2/QuickView$Animate;->this$0:Lcom/android/launcher2/QuickView;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickView;->invalidate()V

    iget-object v4, p0, Lcom/android/launcher2/QuickView$Animate;->this$0:Lcom/android/launcher2/QuickView;

    invoke-virtual {v4, p0}, Lcom/android/launcher2/QuickView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/QuickView$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v4, v4, v10

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher2/QuickView$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v10

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/launcher2/QuickView$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v10

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/launcher2/QuickView$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v10

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v4, p0, Lcom/android/launcher2/QuickView$Animate;->this$0:Lcom/android/launcher2/QuickView;

    invoke-virtual {v4}, Lcom/android/launcher2/QuickView;->invalidate()V

    goto :goto_0
.end method

.method public start(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/QuickView$Animate;->stop()V

    iput-object p1, p0, Lcom/android/launcher2/QuickView$Animate;->mTargetView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mStartRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mDestRects:[Landroid/graphics/Rect;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->mScroller:Landroid/widget/Scroller;

    const/16 v3, 0x64

    const/16 v5, 0xc8

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->this$0:Lcom/android/launcher2/QuickView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickView$Animate;->this$0:Lcom/android/launcher2/QuickView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/QuickView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
