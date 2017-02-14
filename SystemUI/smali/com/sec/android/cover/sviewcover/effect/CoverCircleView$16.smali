.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowAlphaAnimator(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-set2(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;I)I

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get4(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get2(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$16;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    :cond_0
    return-void
.end method
