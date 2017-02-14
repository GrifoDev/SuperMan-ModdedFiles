.class Lcom/android/settings/fingerprint/FingerprintSettings$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 4

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings;->-get3(Lcom/android/settings/fingerprint/FingerprintSettings;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
