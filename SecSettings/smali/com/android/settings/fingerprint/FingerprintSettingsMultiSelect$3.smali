.class Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;
.super Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
.source "FingerprintSettingsMultiSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "FpstFingerprintSettingsMultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remove Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", activity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    const v1, 0x7f120b6a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 4

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRemoveCallback onRemovalSucceeded called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ,remaining : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->removeFingerPrintPlusIfNeeded(Landroid/hardware/fingerprint/Fingerprint;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get5(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap5(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    goto :goto_0
.end method
