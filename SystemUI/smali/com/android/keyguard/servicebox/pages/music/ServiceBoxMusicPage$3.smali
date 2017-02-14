.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;
.super Ljava/lang/Object;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v3, 0x0

    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get4(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get5(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get6(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get5(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get5(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get6(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get6(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get6(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get5(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get5(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->-get0()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
