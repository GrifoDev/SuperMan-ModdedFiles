.class public Lcom/android/settings/fingerprint/UseFingerprintLockSettings;
.super Landroid/app/Activity;
.source "UseFingerprintLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private SCREEN_ID_SET_FINGER_LOCK:I

.field private mContext:Landroid/content/Context;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSetupwizard:Z

.field private mIntent:Landroid/content/Intent;

.field private mLaterBtn:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOkBtn:Landroid/widget/Button;

.field private mPreviousStage:Ljava/lang/String;

.field private mSpassSdkCompat:Z

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mFromSetupwizard:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mSpassSdkCompat:Z

    iput v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3706

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4

    const v1, 0x7f120b6a

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p1, 0x7f120b6b

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b20

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/UseFingerprintLockSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings$1;-><init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettings;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/UseFingerprintLockSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings$2;-><init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string/jumbo v1, "google_setupwizard_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->setIndicatorTransparency()V

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v4, 0x1

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b023a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v6

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->requestGetSensorStatus()I

    move-result v7

    if-eqz v6, :cond_0

    const v0, 0x186c8

    if-eq v7, v0, :cond_1

    const v0, 0x186c9

    if-eq v7, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick isHardwareDetected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", requestGetSensorStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f120b6a

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->showSensorErrorDialog(I)V

    return-void

    :cond_1
    const-string/jumbo v0, "lock_screen_pin_pattern_password_upgragde"

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "OS upgrade case! Set Fingerprint lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "Device fingerprint lock screen enabled by SecureFolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v2, 0x0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "Fingerprint lock screen enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;ZZ)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a0487 -> :sswitch_0
        0x7f0a05e7 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const v1, 0x7f12037a

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    iput-object p0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "spass_sdk_compat"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mSpassSdkCompat:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mFromSetupwizard:Z

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[previousStage] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[mSpassSdkCompat] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mSpassSdkCompat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[fromSetupwizard] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->setContentView(I)V

    const v0, 0x7f0a0487

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLaterBtn:Landroid/widget/Button;

    const v0, 0x7f0a05e7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mOkBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLaterBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f120b82

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mOkBtn:Landroid/widget/Button;

    const v1, 0x7f12038b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLaterBtn:Landroid/widget/Button;

    const v1, 0x7f12038a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0a0345

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mDescriptionTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mDescriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getUseFingerprintLockSettingsDescription(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "initFingerprintLockSettingsUI: iris is set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void

    :cond_3
    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "descriptionTextView is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mSpassSdkCompat:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    const-string/jumbo v1, "SendBroadcast for SpassCompat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->sendBroadcastWrapperForPassSdk(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string/jumbo v0, "FpstUseFingerprintLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0237

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->launchToPrivateBoxLock(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettings;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
