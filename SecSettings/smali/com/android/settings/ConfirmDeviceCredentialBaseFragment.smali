.class public abstract Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings/OptionsMenuFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;
.implements Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;
.implements Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;,
        Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$LastTryDialog;
    }
.end annotation


# instance fields
.field protected mCancelButton:Landroid/widget/Button;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field protected mEffectiveUserId:I

.field protected mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;

.field protected final mHandler:Landroid/os/Handler;

.field private mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

.field protected mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field protected mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field protected mIrisPreviewLayout:Landroid/widget/LinearLayout;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field protected mReturnCredentials:Z

.field private mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

.field protected mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field protected mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/OptionsMenuFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private isFingerprintAllowed()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisallowedByStrongAuth()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isIntelligentScanAllowed()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings.ConfirmCredentials.allowIntelligentScanAuthentication"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisallowedByStrongAuth()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisabledByAdmin()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIBLockDisabled(Landroid/content/Context;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private isIrisAllowed()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isIntelligentScanAllowed()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.android.settings.ConfirmCredentials.allowIrisAuthentication"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisallowedByStrongAuth()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisabledByAdmin()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isIrisDisabled(Landroid/content/Context;I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_1
    return v1
.end method

.method private setWorkChallengeBackground(Landroid/view/View;I)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a04ff

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v5, 0x7f0a00bf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0807ec

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060076

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v4, Landroid/graphics/Point;->y:I

    const/4 v7, -0x1

    invoke-direct {v5, v7, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract applyWorkProfileStyle()V
.end method

.method protected abstract authenticationSucceeded()V
.end method

.method protected checkForPendingIntent()V
    .locals 12

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.TASK_ID"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-eq v11, v3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v10

    const/4 v0, -0x1

    invoke-virtual {v10, v0}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {v7, v11, v0}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v9

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "android.intent.extra.INTENT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_1
    move-exception v8

    goto :goto_0
.end method

.method protected abstract getLastTryErrorMessage()I
.end method

.method protected isFingerprintDisallowedByStrongAuth()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isProfileChallenge()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->checkForPendingIntent()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/OptionsMenuFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "return_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isIrisAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isIntelligentScanAllowed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onIrisVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->stopListening()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->stopListening()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/OptionsMenuFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    return-void
.end method

.method protected abstract onShowDefault()V
.end method

.method protected abstract onShowError()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/android/settings/OptionsMenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0a0448

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a044f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v0, 0x7f0a07f5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a07fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v0, 0x7f0a014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    const v0, 0x7f0a0337

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintUiHelper;

    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/settings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V

    iput-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings.ConfirmCredentials.showCancelButton"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$2;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/iris/IrisUiHelper;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/samsung/android/settings/iris/IrisUiHelper$Callback;I)V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisPreviewLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$3;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreview:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/samsung/android/settings/smartscan/SmartScanUiHelper$Callback;I)V

    iput-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanPreviewLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$4;-><init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v6

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v6}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, v6}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->setWorkChallengeBackground(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->applyWorkProfileStyle()V

    :cond_2
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    return-void
.end method

.method protected refreshIrisAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->stopListening()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->startListening()V

    goto :goto_0
.end method

.method protected refreshLockScreen()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isIrisAllowed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->startListening()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isIntelligentScanAllowed()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->startListening()V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mIrisHelper:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->stopListening()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->stopListening()V

    goto :goto_2
.end method

.method protected refreshSmartScanAuthentication()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->stopListening()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mSmartScanHelper:Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/smartscan/SmartScanUiHelper;->startListening()V

    goto :goto_0
.end method

.method protected reportFailedAttempt()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    :cond_0
    return-void
.end method

.method protected reportSuccessfullAttempt()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    :cond_0
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v3, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected showError(IJ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    return-void
.end method

.method protected showError(Ljava/lang/CharSequence;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onShowError()V

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    return-void
.end method

.method protected updateErrorMessage(I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    if-lez v0, :cond_1

    if-lez p1, :cond_1

    sub-int v2, v0, p1

    if-ne v2, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f120fdd

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getLastTryErrorMessage()I

    move-result v5

    const v6, 0x104000a

    invoke-static {v4, v3, v5, v6, v7}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;IIZ)Z

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f120fd7

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    :cond_1
    return-void

    :cond_2
    if-gtz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f120fd8

    const v6, 0x7f120fd9

    invoke-static {v4, v9, v5, v6, v8}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;IIZ)Z

    goto :goto_0
.end method
