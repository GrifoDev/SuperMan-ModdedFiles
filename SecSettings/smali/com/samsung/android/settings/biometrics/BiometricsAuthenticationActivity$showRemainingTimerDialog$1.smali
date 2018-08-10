.class Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;
.super Landroid/os/CountDownTimer;
.source "BiometricsAuthenticationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mFlags:Z

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap4(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v0, v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-wrap3(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v2, v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mTimerTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v2, v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120e55

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v2, v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mTimerTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v2, v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mTimerTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v3, v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v5, v5, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsFailedAttempts(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const v5, 0x7f120e2c

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
