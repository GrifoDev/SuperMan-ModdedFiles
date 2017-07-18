.class public Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;
.super Landroid/app/AlertDialog;
.source "BiometricsAuthenticationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "showRemainingTimerDialog"
.end annotation


# instance fields
.field protected mCountdownTimer:Landroid/os/CountDownTimer;

.field mFailAttemptDesc:Ljava/lang/String;

.field mFlags:Z

.field mTimerTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mFlags:Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mFlags:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mFlags:Z

    :cond_1
    return-void
.end method

.method protected getLockoutString(I)Ljava/lang/String;
    .locals 7

    const/16 v4, 0x3c

    const/4 v3, 0x1

    const/4 v2, 0x0

    div-int/lit8 v1, p1, 0x3c

    if-le p1, v4, :cond_0

    const v2, 0x7f0b08c8

    :goto_0
    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    if-ne p1, v4, :cond_1

    const v2, 0x7f0b08c7

    goto :goto_0

    :cond_1
    if-le p1, v3, :cond_2

    const v2, 0x7f0b08c6

    goto :goto_0

    :cond_2
    const v2, 0x7f0b08c5

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 v3, 0x0

    return-object v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040145

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mView:Landroid/view/View;

    const v0, 0x7f0b0779

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->setTitle(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mView:Landroid/view/View;

    const v1, 0x7f11040a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mTimerTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "biometrics_failed_attempt"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0b0783

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mFailAttemptDesc:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->-get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;JJ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->this$0:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog$2;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
