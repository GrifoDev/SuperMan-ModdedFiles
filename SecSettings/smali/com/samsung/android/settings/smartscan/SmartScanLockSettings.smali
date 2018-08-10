.class public Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;
.super Landroid/app/Activity;
.source "SmartScanLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$1;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSetupwizard:Z

.field private mIdentifyBiometrics:Z

.field private mIrisErrorPopup:Landroid/app/AlertDialog;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mReigstredBiometrics:I

.field private mTokenFace:[B

.field private mTokenIris:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private result_intent:Landroid/content/Intent;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startIrisRegister(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->deleteFaceData()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->key:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-void
.end method

.method private closeSessionAndFinish()V
    .locals 3

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeSessionAndFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the Face session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the Iris session!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Close Face Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->postEnroll()I

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : Close Iris Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "closeSessionAndFinish : fniish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->finish()V

    goto :goto_2
.end method

.method private deleteFaceData()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SsstSmartScanLockSettings"

    const-string/jumbo v2, "Delete all face data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/bio/face/SemBioFace;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    :cond_0
    return-void
.end method

.method private fromSmartScanSettings(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "intelligentscan_settings_entry"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "intelligentscan_settings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "intelligentscan_settings_register"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "key_intelligentscan_web_signin"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "key_intelligentscan_samsung_account"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private initSmartScanLockSettings()V
    .locals 4

    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    const-string/jumbo v1, "hw_auth_token_face"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    const-string/jumbo v1, "hw_auth_token_iris"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    const-string/jumbo v1, "password"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserPassword:Ljava/lang/String;

    const-string/jumbo v1, "identifyBiometricAuth"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    const-string/jumbo v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_face"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token_iris"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    :cond_0
    const-string/jumbo v1, "SsstSmartScanLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPreviousStage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->key:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_5
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    return-void
.end method

.method private launchChooseLock()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "launchChooseLock"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_smartscan"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "lock_screen_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "screen_lock_bio"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, "intelligentscan_settings_entry"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "intelligentscan_settings_register"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "intelligentscan_settings_unlock_switch"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "settings_bio"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v2, "lock_screen_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    :cond_3
    const-string/jumbo v2, "confirm_credentials"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    const-string/jumbo v2, "setupwizard_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_5
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    const/16 v2, 0x3ea

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method

.method private launchConfirmLock()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v2, "launchConfirmLock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v0, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v0, 0x7f1218f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mChallenge:J

    const/16 v2, 0x3eb

    move-object v5, v4

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v2, "Fail launchConfirmationActivity!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iput v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :cond_2
    return-void
.end method

.method private processSmartScanRegistrationResult()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "processSmartScanRegistrationResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "intelligentscan_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "lock_screen_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "intelligentscan_settings_unlock_switch"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "key_intelligentscan_web_signin"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "key_intelligentscan_samsung_account"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startUseSmartScanLockSettings()V

    goto :goto_0
.end method

.method private setKeepSessionAndActivityValue()V
    .locals 1

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    goto :goto_0
.end method

.method private showCurrentLockTypeToast()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    const/4 v0, 0x0

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v3, "SsstSmartScanLockSettings"

    const-string/jumbo v4, "showCurrentLockTypeToast undefined lock type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :sswitch_0
    const v0, 0x7f120b30

    goto :goto_0

    :sswitch_1
    const v0, 0x7f120b2c

    goto :goto_0

    :sswitch_2
    const v0, 0x7f120b2e

    goto :goto_0

    nop

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

.method private showFaceRetryDialog()V
    .locals 4

    const-string/jumbo v1, "SsstSmartScanLockSettings"

    const-string/jumbo v2, "showFaceRetryDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120aaa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120aa7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120aa6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$4;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$5;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showIrisErrorPopup(I)V
    .locals 8

    const v7, 0x7f120e2b

    const/4 v4, 0x0

    const-string/jumbo v3, ""

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-nez v4, :cond_0

    const v6, 0x7f120e2d

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$6;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$6;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    const v7, 0x7f121080

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$7;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$7;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    const/high16 v7, 0x1040000

    invoke-virtual {v0, v7, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$8;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$8;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisErrorPopup:Landroid/app/AlertDialog;

    return-void

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f120e37

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :pswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f120e3c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120e3d

    goto :goto_0

    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v7, 0x7f120e32

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120e3d

    goto :goto_0

    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x9
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startBiometricsLockSetup()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v5, "startBiometricsLockSetup"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v5, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "setupwizard_intelligentscan"

    iget-object v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "fromSetupwizard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v5, "existFace"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "existIris"

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "for_smartscan"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    const/16 v2, 0x3ee

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startBiometricsLockSetup : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_2
.end method

.method private startBiometricsRegister()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFaceRegister()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startIrisRegister()V

    goto :goto_0
.end method

.method private startFaceRegister()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method private startFaceRegister(Z)V
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v6, "SsstSmartScanLockSettings"

    const-string/jumbo v7, "There is no enrolled face. Run startFaceRegister!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "always_finish_activities"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const v8, 0x7f120dab

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const v8, 0x7f120b66

    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f120b20

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$2;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    const v8, 0x104000a

    invoke-virtual {v6, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v6, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f120b60

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.samsung.android.bio.face.service"

    const-string/jumbo v7, "com.samsung.android.bio.face.service.enroll.FaceEnrollActivity"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "for_smartscan"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "hw_auth_token"

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v6, "face_enroll_retry"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v6, 0x20000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.USER_ID"

    iget v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "setupwizard_intelligentscan"

    iget-object v7, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "fromSetupwizard"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    iget v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x0

    :cond_3
    const/16 v6, 0x111

    :try_start_0
    iput v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v7, 0x3ec

    invoke-virtual {p0, v3, v7, v6}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v6, "SsstSmartScanLockSettings"

    const-string/jumbo v7, "runRegister : Activity Not Found !"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_1
.end method

.method private startIrisRegister()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startIrisRegister(Z)Z

    return-void
.end method

.method private startIrisRegister(Z)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startIrisRegister"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.server.iris"

    const-string/jumbo v3, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "for_smartscan"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "iris_enroll_retry"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, "setupwizard_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x111

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ed

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "ActivityNotFoundException!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private startRedactionInterstitial()V
    .locals 3

    const-string/jumbo v1, "SsstSmartScanLockSettings"

    const-string/jumbo v2, "startRedactionInterstitial"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "fromSetupWizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startSmartScanIntroduce()V
    .locals 4

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startSmartScanIntroduce"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanIntroduce"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "setupwizard_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    const/16 v2, 0x3ef

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startSmartScanIntroduce : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method

.method private startSmartScanSettings(Landroid/content/Context;)V
    .locals 10

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startSmartScanSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, p1

    if-nez p1, :cond_1

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, ":settings:fragment_args_key"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "hw_auth_token_face"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "hw_auth_token_iris"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings/SettingsActivity;->getSettingsActivityContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_0

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startFragment : startPreferencePanel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-string/jumbo v2, "com.samsung.android.settings.smartscan.SmartScanSettings"

    const/4 v1, 0x0

    const v4, 0x7f12037c

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "com.samsung.android.settings.smartscan.SmartScanSettings"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f12037c

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method private startSmartScanTips()V
    .locals 4

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startSmartScanTips"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanTip"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "setupwizard_intelligentscan"

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "fromSetupwizard"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setKeepSessionAndActivityValue()V

    const/16 v2, 0x3f0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startSmartScanTips : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_0
.end method

.method private startUseSmartScanLockSettings()V
    .locals 4

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startUseSmartScanLockSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.settings"

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.samsung.android.settings.smartscan.UseSmartScanLockSettingsDialog"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v2, "com.samsung.android.settings.smartscan.UseSmartScanLockSettings"

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "startUseSmartScanLockSettings : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x1

    const/16 v6, 0x11

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v3, "SsstSmartScanLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " resultCode : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " data is NULL : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFromSetupwizard:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v3, 0x1002

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    if-eqz p3, :cond_2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v3, "intent is not null! Copy the token to result_intent"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-nez v0, :cond_1

    const-string/jumbo v0, "hw_auth_token_face"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token_face"

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "SsstSmartScanLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult: tokenFace="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-nez v0, :cond_2

    const-string/jumbo v0, "hw_auth_token_iris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "hw_auth_token_iris"

    iget-object v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v3, "SsstSmartScanLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult: tokenIris="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "default : Not consider this case"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "NULL"

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "NULL"

    goto :goto_2

    :pswitch_0
    if-ne p2, v1, :cond_1c

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getToastMsgForBiometricsBackUpPassword(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    const-string/jumbo v0, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_5
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showCurrentLockTypeToast()V

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto :goto_5

    :cond_a
    const-string/jumbo v0, "intelligentscan_settings_entry"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_5

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto :goto_5

    :cond_d
    const-string/jumbo v0, "lock_screen_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_e
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v0, "intelligentscan_register_external"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_5

    :cond_13
    const-string/jumbo v0, "intelligentscan_settings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_14
    iput v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_5

    :cond_16
    const-string/jumbo v0, "intelligentscan_settings_register"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    iput v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_5

    :cond_18
    const-string/jumbo v0, "key_intelligentscan_web_signin"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "key_intelligentscan_samsung_account"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_19
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    iput v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_1a
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_5

    :cond_1b
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "This is wrong case! Couldn\'t be exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_1c
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "Set lockscreen failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :pswitch_1
    if-ne p2, v5, :cond_1e

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v6, :cond_1d

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :goto_6
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    goto/16 :goto_3

    :cond_1d
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto :goto_6

    :cond_1e
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto :goto_6

    :pswitch_2
    if-ne p2, v5, :cond_1f

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "start chooseLockGeneric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchChooseLock()V

    goto/16 :goto_3

    :cond_1f
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_3

    :pswitch_3
    if-ne p2, v5, :cond_20

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsRegister()V

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "onActivityResult: Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_21

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_21
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_22

    iput v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_22
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_3

    :pswitch_4
    const/4 v0, -0x2

    if-ne p2, v0, :cond_23

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showFaceRetryDialog()V

    goto/16 :goto_3

    :cond_23
    if-ne p2, v5, :cond_2c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v5, :cond_24

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    :cond_24
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFace()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValueForSmartScan(Landroid/content/Context;I)I

    move-result v0

    if-ne v0, v5, :cond_25

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    :cond_25
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b020f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    const-string/jumbo v0, "setupwizard_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b020f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0210

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :goto_7
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startIrisRegister()V

    goto/16 :goto_3

    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b020f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0210

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    goto :goto_7

    :cond_27
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_28

    const-string/jumbo v0, "lock_screen_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string/jumbo v0, "intelligentscan_settings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_29

    const-string/jumbo v0, "key_intelligentscan_web_signin"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_29

    const-string/jumbo v0, "key_intelligentscan_samsung_account"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :cond_29
    const-string/jumbo v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartScanTips()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2b

    :cond_2a
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->processSmartScanRegistrationResult()V

    goto/16 :goto_3

    :cond_2b
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanTips()V

    goto/16 :goto_3

    :cond_2c
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    iput v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_2e
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_3

    :pswitch_5
    if-nez p2, :cond_33

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_2f

    const-string/jumbo v0, "lock_screen_intelligentscan"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "intelligentscan_settings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->isSmartScanDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_30

    const-string/jumbo v0, "key_intelligentscan_web_signin"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    const-string/jumbo v0, "key_intelligentscan_samsung_account"

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mUserId:I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->setSmartScanLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :cond_30
    const-string/jumbo v0, "setupwizard_intelligentscan"

    iget-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSmartScanTips()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_32

    :cond_31
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->processSmartScanRegistrationResult()V

    goto/16 :goto_3

    :cond_32
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanTips()V

    goto/16 :goto_3

    :cond_33
    const/4 v0, -0x2

    if-ne p2, v0, :cond_34

    const/4 v0, -0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showIrisErrorPopup(I)V

    goto/16 :goto_3

    :cond_34
    const/4 v0, -0x3

    if-ne p2, v0, :cond_35

    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showIrisErrorPopup(I)V

    goto/16 :goto_3

    :cond_35
    const/4 v0, -0x4

    if-ne p2, v0, :cond_36

    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showIrisErrorPopup(I)V

    goto/16 :goto_3

    :cond_36
    const/4 v0, -0x6

    if-ne p2, v0, :cond_37

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showIrisErrorPopup(I)V

    goto/16 :goto_3

    :cond_37
    const/16 v0, -0x9

    if-ne p2, v0, :cond_38

    const/16 v0, -0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->showIrisErrorPopup(I)V

    goto/16 :goto_3

    :cond_38
    const/4 v0, -0x7

    if-ne p2, v0, :cond_3d

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f121c42

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_39
    :goto_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_3a

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startRedactionInterstitial()V

    :cond_3a
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3b

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "Iris registration falied! Remove all face data if face was registered this time!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->deleteFaceData()V

    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->fromSmartScanSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_3c

    iput v6, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    :cond_3c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_3

    :cond_3d
    if-eq p2, v5, :cond_39

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f121c41

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_8

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->processSmartScanRegistrationResult()V

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x11

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const v1, 0x7f12037c

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mKeepSessionAndActivity:I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->initSmartScanLockSettings()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "mPreviousStage is null! Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v1, "setupwizard_intelligentscan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_7

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsLockSetup()V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "intelligentscan_settings_entry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsLockSetup()V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "intelligentscan_settings_register"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_10

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsLockSetup()V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "key_intelligentscan_web_signin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "key_intelligentscan_samsung_account"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "intelligentscan_settings_unlock_switch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "lock_screen_intelligentscan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_14

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsLockSetup()V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "intelligentscan_register_external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_18

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "Wrong case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIsSecured:Z

    if-nez v0, :cond_9

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "startBiometricsLockSetup() : mIsSecured is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startBiometricsLockSetup()V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-nez v0, :cond_b

    :cond_a
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-eqz v0, :cond_a

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIdentifyBiometrics:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanSettings(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "SmartScanLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-nez v0, :cond_12

    :cond_11
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_12
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-eqz v0, :cond_11

    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "SmartScanLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-nez v0, :cond_16

    :cond_15
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_16
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-eqz v0, :cond_15

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "SmartScanLockSettings() : mIsSecured is TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenIris:[B

    if-nez v0, :cond_1a

    :cond_19
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "launchConfirmLock() : Token is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->launchConfirmLock()V

    goto/16 :goto_0

    :cond_1a
    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mReigstredBiometrics:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mTokenFace:[B

    if-eqz v0, :cond_19

    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->startSmartScanIntroduce()V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "Wrong previous case!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "Close Fingerprint Session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisErrorPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanLockSettings;->closeSessionAndFinish()V

    :cond_0
    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string/jumbo v0, "SsstSmartScanLockSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
