.class public Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;
.super Landroid/app/Activity;
.source "UseAdditionalBiometrics.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private fingerprintLayout:Landroid/widget/LinearLayout;

.field private fingerprintSwitch:Landroid/widget/Switch;

.field private irisLayout:Landroid/widget/LinearLayout;

.field private irisSwitch:Landroid/widget/Switch;

.field private laterBtn:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIntent:Landroid/content/Intent;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mToken:[B

.field private mtoken_2nd:[B

.field private okBtn:Landroid/widget/Button;

.field screenOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UseAdditionalBiometrics"

    sput-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    new-instance v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics$1;-><init>(Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initBiometricsSettings()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_2nd"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method

.method private isFingerprintEnrolled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isIrisesEnrolled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendBioMetricsLogging()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const-string/jumbo v0, ""

    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "passwordQuality : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "Fingerprint_"

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Iris_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v0, ""

    :goto_0
    sget-object v2, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "extraValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "LOSC"

    invoke-static {v2, v3, v4, v0}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PIN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Pattern"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private setBiometricsDescription()Ljava/lang/String;
    .locals 7

    const v6, 0x7f0b06cb

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const-string/jumbo v1, ""

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-object v1

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0767

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0768

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0b0766

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private startFingerprintLockSettings()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->isFingerprintEnrolled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_pin_pattern_password_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startIrisRegister()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->isIrisesEnrolled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v3, 0x10

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "register_iris_request_from_chooselock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mtoken_2nd:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sget-object v0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startFingerprintLockSettings()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->startIrisRegister()V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x7f11039c -> :sswitch_0
        0x7f11039d -> :sswitch_1
        0x7f1106c9 -> :sswitch_2
        0x7f1106cc -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    const v1, 0x7f0b0765

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setTitle(I)V

    const v1, 0x7f0402ff

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setContentView(I)V

    const v1, 0x7f11039c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    const v1, 0x7f11039d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    const v1, 0x7f1106c8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    const v1, 0x7f1106c9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1106cb

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    const v1, 0x7f1106cc

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1106ce

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->descriptionTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->setBiometricsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->laterBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->okBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->fingerprintSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->irisSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->initBiometricsSettings()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->sendBioMetricsLogging()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->screenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/UseAdditionalBiometrics;->finish()V

    goto :goto_0
.end method
