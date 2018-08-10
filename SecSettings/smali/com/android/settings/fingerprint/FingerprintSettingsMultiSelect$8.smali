.class Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;
.super Ljava/lang/Object;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintDeleteDialog$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

.field final synthetic val$isEnableFeatures:Z

.field final synthetic val$isEnableFingerprintLock:Z


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    iput-boolean p2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->val$isEnableFingerprintLock:Z

    iput-boolean p3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->val$isEnableFeatures:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-set0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Lcom/android/settings/fingerprint/FingerprintDeleteDialog;)Lcom/android/settings/fingerprint/FingerprintDeleteDialog;

    return-void
.end method

.method public onNegativeClick()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0256

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-get0(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->val$isEnableFingerprintLock:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_motion_tilt_to_unlock"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "FpstFingerprintSettingsMultiSelect"

    const-string/jumbo v1, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->val$isEnableFingerprintLock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->val$isEnableFeatures:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap1(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Z)Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$8;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->-wrap1(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Z)Z

    goto :goto_0
.end method

.method public onResumeDialog()V
    .locals 0

    return-void
.end method
