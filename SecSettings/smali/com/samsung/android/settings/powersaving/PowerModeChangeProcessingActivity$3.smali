.class Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;
.super Ljava/lang/Object;
.source "PowerModeChangeProcessingActivity.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->startFinishAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

.field final synthetic val$circleBounce:Lcom/samsung/android/visualeffect/circle/BounceAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->val$circleBounce:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBounceFinished()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$2;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBounceUpEnd()V
    .locals 6

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get2(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/visualeffect/check/DoneView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get1(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f121555

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->val$circleBounce:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceDownDuration()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3$1;-><init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->-get10(Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity$3;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;

    const v3, 0x7f121557

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/powersaving/PowerModeChangeProcessingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
