.class public Lcom/samsung/android/settings/face/FaceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FaceSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceSettings$1;,
        Lcom/samsung/android/settings/face/FaceSettings$2;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static isKeepEnrollSession:Z


# instance fields
.field private SCREEN_ID_REMOVE:I

.field private isRunRegister:Z

.field private mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDisclamierDialog:Landroid/app/AlertDialog;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

.field private mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

.field private mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsInMultiWindowMode:Z

.field private mIsMultiWindowModeChanged:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedTurnOnCheck:Z

.field private mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

.field private mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mRegisterFace:Landroid/support/v7/preference/PreferenceScreen;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mRemoveFace:Landroid/support/v7/preference/PreferenceScreen;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mToken:[B

.field private mUserId:I

.field private mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->SCREEN_ID_REMOVE:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/FaceSettings;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/FaceSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/FaceSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/FaceSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceSettings;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/face/FaceSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/face/FaceSettings;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIdentifyFace:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceSettings$1;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceSettings$2;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "cancelAndSessionEnd() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->stopFaceSettings()V

    sget-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finishFaceSettings()V

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "createPreferenceHierarchy : remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f150102

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/face/FaceSettings;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->setFaceSettingsPreference()V

    return-object v0
.end method

.method private deleteFace()Z
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "deleteFace"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->isFaceSupportingFeatures()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f120ab7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120ab6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$5;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const v3, 0x7f1205fe

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$6;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/face/FaceSettings$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceSettings$7;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v2, 0x1

    return v2

    :cond_1
    const v1, 0x7f120ab7

    goto :goto_0
.end method

.method private isFaceSupportingFeatures()Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFaceFasterRecognition()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v3, 0x100

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIntelligentBiometricsLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private runRegister(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "FcstFaceSettings"

    const v4, 0x7f120379

    invoke-static {v2, v4, v3}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.face.FaceLockSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "identifyFace"

    iget-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIdentifyFace:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v2, :cond_0

    const-string/jumbo v2, "hw_auth_token"

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister already called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runRegister called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3e8

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResultWrapper(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private setFaceSettingsPreference()V
    .locals 15

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v14, 0x0

    const-string/jumbo v8, "register_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v8, "feature_category"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string/jumbo v8, "key_facelock_register"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterFace:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v8, "key_facelock_remove"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemoveFace:Landroid/support/v7/preference/PreferenceScreen;

    const-string/jumbo v8, "key_facelock_password"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v8, v11}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v1

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setFaceSettingsPreference : hasEnrolledFace["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterFace:Landroid/support/v7/preference/PreferenceScreen;

    :goto_0
    invoke-virtual {v11, v8}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "biometrics_backup_type"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v8, v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v8, :cond_8

    if-nez v5, :cond_1

    if-nez v5, :cond_8

    if-ne v0, v9, :cond_8

    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRegisterCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mChangeBackupPassword:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v8, v11}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string/jumbo v8, "FcstFaceSettings"

    const-string/jumbo v11, "setFaceSettingsPreference : Remove Change Backup Password"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v8, "key_facelock_unlock"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v12, 0x100

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v8

    if-ne v8, v9, :cond_9

    const/4 v2, 0x1

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    const/16 v12, 0x1000

    invoke-virtual {v8, v12, v11}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v8

    if-ne v8, v9, :cond_a

    const/4 v3, 0x1

    :goto_3
    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isFaceScreenLock : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isIBScreenLock : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v10}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    const-string/jumbo v8, "key_facelock_samsung_pass"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isEnabledSamsungPass(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v8, :cond_b

    const-string/jumbo v8, "FcstFaceSettings"

    const-string/jumbo v11, "setFaceSettingsPreference : Remove the SamsungPass"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    :goto_4
    const-string/jumbo v8, "key_facelock_without_swipe_to_unlock"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockWithoutSwipeValue(Landroid/content/Context;I)I

    move-result v7

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "withoutSwipeToUnlockValue : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v7, :cond_c

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v11, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v11}, Lcom/android/settings/Utils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    :goto_6
    invoke-virtual {v9, v8}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    const-string/jumbo v8, "key_facelock_recognition_speed_up"

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/face/FaceSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v14/preference/SwitchPreference;

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBioFaceFasterRecognition()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v9}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;I)Z

    move-result v4

    const-string/jumbo v8, "FcstFaceSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isRecognitionSpeedUp : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_e

    :goto_7
    invoke-virtual {v8, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    :goto_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceManager;->setStorageDeviceProtected()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRemoveFace:Landroid/support/v7/preference/PreferenceScreen;

    goto/16 :goto_0

    :cond_8
    xor-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_2

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f120acf

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120bba

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_c
    move v8, v10

    goto/16 :goto_5

    :cond_d
    move v8, v10

    goto/16 :goto_6

    :cond_e
    move v2, v10

    goto :goto_7

    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v8, :cond_6

    const-string/jumbo v8, "FcstFaceSettings"

    const-string/jumbo v9, "setFaceSettingsPreference : Remove Faster Recognition"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v8, v10, v9}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    iget-object v8, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFeatureCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v9, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iput-object v14, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    goto :goto_8
.end method

.method private showDisclaimerDialog()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x10302d2

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120871

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/face/FaceSettings$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/FaceSettings$3;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/face/FaceSettings$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceSettings$4;-><init>(Lcom/samsung/android/settings/face/FaceSettings;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "FcstFaceSettings"

    const-string/jumbo v4, "showDisclaimerDialog : innerView is null "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showFaceTurnOnDialog(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    if-nez v0, :cond_0

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "showFaceTurnOnDialog : create dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;-><init>(IZ)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->setTurnOnDialogFragmentListener(Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceTurnOnDialog:Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "FaceSettings_FaceTurnOnDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper$FaceTurnOnDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4

    const-string/jumbo v1, "FcstFaceSettings"

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

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
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

    const-string/jumbo v1, "FcstFaceSettings"

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

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
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

    const-string/jumbo v1, "FcstFaceSettings"

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

    const-string/jumbo v1, "isAfw"

    iget-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/settings/face/FaceSettings;->isKeepEnrollSession:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private stopFaceSettings()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "stopFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method protected finishFaceSettings()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "finishFaceSettings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mDisclamierDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

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

.method public makeDisclaimerInnerView(Landroid/content/Context;)Landroid/view/View;
    .locals 15

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    move-object/from16 v12, p1

    check-cast v12, Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f0d02b8

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    const v12, 0x7f0a0271

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aa2

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v12, 0x7f0a0272

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aa3

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "\n"

    const-string/jumbo v14, ""

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v12, 0x7f0a0274

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120a9e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v12, 0x7f0a0276

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120a9f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "\n"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aa1

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v12, 0x7f0a0277

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f120aa0

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-object v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, ""

    const-string/jumbo v1, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "=====onActivityResult requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_1

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    const-string/jumbo v1, "previousStage"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    :cond_2
    if-eq p2, v4, :cond_0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "FIRSTFACE_REQUEST_CODE : Registration fail!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    if-ne p2, v4, :cond_3

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "onActivityResult ChooseLockGeneric Granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "=====onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "FcstFaceSettings"

    const-string/jumbo v3, "=====onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "FcstFaceSettings"

    const v4, 0x7f120379

    invoke-static {v2, v4, v3}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v2, "tokenFromLock"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v2, "identifyFace"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIdentifyFace:Z

    const-string/jumbo v2, "isAfw"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    const-string/jumbo v2, "needTurnOnCheck"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsAfw : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsAfw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUserId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needTurnOnCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mNeedTurnOnCheck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->setHasOptionsMenu(Z)V

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->SCREEN_ID_REMOVE:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

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

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "reset runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->isRunRegister:Z

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    if-nez v1, :cond_2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    move-result v0

    :cond_1
    if-gez v0, :cond_2

    const-string/jumbo v1, "FcstFaceSettings"

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
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "FcstFaceSettings"

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

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const-string/jumbo v0, "FcstFaceSettings"

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
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->showDisclaimerDialog()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b020d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "=====onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04ff

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "Top of fragment is searchResultsSummary"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "FaceEntry"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eq v1, v2, :cond_3

    const-string/jumbo v1, "FcstFaceSettings"

    const-string/jumbo v2, "multi-window mode changed : skip cancelAndSessionEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mIsMultiWindowModeChanged:Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->cancelAndSessionEnd()V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v5, "FcstFaceSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====onPreferenceChange : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0217

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v2

    if-eqz v2, :cond_8

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "FaceSettings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/face/FaceSettings;->showFaceTurnOnDialog(Z)V

    return v4

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v4, v5, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getIrisUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v5, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->getSmartScanUnlockEnalbed(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->showFaceTurnOnDialog(Z)V

    :goto_2
    return v4

    :cond_a
    const-string/jumbo v2, "FaceSettings_unlock_switch"

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0b0215

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    goto/16 :goto_1

    :cond_c
    move v3, v4

    goto :goto_3

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v6, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-static {v5, v2, v6}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceUnlockRecognitionSpeedUpValue(Landroid/content/Context;ZI)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b020b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    move v3, v4

    goto :goto_4

    :cond_f
    const-string/jumbo v2, "FcstFaceSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const-string/jumbo v3, "FcstFaceSettings"

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

    const-string/jumbo v3, "key_facelock_register"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "FaceSettings_register"

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v3, "key_facelock_remove"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0211

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->SCREEN_ID_REMOVE:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->deleteFace()Z

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "key_facelock_password"

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

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityWrapper(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "key_facelock_samsung_pass"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.samsungpass.ACTION_USE_BIOMETRIC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "biometricType"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceSettings;->startActivityWrapperWithSessionClose(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v3, "=====onResume()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "isDesktopMode or isInMultiWindowMode is TRUE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceSettings;->updatePreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v3, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v3, "Enroll session close."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v3, "Session closed! Token must be null!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0218

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0b0216

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b020b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/FaceSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FaceEntry"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_8
    move v0, v2

    goto :goto_0

    :cond_9
    move v0, v2

    goto :goto_1

    :cond_a
    move v1, v2

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "hw_auth_token"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public turnOffFaceLock()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "turnOffFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public turnOnFaceLock()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "turnOnFaceLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "No registered face! runRegister"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FaceSettings_unlock_switch"

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "FcstFaceSettings"

    const-string/jumbo v1, "Face already registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mFaceUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mRecognitonSpeedUp:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceSettings;->mWithoutSwipeToUnlock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
