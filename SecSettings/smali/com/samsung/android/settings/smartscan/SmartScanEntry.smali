.class public Lcom/samsung/android/settings/smartscan/SmartScanEntry;
.super Landroid/app/Activity;
.source "SmartScanEntry.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/smartscan/SmartScanEntry$1;,
        Lcom/samsung/android/settings/smartscan/SmartScanEntry$2;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static isSearchEntry:Z

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mBioRegisteredType:I

.field private mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

.field private mContext:Landroid/content/Context;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIdentifyBiometricAuthentication:Z

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsAfw:Z

.field private mIsWaitingResult:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mTokenFace:[B

.field private mTokenIris:[B


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartscan/SmartScanEntry;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/smartscan/SmartScanEntry;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/smartscan/SmartScanEntry;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/smartscan/SmartScanEntry;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->isSearchEntry:Z

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenFace:[B

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenIris:[B

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIdentifyBiometricAuthentication:Z

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanEntry;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private authenticateSmartScan()V
    .locals 4

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.biometrics.BiometricsAuthenticationActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_intelligentscan_authentication"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    sget v3, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x68

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->overridePendingTransition(II)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SsstSmartScanEntry"

    const-string/jumbo v3, "authenticateSmartScan : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    goto :goto_0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    const/4 v4, 0x0

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v2, "launchConfirmLock "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_0
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    const v0, 0x7f12182f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v8, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    const/16 v2, 0x65

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v2, "ConfirmLock Fail"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->releaseBiometricEnrollSession()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    :cond_1
    return-void
.end method

.method private runRegister()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v2, "SsstSmartScanEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "need to register registered type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "always_finish_activities"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f120e13

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const v5, 0x7f120dab

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120b66

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v7}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "intelligentscan_register_external"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "intelligentscan_settings_entry"

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    :cond_1
    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "isAfw"

    iget-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "intelligentscan_registered_biometric_type"

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    sget v3, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_2
    const-string/jumbo v2, "SsstSmartScanEntry"

    const v3, 0x7f12037c

    invoke-static {p0, v3, v2}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SsstSmartScanEntry"

    const-string/jumbo v3, "runRegister : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 12

    move-object v11, p1

    if-nez p1, :cond_1

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "fromSearch"

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "key_intelligentscan_samsung_pass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "key_intelligentscan_unlock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    const-string/jumbo v1, "key_intelligentscan_unlock_when_turns_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->isSearchEntry:Z

    const-string/jumbo v0, "SsstSmartScanEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startFragment subMenuSearch: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v0, "hw_auth_token_face"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenFace:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "hw_auth_token_iris"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenIris:[B

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "isAfw"

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    sget v1, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "identifyBiometricAuth"

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIdentifyBiometricAuthentication:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->isSearchEntry:Z

    if-eqz v0, :cond_4

    const-class v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f12037c

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragmentBySearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v11

    check-cast v3, Lcom/android/settings/SettingsActivity;

    const-class v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const v7, 0x7f12037c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    :cond_5
    const-class v0, Lcom/samsung/android/settings/smartscan/SmartScanSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f12037c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    goto/16 :goto_0
.end method

.method private supportSmartScan()Z
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.biometrics"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.camera.iris"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x11

    const/4 v4, -0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "SsstSmartScanEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    const/16 v0, 0x65

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_0
    if-ne p2, v4, :cond_3

    if-eqz p3, :cond_1

    const-string/jumbo v0, "hw_auth_token_face"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenFace:[B

    const-string/jumbo v0, "hw_auth_token_iris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mTokenIris:[B

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    if-ne v0, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->releaseBiometricEnrollSession()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x68

    if-ne p1, v0, :cond_7

    if-ne p2, v4, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIdentifyBiometricAuthentication:Z

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->startFragment(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->releaseBiometricEnrollSession()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->overridePendingTransition(II)V

    goto :goto_0

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "SsstSmartScanEntry"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    sput-boolean v5, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->isSearchEntry:Z

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "IntelligentScan"

    invoke-virtual {v2, p0, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    const-string/jumbo v2, "SsstSmartScanEntry"

    const v3, 0x7f12037c

    invoke-static {p0, v3, v2}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->supportSmartScan()Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SsstSmartScanEntry"

    const-string/jumbo v3, "this device does not support SmartScan"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_1
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBiometricsManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v2, :cond_3

    :cond_2
    const-string/jumbo v2, "Smart Scan Error"

    const-string/jumbo v3, "An error has occurred with Smart Scan. If this message appears repeatedly, restart your device."

    const/4 v4, 0x1

    invoke-static {p0, v2, v3, v4}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v2, "SsstSmartScanEntry"

    const-string/jumbo v3, "Error. biomerics manager null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->key:Ljava/lang/String;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isAfw"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "previousStage"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v2, "SsstSmartScanEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SsstSmartScanEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_5

    const-string/jumbo v2, "IsWaitingResult"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    if-eqz v2, :cond_5

    return-void

    :cond_5
    sget v1, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    sget v2, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    :cond_6
    iput v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    :cond_8
    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mBioRegisteredType:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_9
    const-string/jumbo v2, "intelligentscan_register_external"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    const-string/jumbo v2, "SsstSmartScanEntry"

    const-string/jumbo v3, "Face and iris exist but non-secure"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->runRegister()V

    return-void

    :cond_a
    const-string/jumbo v2, "SsstSmartScanEntry"

    const-string/jumbo v3, "Face and iris already registered and secure!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    return-void

    :cond_b
    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->launchChooseOrConfirmLock()V

    :goto_0
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->authenticateSmartScan()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "=====onDestroy()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 4

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBixby()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/smartscan/SmartScanEntry$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanEntry;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanEntry"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "IsWaitingResult"

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    const-string/jumbo v1, "SsstSmartScanEntry"

    const-string/jumbo v2, "=====onStop()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sget v1, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mIsWaitingResult:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method releaseBiometricEnrollSession()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanEntry;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_0
    return-void
.end method
