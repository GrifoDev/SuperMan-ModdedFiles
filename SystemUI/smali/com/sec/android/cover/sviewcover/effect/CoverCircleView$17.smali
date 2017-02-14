.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->setCArrowBlinker()V
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

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->-get4(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$17;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    :cond_0
    return-void
.end method
