.class Lcom/android/systemui/swipe/SwipeAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/swipe/SwipeAnimator;->setFullScreenMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isAnimationCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;Z)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->val$enabled:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->isAnimationCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->isAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get4(Lcom/android/systemui/swipe/SwipeAnimator;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get0(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->getBarStatus()I

    move-result v1

    if-eq v1, v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get7(Lcom/android/systemui/swipe/SwipeAnimator;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->val$enabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->isAnimationCanceled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->-set1(Lcom/android/systemui/swipe/SwipeAnimator;Z)Z

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->val$enabled:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/swipe/SwipeAnimator;->-set0(Lcom/android/systemui/swipe/SwipeAnimator;J)J

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v1}, Lcom/android/systemui/swipe/SwipeAnimator;->-get0(Lcom/android/systemui/swipe/SwipeAnimator;)Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeAnimator$AnimatorCallback;->onViEnd()V

    return-void

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->isAnimationCanceled:Z

    if-nez v1, :cond_2

    const-string/jumbo v1, "101"

    const-string/jumbo v2, "1011"

    const-string/jumbo v3, "1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/swipe/SwipeAnimator$2;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {v6}, Lcom/android/systemui/swipe/SwipeAnimator;->-get3(Lcom/android/systemui/swipe/SwipeAnimator;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method
