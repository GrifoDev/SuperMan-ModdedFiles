.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;
.super Ljava/lang/Object;
.source "BixbyUserSayingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->initRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v8, 0x0

    new-instance v7, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v0, v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-set2(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get7(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyAnimatorHelper;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get11(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v2, 0x42700000    # 60.0f

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get2()Landroid/animation/TimeInterpolator;

    move-result-object v6

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyAnimatorHelper;->makeVAnimFloat([FJJLandroid/animation/TimeInterpolator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-set2(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get16(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/BixbyUserSayingView;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mUserSayingTimeoutRunnable run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
