.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;
.super Ljava/util/TimerTask;
.source "FingerprintSetupWizard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->-get5(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard$AnimationTimerTask;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
