.class public Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;
.super Landroid/app/Activity;
.source "UseFingerprintLockSettingsDialog.java"


# instance fields
.field private SCREEN_ID_SET_FINGER_LOCK:I

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSetupwizard:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsFinish:Z

.field private mIsTurnOnClicked:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mSpassSdkCompat:Z

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->SCREEN_ID_SET_FINGER_LOCK:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIsFinish:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIsTurnOnClicked:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mUserId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIsFinish:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIsTurnOnClicked:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->showSensorErrorDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mFromSetupwizard:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mSpassSdkCompat:Z

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIsTurnOnClicked:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIsFinish:Z

    iput v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mUserId:I

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3706

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getWindow()Landroid/view/Window;

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

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b20

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$4;-><init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$5;-><init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string/jumbo v1, "google_setupwizard_fingerprint"

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->setIndicatorTransparency()V

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/app/Dialog;)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startUseFingerprintLockSettingsDialog(Landroid/os/Bundle;)V
    .locals 7

    const-string/jumbo v2, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v3, "startUseFingerprintLockSettingsDialog!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120b82

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mPreviousStage:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mUserId:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->getUseFingerprintLockSettingsDescription(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12038b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$1;-><init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12038a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$2;-><init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog$3;-><init>(Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

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

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const v1, 0x7f12037a

    invoke-static {p0, v1, v0}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0238

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->SCREEN_ID_SET_FINGER_LOCK:I

    iput-object p0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mUserId:I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "previousStage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mPreviousStage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "spass_sdk_compat"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mSpassSdkCompat:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "fromSetupwizard"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mFromSetupwizard:Z

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[previousStage] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[mSpassSdkCompat] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mSpassSdkCompat:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[fromSetupwizard] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mFromSetupwizard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->SCREEN_ID_SET_FINGER_LOCK:I

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->startUseFingerprintLockSettingsDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "fingerprint_settings_add_fingerprint"

    iget-object v1, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mSpassSdkCompat:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FpstUseFingerprintLockSettingsDialog"

    const-string/jumbo v1, "SendBroadcast for SpassCompat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/UseFingerprintLockSettingsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->sendBroadcastWrapperForPassSdk(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
