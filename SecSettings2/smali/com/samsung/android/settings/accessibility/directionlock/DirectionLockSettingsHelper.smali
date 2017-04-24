.class public Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;
.super Ljava/lang/Object;
.source "DirectionLockSettingsHelper.java"


# instance fields
.field public SETTINGS_ARROW_SIZE:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivity:Landroid/app/Activity;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a026e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    :goto_0
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a026d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    goto :goto_0
.end method

.method public static applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v2, "LAND"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_HIDE_STATUS_BAR"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method private confirmFingerprintPassword()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_fingerprint_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private confirmIrisPassword()V
    .locals 4

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_iris_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBiometricsSummary(IZZ)Ljava/lang/String;
    .locals 8

    const-string/jumbo v3, ", "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v3, "\u060c "

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b066c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0749

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v3, "\u3001"

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v3, "\uff0c"

    goto :goto_0
.end method

.method public static getMinimumSupportedPassLength()I
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "getMinimumSupportedPassLength"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "4"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isDirectionLockSupportFingerprint(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDirectionLockSupportIris()Z
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isDirectionLockSupportIris"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    return v0
.end method

.method private isFingerprintDisabled()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string/jumbo v5, "DirectionLockSettingsHelper"

    const-string/jumbo v6, "isFingerprintDisabled :  dpm is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v6

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :goto_0
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v7, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v8, "isBiometricAuthenticationEnabled"

    invoke-static {v6, v7, v8, v4}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v6

    if-lez v6, :cond_1

    if-nez v1, :cond_1

    const-string/jumbo v6, "DirectionLockSettingsHelper"

    const-string/jumbo v7, "isBiometricAuthenticationEnabled == Utils.EDM_FALSE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_3

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method public static isTablet()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    return v0
.end method

.method private setMountVariables()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_vibration"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method private startIrisRegister([B)V
    .locals 5

    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startIrisRegister"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "com.android.settings.iris.IrisLockSettings"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "register_iris_request"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "DirectionLockSettingsHelper"

    const-string/jumbo v4, "startFingerprintLockSettings() exception occured"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6

    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v3, 0x1

    if-gt v2, p3, :cond_0

    if-le v4, p2, :cond_1

    :cond_0
    div-int/lit8 v0, v2, 0x2

    div-int/lit8 v1, v4, 0x2

    :goto_0
    div-int v5, v0, v3

    if-le v5, p3, :cond_1

    div-int v5, v1, v3

    if-le v5, p2, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v5, 0x1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2, p3, p4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v5

    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    :try_start_0
    invoke-static {v4, p3, p4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_1

    return-object v3

    :cond_0
    invoke-static {p1, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    const/4 v4, 0x0

    :cond_2
    return-object v3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    instance-of v5, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v5, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v5

    instance-of v6, v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v6, :cond_4

    return-object v3

    :cond_4
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    :cond_5
    throw v5
.end method

.method public getChallengeForFingerPrint()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "FingerPrint Manager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChallengeForIris()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "SemIrisManager is NOT Null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCurrentLockScreen()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getLockTypeSummary()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b1190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b1191

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v6, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v3

    if-ne v3, v6, :cond_3

    const/4 v1, 0x1

    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v3, 0x7f0b0274

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const v3, 0x7f0b082e

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_2
    const v3, 0x7f0b1184

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_3
    const v3, 0x7f0b1186

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_4
    const v3, 0x7f0b1188

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_5
    const v3, 0x7f0b0821

    invoke-direct {p0, v3, v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getBiometricsSummary(IZZ)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x9100 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_1
    .end sparse-switch
.end method

.method public hasEnrolledFingerPrints()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnrolledIrises()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerPrintSwitchOn()Z
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "isFingerPrintSwitchOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isIrisSwitchOn()Z
    .locals 3

    const-string/jumbo v1, "DirectionLockSettingsHelper"

    const-string/jumbo v2, "isIrisSwitchOn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public isMobileKeyboardCovered(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method public launchConfirmCurrentLockScreen(ZZZ)Z
    .locals 12

    const/16 v6, 0x1000

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getCurrentLockScreen()I

    move-result v10

    const/4 v8, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "DirectionLockSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switchState :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " isFingerPrintSwitch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " isIrisSwitch: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForFingerPrint()J

    move-result-wide v6

    const/16 v2, 0x69

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    move v0, v11

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getChallengeForIris()J

    move-result-wide v6

    const/16 v2, 0x6b

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v11

    move v0, v11

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    if-ne v10, v6, :cond_5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x66

    invoke-virtual {v1, v8, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v0, 0x1

    :cond_4
    :goto_2
    return v0

    :cond_5
    if-nez p1, :cond_6

    if-eq v10, v6, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "universal_lock_switch_state"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v11

    move v0, v11

    if-nez v11, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledFingerPrints()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmFingerprintPassword()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->confirmIrisPassword()V

    goto :goto_2

    :cond_8
    if-nez v11, :cond_4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v9

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isDirectionLockSupportFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const/16 v2, 0x68

    invoke-virtual {v1, v9, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method public saveLockDirection(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public saveLockDirection(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "universal_lock_switch_state"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz p2, :cond_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->setFingerprintScreenLockVerification(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0, v5, p3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockDirection(Ljava/util/List;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->setMountVariables()V

    return-void
.end method

.method public setFingerPrintLockOff()V
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setFingerPrintLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIrisLockOff()V
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "setIrisLockOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public shouldDirectionLockBeDisabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startFingerprintLockSettings([B)V
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startFingerprintLockSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startFingerprintLockSettingsImpl([B)V

    return-void
.end method

.method public startFingerprintLockSettingsImpl([B)V
    .locals 6

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettingsImpl()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isFingerprintDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isFingerprintDisabled() = TURE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    const-string/jumbo v5, "fingerprint"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "isHardwareDetected() of Fingerprint is FALSE."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    const-string/jumbo v4, "com.android.settings.fingerprint.FingerprintLockSettings"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "previousStage"

    const-string/jumbo v5, "lock_screen_pin_pattern_password"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "hw_auth_token"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v4, "DirectionLockSettingsHelper"

    const-string/jumbo v5, "startFingerprintLockSettings() exception occured"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public startUseAdditionalBiometricsSettings([B)V
    .locals 2

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "startUseAdditionalBiometricsSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->hasEnrolledIrises()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->startIrisRegister([B)V

    goto :goto_0
.end method

.method public startUseFingerprintIrisSettings([B[B)V
    .locals 5

    :try_start_0
    const-string/jumbo v3, "com.android.settings.iris.UseAdditionalBiometrics"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "hw_auth_token"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token_2nd"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public switchToSwipe()V
    .locals 3

    const-string/jumbo v0, "DirectionLockSettingsHelper"

    const-string/jumbo v1, "switchToSwipe()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "universal_lock_switch_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
