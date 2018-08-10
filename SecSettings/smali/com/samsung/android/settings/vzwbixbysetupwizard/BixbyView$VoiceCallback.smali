.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;
.super Ljava/lang/Object;
.source "BixbyView.java"

# interfaces
.implements Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VoiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap5(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;Ljava/lang/String;)V

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "SetupWizardWifiScreen_BixbyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VoiceCommand Received : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v2, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap16(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap14(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "SetupWizardWifiScreen_BixbyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "VoiceCommand Received buttonID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    const v2, 0x7f0a0958

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyHeaderTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    iget-object v2, v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;

    invoke-static {v2, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->-wrap6(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)V

    goto :goto_0
.end method
