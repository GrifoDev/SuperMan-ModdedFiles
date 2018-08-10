.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$1;
.super Ljava/lang/Object;
.source "BixbyParticleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->startCompleteMotion(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->-get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$1;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->-get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3eeb851f    # 0.46f

    const v4, 0x3e75c28f    # 0.24f

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
