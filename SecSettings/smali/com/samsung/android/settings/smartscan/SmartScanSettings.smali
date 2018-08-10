.class public Lcom/samsung/android/settings/smartscan/SmartScanSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SmartScanSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog$SmartScanTurnOnDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;
    }
.end annotation


# static fields
.field private static mIsKeepEnrollSession:Z


# instance fields
.field private mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mContext:Landroid/content/Context;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDisclamierDialog:Landroid/app/AlertDialog;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIdentifyBiometricAuthentication:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mIsRunRegister:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPrevStageForRegiter:Ljava/lang/String;

.field private mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mRegisterSmartScan:Landroid/support/v7/preference/PreferenceScreen;

.field private mRemoveSmartScan:Landroid/support/v7/preference/PreferenceScreen;

.field private mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

.field private mSamsungAccountObjValue:Z

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

.field private mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mTokenFace:[B

.field private mTokenIris:[B

.field private mUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mUserId:I

.field private mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

.field private mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/samsung/android/camera/iris/SemIrisManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRemoveSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->resetSmartScanSupportingFeatures()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccountObjValue:Z

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIdentifyBiometricAuthentication:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsMultiWindowModeChanged:Z

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->stopSmartScanSettings()V

    sget-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finishSmartScanSettings()V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f150103

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSettingsPreference()V

    return-object v0
.end method

.method private deleteSmartScanDialog()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "SsstSmartScanSettings"

    const-string/jumbo v3, "deleteSmartScanDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1219b4

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1219b5

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    const v3, 0x7f1205fe

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$4;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v2, 0x1

    return v2
.end method

.method private getSmartScanSAConfirmed()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligentscan_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSmartScanSAConfirmed :"

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

.method private getSmartScanVerification()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSmartScanSupportWebSignIn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligentscan_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSmartScanVerification :"

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

    :cond_1
    return v3
.end method

.method private getUseSmartScanSA()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligentscan_used_samsungaccount"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUseSmartScanSA : "

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

    const-string/jumbo v2, "SsstSmartScanSettings"

    const-string/jumbo v3, "isHaveSA() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    const-string/jumbo v2, "SsstSmartScanSettings"

    const-string/jumbo v3, "isHaveSA() - false"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private resetSmartScanSupportingFeatures()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "resetSmartScanSupportingFeatures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "intelligentscan_samsungaccount_confirmed"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "intelligentscan_used_samsungaccount"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "intelligentscan_webpass"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string/jumbo v3, "SsstSmartScanSettings"

    const v4, 0x7f12037c

    invoke-static {v2, v4, v3}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "identifyBiometricAuth"

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIdentifyBiometricAuthentication:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "needIntelligentBiometrics"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_face"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SsstSmartScanSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister already called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    const-string/jumbo v2, "SsstSmartScanSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3e9

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setSmartScanSAConfirmed(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligentscan_samsungaccount_confirmed"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSmartScanSAConfirmed, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setSmartScanSettingsPreference()V
    .locals 14

    const/4 v10, 0x1

    const/4 v13, 0x0

    const/4 v9, 0x0

    const-string/jumbo v8, "register_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v8, "feature_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v8, "unlock_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v8, v11, v12}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v4

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v12, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v8, v11, v12}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v2

    const-string/jumbo v8, "key_intelligentscan_register"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v8, "key_intelligentscan_remove"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRemoveSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v2, :cond_9

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v11, "setSmartScanSettingsPreference : Remove Register SmartScan"

    invoke-static {v8, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "biometrics_backup_type"

    invoke-static {v8, v11, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    const-string/jumbo v8, "key_intelligentscan_password"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v8, :cond_a

    if-nez v3, :cond_0

    if-nez v3, :cond_a

    if-ne v0, v10, :cond_a

    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v11, "setSmartScanSettingsPreference : Remove Change Backup Password"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v8, "SsstSmartScanSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSmartScanSettingsPreference - isSmartScanEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    const-string/jumbo v8, "key_intelligentscan_web_signin"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanVerification()Z

    move-result v11

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.sec.android.app.sbrowser"

    invoke-static {v8, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isSmartScanSupportWebSignIn(Landroid/content/Context;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    :cond_2
    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v11, "setSmartScanSettingsPreference : Remove the webSignIn"

    invoke-static {v8, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v6, 0x2

    :cond_3
    const-string/jumbo v8, "key_intelligentscan_samsung_account"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->checkSAMenuChanged(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v11, "setSmartScanSettingsPreference : Remove the SamsungAccount"

    invoke-static {v8, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v13, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    add-int/lit8 v6, v6, -0x1

    :cond_4
    :goto_3
    const-string/jumbo v8, "key_intelligentscan_samsung_pass"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v11, "setSmartScanSettingsPreference : Remove the SamsungPass"

    invoke-static {v8, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v6, v6, -0x1

    :cond_5
    :goto_4
    const-string/jumbo v8, "SsstSmartScanSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSmartScanSettingsPreference - itemCountInFeatureCategory : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v6, :cond_e

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUnlockCategory:Landroid/support/v7/preference/PreferenceCategory;

    const v11, 0x7f0d0122

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->setLayoutResource(I)V

    :goto_5
    const-string/jumbo v8, "key_intelligentscan_unlock"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/android/settings/Utils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_6
    const-string/jumbo v8, "key_intelligentscan_unlock_when_turns_on"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v5

    const-string/jumbo v8, "SsstSmartScanSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSmartScanSettingsPreference - isWithoutSwipeToUnlock : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-nez v5, :cond_f

    move v8, v9

    :goto_6
    invoke-virtual {v11, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    if-eqz v4, :cond_10

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/android/settings/Utils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_7
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void

    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v11, "setSmartScanSettingsPreference : Remove Remove SmartScan"

    invoke-static {v8, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mRemoveSmartScan:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    :cond_a
    xor-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_1

    goto/16 :goto_2

    :cond_b
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getUseSmartScanSA()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f1219b7

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v11, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120bba

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_5

    :cond_f
    move v8, v10

    goto/16 :goto_6

    :cond_10
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_7
.end method

.method private setSmartScanVerification(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSmartScanSupportWebSignIn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligentscan_webpass"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmartScanVerification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUseSmartScanSA(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligentscan_used_samsungaccount"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUseSmartScanSA, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showSmartScanTurnOnDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "showSmartScanTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog$SmartScanTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "ChooseLockGeneric_SmartScanTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanTurnOnDialog:Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper$SmartScanTurnOnDialog;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "Dialog is already added"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapper(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapper:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startActivityWrapperWithSessionClose(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityWrapperWithSessionClose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsKeepEnrollSession:Z

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopSmartScanSettings()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "stopSmartScanSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method deleteSmartScan()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "deleteSmartScan : has no EnrolledSmartScan"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v1, :cond_2

    :cond_1
    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "deleteSmartScan : BiometricManager is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "deleteSmartScan : getEnrolledFaces is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/bio/face/SemBioFace;

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings$5;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSettings;)V

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    return-void
.end method

.method protected finishSmartScanSettings()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "finishSmartScanSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120cf0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x20d0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v5, ""

    const-string/jumbo v8, "SsstSmartScanSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "=====onActivityResult requestCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " resultCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mPrevStageForRegiter : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " data :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_0

    const-string/jumbo v8, "hw_auth_token_face"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    const-string/jumbo v8, "hw_auth_token_iris"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    const-string/jumbo v8, "previousStage"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    :cond_0
    iget-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v9, "reset runRegister"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    :cond_1
    const/4 v8, -0x1

    if-ne p2, v8, :cond_6

    const-string/jumbo v8, "key_intelligentscan_web_signin"

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v9, "previos stage is WebSingin"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanVerification(Z)V

    :cond_2
    const-string/jumbo v8, "key_intelligentscan_samsung_account"

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v9, "SamsungAccountSignedIn is False."

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string/jumbo v8, "com.osp.app.signin"

    invoke-virtual {v3, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    array-length v6, v7

    if-nez v6, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "mypackage"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "OSP_VER"

    const-string/jumbo v9, "OSP_02"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "MODE"

    const-string/jumbo v9, "ADD_ACCOUNT"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "Is_From_SA_Verify"

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v8, 0x2c0

    invoke-direct {p0, v1, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    :cond_3
    :goto_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mPrevStageForRegiter:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v9, "returnvalue_sa is not 0"

    invoke-static {v8, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "client_id"

    const-string/jumbo v9, "s5d189ajvs"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "client_secret"

    const-string/jumbo v9, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "Is_From_SA_Verify"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v8, 0x2c1

    invoke-direct {p0, v2, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v9, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_1
    const/4 v8, -0x1

    if-ne p2, v8, :cond_7

    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_2
    const/4 v8, -0x1

    if-eq p2, v8, :cond_8

    const/4 v8, 0x1

    if-ne p2, v8, :cond_9

    :cond_8
    const/4 v8, 0x1

    :try_start_2
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    :try_start_3
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getSmartScanSAConfirmed()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_3
    const/4 v8, -0x1

    if-ne p2, v8, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v8, "SsstSmartScanSettings"

    const-string/jumbo v9, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2c0 -> :sswitch_2
        0x2c1 -> :sswitch_1
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "=====onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string/jumbo v2, "SsstSmartScanSettings"

    const v3, 0x7f12037c

    invoke-static {v1, v3, v2}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v1, "identifyBiometricAuth"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIdentifyBiometricAuthentication:Z

    const-string/jumbo v1, "isAfw"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsAfw:Z

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsMultiWindowModeChanged:Z

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsAfw : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsAfw:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUserId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "hw_auth_token_face"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setHasOptionsMenu(Z)V

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->updatePreferences()V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f120b5d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsRunRegister:Z

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    const-string/jumbo v1, "SsstSmartScanSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "iris postenroll "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_3
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string/jumbo v0, "SsstSmartScanSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04ff

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "IntelligentScanEntry"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->cancelAndSessionEnd()V

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsInMultiWindowMode:Z

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eq v2, v1, :cond_2

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "SsstSmartScanSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onPreferenceChange : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v3

    if-eqz v3, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "intelligentscan_settings_unlock_switch"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    return v6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->showSmartScanTurnOnDialog(Z)V

    return v6

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5, v7}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v7}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return v2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5, v7}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->removeSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getFaceUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->showSmartScanTurnOnDialog(Z)V

    :goto_1
    return v6

    :cond_7
    const-string/jumbo v3, "intelligentscan_settings_unlock_switch"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    goto :goto_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWebSignIn:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v3

    if-nez v3, :cond_a

    const-string/jumbo v3, "key_intelligentscan_web_signin"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    return v6

    :cond_a
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanVerification(Z)V

    goto :goto_0

    :cond_b
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanVerification(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    iput-boolean v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccountObjValue:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startDisclaimerFromSamsungAccount()Z

    move-result v3

    return v3

    :cond_d
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setUseSmartScanSA(I)V

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->setSmartScanSAConfirmed(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccount:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSamsungAccountObjValue:Z

    const-string/jumbo v3, "SsstSmartScanSettings"

    const-string/jumbo v4, "[onPreferenceChange]Samsung Account setChecked is False."

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v3, "SsstSmartScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const-string/jumbo v3, "SsstSmartScanSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "=====onPreferenceTreeClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string/jumbo v3, "key_intelligentscan_register"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "intelligentscan_settings_register"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v3, "key_intelligentscan_remove"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->deleteSmartScanDialog()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "key_intelligentscan_password"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    const-class v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "previousStage"

    const-string/jumbo v4, "changepassword"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "key_intelligentscan_samsung_pass"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "biometricType"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "=====onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "onResume : isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "onResume : Face Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledIrises(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "onResume : Iris Enroll session close."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    if-eqz v0, :cond_5

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "onResume : Session closed! Face Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenFace:[B

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    if-eqz v0, :cond_6

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "onResume : Session closed! Iris Token must be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mTokenIris:[B

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "IntelligentScanEntry"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public startDisclaimerFromSamsungAccount()Z
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v6, "SsstSmartScanSettings"

    const-string/jumbo v7, "startDisclaimerFromSamsungAccount"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-static {v6, v7, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->hasEnrolledSmartScan(Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager;I)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "key_intelligentscan_samsung_account"

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V

    return v10

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->isSamsungAccountSignedIn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string/jumbo v6, "com.osp.app.signin"

    invoke-virtual {v2, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    array-length v4, v5

    if-nez v4, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "mypackage"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "OSP_VER"

    const-string/jumbo v7, "OSP_02"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "MODE"

    const-string/jumbo v7, "ADD_ACCOUNT"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "Is_From_SA_Verify"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v6, 0x2c0

    :try_start_0
    invoke-direct {p0, v1, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "client_id"

    const-string/jumbo v7, "s5d189ajvs"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "client_secret"

    const-string/jumbo v7, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "Is_From_SA_Verify"

    invoke-virtual {v1, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v6, 0x2c1

    invoke-direct {p0, v1, v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public turnOffSmartScanLock()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "SsstSmartScanSettings"

    const-string/jumbo v1, "turnOffSmartScanLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public turnOnSmartScanLock()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "turnOnSmartScanLock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_0
    :try_start_0
    const-string/jumbo v1, "intelligentscan_settings_unlock_switch"

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->runRegister(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->finish()V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mSmartScanUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "SsstSmartScanSettings"

    const-string/jumbo v2, "FaceManager is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
