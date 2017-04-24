.class Lcom/android/settings/fingerprint/RegisterFingerprint$4;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentError : errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , errString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap11(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollmentHelp : helpMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , helpString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get5(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap2(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onEnrollmentProgress : remaining = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get5(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3, p1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set11(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get30(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b06a5

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v3, p1}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setPercent(I)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get29(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get1(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_1
    :goto_0
    const/16 v3, 0x50

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get7(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_2
    const/16 v3, 0x64

    if-ne p1, v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set6(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap12(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap4(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get18(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "FpstRegisterTouchFingerprint"

    const-string/jumbo v4, "ENFORCE MULTIFACTOR ENROLL FINGER FINISH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.samsung.knox.kss"

    const-string/jumbo v5, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "resetResult"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set13(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3, v7}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set1(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    const-string/jumbo v3, "google_setupwizard_fingerprint"

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.android.settings"

    const-string/jumbo v5, "PYPT"

    const-string/jumbo v6, "Fingerprints"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$4;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get29(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/speech/tts/TextToSpeech;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b06a4

    invoke-virtual {v4, v6, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v7, v9}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get9(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v4, 0x12d

    invoke-static {v3, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap6(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get6(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get15(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3, v8}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set5(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get15(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->requestPause()Z

    goto :goto_1
.end method
