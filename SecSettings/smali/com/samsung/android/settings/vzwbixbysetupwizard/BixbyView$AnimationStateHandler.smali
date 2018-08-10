.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;
.super Landroid/os/Handler;
.source "BixbyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationStateHandler"
.end annotation


# instance fields
.field private final mBixbyView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->mBixbyView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->mBixbyView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "SetupWizardWifiScreen_BixbyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Current message in Handler : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->skipIntroWaveAnimation()V

    const/16 v2, 0x64

    invoke-static {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap6(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap11(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getIntroAnimationPlayTime()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getIntroAnimationPlayTime()I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x17

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap10(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap7(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-set2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;J)J

    const/16 v2, 0x12c

    invoke-static {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap6(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getPostWaveAudioScripts()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStartSaying()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getPostWaveAudioScripts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->playAudioScript(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-set1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)I

    goto :goto_0

    :cond_2
    invoke-static {v0, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap6(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStopSaying()V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap0(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f121e0d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStartListening()V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap12(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap14(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyHeaderTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_7
    const-string/jumbo v2, "0_voice input_1_X"

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->playAudioScript(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f121e11

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap14(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap14(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getIntroAudioScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->playAudioScript(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStartCompleteMotion()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {v0, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap6(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)V

    goto/16 :goto_0

    :pswitch_c
    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStopSaying()V

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap4(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
