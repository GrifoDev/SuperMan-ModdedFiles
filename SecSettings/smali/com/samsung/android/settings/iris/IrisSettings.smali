.class public Lcom/samsung/android/settings/iris/IrisSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IrisSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/SettingsActivity$onEditButtonClicked;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/iris/IrisSettings$1;,
        Lcom/samsung/android/settings/iris/IrisSettings$2;,
        Lcom/samsung/android/settings/iris/IrisSettings$3;
    }
.end annotation


# instance fields
.field private isDeletionBlock:Z

.field private lockDevice:Z

.field private mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

.field private mIrisUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

.field private mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

.field private mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

.field private mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

.field private mScreenLock:Landroid/support/v14/preference/SwitchPreference;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mTipsForIris:Landroid/support/v7/preference/PreferenceScreen;

.field private mTokenIris:[B

.field private mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

.field private mUserId:I

.field private mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

.field private samsungaccount_objvalue:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTipsForIris:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/iris/IrisSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/iris/IrisSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/iris/IrisSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/iris/IrisSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/iris/IrisSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->showDisclaimerDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    iput v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$1;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$2;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    new-instance v0, Lcom/samsung/android/settings/iris/IrisSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/iris/IrisSettings$3;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "IrisSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f150080

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1, p0}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisPreference()V

    return-object v0
.end method

.method private finishIrisSettings()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    return-void
.end method

.method private getIrisSAConfirmed()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIrisSAConfirmed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIrisVerification()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getIrisVerification :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUseIrisSA()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFingerprintEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isIrisEnabled()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    const/16 v3, 0x10

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isIrisEnrolled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSamsungAccountSignedIn(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private isSupportSamsungPay()Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.spay"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.spay.supportIrises"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return v4

    :catch_0
    move-exception v3

    const-string/jumbo v5, "IrisSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v5, "IrisSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private launchChooseLock()V
    .locals 1

    const/16 v0, 0x2bd

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return-void
.end method

.method private launchChooseLock(I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "register_iris_request"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "hw_auth_token_iris"

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_0
    const/16 v1, 0x2c5

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "from_IrisUnlock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x2c3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x2c4

    if-ne p1, v1, :cond_2

    :cond_1
    const-string/jumbo v1, "from_IrisFeature"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v1, "keep_token"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "knox_userId"

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "from_irisSettings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    const-string/jumbo v1, "previousStage"

    const-string/jumbo v2, "lock_screen_iris"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private launchSamsungpassFromIris()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "biometricType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finishIrisSettings()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchTipNTutorial()V
    .locals 5

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.server.iris"

    const-string/jumbo v4, "com.samsung.android.server.iris.guide.IrisGuideActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setIrisPreference()V
    .locals 12

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string/jumbo v6, "iris_manage_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "my_irises"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v7, "registered_iris"

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    const-string/jumbo v6, "register_irises"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "change_reset_password"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_preview_style"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_feature_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "iris_unlock_category"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v6, "iris_web_signin"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "iris_samsung_account"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "iris_samsung_pay"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_samsung_pass"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "iris_screen_lock"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v6, "tips_for_iris"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTipsForIris:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v6, "use_iris_first_lock"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRegisterIriese:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "biometrics_backup_type"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnrolled()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v4, :cond_0

    if-nez v4, :cond_1

    if-ne v0, v10, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "updateAddPreference [remove Change Reset Password]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.app.sbrowser"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIrisLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    const v7, 0x7f121d14

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e4b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v5, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v6

    if-ne v6, v10, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "disabling mUseIrisFirstLock option for SD case"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "knox_finger_print_plus"

    iget v8, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    const/4 v9, 0x0

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v10, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "use_iris_firstlock"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v10, :cond_11

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getUseIrisSA()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    :try_start_1
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.spay"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Remove the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a
    :goto_5
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_14

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Screen lock switch disable by Enterprise ID feature"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_e
    return-void

    :cond_f
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mMyIrises:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManageCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisPreviewStyle:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_0

    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisVerification()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v6, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_12
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_13
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isSupportSamsungPay()Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Remove the SamsungPay"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPay:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    :catch_3
    move-exception v1

    const-string/jumbo v6, "IrisSettings"

    const-string/jumbo v7, "Getting information of SamsungPay make the Exception!"

    invoke-static {v6, v7}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_14
    iget-object v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungPass:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120e4e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f120e4d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method private setIrisSAConfirmed(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_samsungaccount_confirmed"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIrisSAConfirmed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setIrisVerification(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_webpass"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIrisVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUseIrisSA(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "iris_used_samsungaccount"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "IrisSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseIrisSA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showDisclaimerDialog()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/iris/IrisLockSettings;->makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    const v4, 0x10302d2

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120871

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$4;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showIrisUnlockTurnOnDialog(ZZ)V
    .locals 6

    if-eqz p1, :cond_0

    const v3, 0x7f12039b

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p1, :cond_1

    const v3, 0x7f120399

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$11;

    invoke-direct {v4, p0, p2}, Lcom/samsung/android/settings/iris/IrisSettings$11;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;Z)V

    const v5, 0x7f1205fd

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$12;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$12;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const v3, 0x7f1203a1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v3, 0x7f1203a0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public deleteRegisteredIris()Z
    .locals 9

    const v8, 0x7f120f07

    const/4 v7, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f120e29

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120e2a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "IrisSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UserHandle user Id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "IrisSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mUserId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isFingerprintEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    if-eqz v4, :cond_7

    const v4, 0x7f120eec

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$8;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$9;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    new-instance v4, Lcom/samsung/android/settings/iris/IrisSettings$10;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/iris/IrisSettings$10;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v7

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const v4, 0x7f120f06

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const v4, 0x7f120f05

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isFingerprintEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->isMultifactorAuthEnforced(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->isIrisEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f120eef

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f120ef0

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->lockDevice:Z

    goto/16 :goto_0

    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->isDeletionBlock:Z

    if-nez v4, :cond_8

    const v4, 0x7f1205fe

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    const v4, 0x7f1213b5

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public editKeyPressed(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b02b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2077

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v3, "IrisSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onActivityResult : requestCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " resultCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    if-nez v3, :cond_0

    const-string/jumbo v3, "hw_auth_token_iris"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    :cond_0
    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v4, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2c3

    if-ne p1, v3, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x2c4

    if-ne p1, v3, :cond_3

    iput-boolean v6, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    goto :goto_0

    :cond_3
    const/16 v3, 0x2c6

    if-ne p1, v3, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.spay"

    const-string/jumbo v4, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "IrisSettings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    if-ne p2, v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    goto :goto_0

    :pswitch_3
    if-ne p2, v7, :cond_4

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_4
    if-eq p2, v7, :cond_5

    if-ne p2, v6, :cond_6

    :cond_5
    const/4 v3, 0x1

    :try_start_3
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    :try_start_4
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getIrisSAConfirmed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_5
    if-ne p2, v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "iris_samsungpass_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "tokenFromLock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mTokenIris:[B

    :cond_0
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v2, :cond_1

    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "mIrisManager is null fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setHasOptionsMenu(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_1
    const-string/jumbo v2, "IrisSettings"

    const-string/jumbo v3, "mIrisManager is not null success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    const v1, 0x7f120ceb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f120871

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsActivity;->setOnEditPressedListener(Lcom/android/settings/SettingsActivity$onEditButtonClicked;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.helphub.HELP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "helphub:section"

    const-string/jumbo v3, "irises"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->showDisclaimerDialog()V

    return v5

    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "IrisesEntry"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v10, "IrisSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "=====onPreferenceChange : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "iris_samsung_account"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v7, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v7

    if-nez v7, :cond_5

    const/16 v7, 0x2c4

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return v9

    :cond_0
    const-string/jumbo v7, "iris_screen_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getFaceLockEnabled(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    if-eqz v2, :cond_9

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v7, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v7

    xor-int/lit8 v6, v7, 0x1

    :goto_0
    if-eqz v2, :cond_c

    if-nez v3, :cond_1

    if-eqz v4, :cond_a

    :cond_1
    invoke-direct {p0, v3, v6}, Lcom/samsung/android/settings/iris/IrisSettings;->showIrisUnlockTurnOnDialog(ZZ)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b02bd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz v2, :cond_d

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_2
    :goto_3
    return v9

    :cond_3
    const-string/jumbo v7, "iris_web_signin"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v7, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisVerification(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b02c8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz v2, :cond_f

    :goto_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_3

    :cond_4
    const-string/jumbo v7, "use_iris_first_lock"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    const/16 v11, 0x100

    invoke-virtual {v7, v11, v10}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v7

    if-ne v7, v8, :cond_10

    const/4 v1, 0x1

    :goto_6
    if-ne v1, v8, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->selecFirstlockDialog()V

    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b02c7

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz v2, :cond_13

    :goto_8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v10, v8}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    iput-boolean v8, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v7

    return v7

    :cond_6
    const/4 v7, 0x0

    :try_start_0
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setUseIrisSA(I)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v10, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v7, v10}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v11, 0x7f0b02b8

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    if-eqz v2, :cond_7

    move v7, v8

    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v10, v11, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :cond_7
    move v7, v9

    goto :goto_a

    :cond_8
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_a
    if-eqz v6, :cond_b

    const/16 v7, 0x2c5

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    return v9

    :cond_b
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->setBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-static {v7, v10, v11}, Lcom/samsung/android/settings/iris/IrisSettingsHelper;->removeBiometricIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    const v10, 0x7f121d14

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto/16 :goto_1

    :cond_d
    move v8, v9

    goto/16 :goto_2

    :cond_e
    const/16 v7, 0x2c3

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    goto/16 :goto_4

    :cond_f
    move v8, v9

    goto/16 :goto_5

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "use_iris_firstlock"

    invoke-static {v7, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_12
    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUseIrisFirstLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "use_iris_firstlock"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_7

    :cond_13
    move v8, v9

    goto/16 :goto_8
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 12

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onPreferenceTreeClick  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "register_irises"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock()V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    const-string/jumbo v0, "iris_samsung_pay"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "There is no Registered Irises."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2c6

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchChooseLock(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "change_reset_password"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.android.settings"

    const-class v1, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "changepassword"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "iris_preview_style"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.samsung.android.settings.iris.IrisPreveiwStyleFragment"

    const v6, 0x7f120e36

    move-object v5, v3

    move-object v7, v3

    move v8, v4

    invoke-static/range {v0 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b029a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "iris_samsung_pass"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchSamsungpassFromIris()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02b9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "tips_for_iris"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->launchTipNTutorial()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02c5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "registered_iris"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->deleteRegisteredIris()Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "There is Registered Irises. Launch the SamsungPay"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.spay"

    const-string/jumbo v1, "com.samsung.android.spay.ui.SpayMainActivity"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "previousStage"

    const-string/jumbo v1, "IrisSettings"

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b02ba

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "IrisSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120fe0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->buildPreferenceForCOM()V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->finish()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "IrisesEntry"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method protected removeIris()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->setActiveUser(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/iris/Iris;

    iget v2, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mUserId:I

    iget-object v3, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V

    :cond_0
    return-void
.end method

.method public selecFirstlockDialog()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/iris/IrisSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121d13

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f121d12

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f121b40

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/iris/IrisSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$5;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$6;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/iris/IrisSettings$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/iris/IrisSettings$7;-><init>(Lcom/samsung/android/settings/iris/IrisSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "startDisclaimerFromSamsungAccount"

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string/jumbo v7, "com.osp.app.signin"

    invoke-virtual {v3, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v6

    array-length v5, v6

    if-nez v5, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "mypackage"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "OSP_VER"

    const-string/jumbo v8, "OSP_02"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "MODE"

    const-string/jumbo v8, "ADD_ACCOUNT"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "Is_From_SA_Verify"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v7, 0x2c0

    :try_start_0
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "client_id"

    const-string/jumbo v8, "s5d189ajvs"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "client_secret"

    const-string/jumbo v8, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "Is_From_SA_Verify"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/samsung/android/settings/iris/IrisSettings;->samsungaccount_objvalue:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "SamsungAccount set_value is true."

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    :try_start_1
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    const/16 v7, 0x2c1

    :try_start_2
    invoke-virtual {p0, v2, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "IrisSettings"

    const-string/jumbo v8, "SamsungAccount set_value is false."

    invoke-static {v7, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :try_start_3
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/iris/IrisSettings;->setIrisSAConfirmed(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
