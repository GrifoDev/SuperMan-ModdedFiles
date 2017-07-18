.class Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;
.super Ljava/lang/Object;
.source "BoostModeChangeProcessingActivity.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/circle/BounceAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->startFinishAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

.field final synthetic val$circleBounce:Lcom/samsung/android/visualeffect/circle/BounceAnimation;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;Lcom/samsung/android/visualeffect/circle/BounceAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->val$circleBounce:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBounceFinished()V
    .locals 4

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onBounceUpEnd()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get1(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Lcom/samsung/android/visualeffect/check/DoneView;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/visualeffect/check/DoneView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->val$circleBounce:Lcom/samsung/android/visualeffect/circle/BounceAnimation;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/circle/BounceAnimation;->getBounceDownDuration()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/settings/widget/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/settings/widget/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get8(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get7(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0b0a6b

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get8(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get4(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity$2;->this$0:Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->-get2(Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0b0a6d

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/boostmode/BoostModeChangeProcessingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
