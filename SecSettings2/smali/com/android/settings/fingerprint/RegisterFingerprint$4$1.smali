.class Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$4;->onEnrollmentProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FpstRegisterTouchFingerprint"

    const-string/jumbo v2, "isShopDemo is true, showLDUDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap10(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get23(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get32(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FingerprintSettings_register"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "fingerprint_entry"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.samsung.android.sdk.pass.SpassFingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap14(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "fingerIndex"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get34(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "isSharedDevice"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get19(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get28(Lcom/android/settings/fingerprint/RegisterFingerprint;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v1, "enrollResult"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "fingerprint_fingerIndex"

    iget-object v3, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v3, v3, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get34(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get19(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "lock_screen_pin_pattern_password"

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v2, v2, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get26(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0704

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set14(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    return-void
.end method
