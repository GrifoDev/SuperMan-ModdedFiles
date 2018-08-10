.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;
.super Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper$ShortAnimatorListener;
.source "BixbyUserSayingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->stopUserSaying()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper$ShortAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/animations/AnimatorHelper$ShortAnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get13(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get13(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get13(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stopUserSaying sequence done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->-set1(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView$8;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyUserSayingView;->invalidate()V

    return-void
.end method
