.class public Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;
.super Landroid/app/Activity;
.source "BiometricsAuthenticationActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;
.implements Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;
.implements Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFaceAuthenticateDialog:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mForFaceAuth:Z

.field private mForFingerprintAuth:Z

.field private mForIrisAuth:Z

.field private mForSmartScanAuth:Z

.field private mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

.field private mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

.field private mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

.field private mIsFromAppLock:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private final mIsRearSensor:Z

.field private mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->forceDisplayConfirmBP()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showDatabaseFailureDialog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFaceAuthenticate()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisAuthenticate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisConrimBPDialog()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSamsungAcountAuthenticate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSensorErrorDialog(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForSmartScanAuth:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetupWizard:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromAppLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetCases:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->getSensorPosition()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsRearSensor:Z

    return-void
.end method

.method private forceDisplayConfirmBP()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getBiometricsFailedAttempts(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$7;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v1, p0, v2, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private isEnrolledIrises()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBackgroudDimEnabled(Z)V
    .locals 3

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method private showDatabaseFailureDialog()V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b20

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120b3e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$10;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$11;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showErrorPopup(I)V
    .locals 7

    const v6, 0x7f120e3d

    const v5, 0x7f120e2e

    const-string/jumbo v1, ""

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120e47

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$4;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const v4, 0x7f121080

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$5;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$6;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$6;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120e2b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120e37

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120e34

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120e3c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120e32

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f120e42

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private showFaceAuthenticate()V
    .locals 2

    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "showFaceAuthenticate Called"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFaceAuthenticateDialog:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    return-void
.end method

.method private showFaceErrorPopup(I)V
    .locals 6

    const-string/jumbo v2, ""

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f120aac

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    packed-switch p1, :pswitch_data_0

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f120aa9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const v5, 0x7f120aa6

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$2;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$3;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f120a92

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showFingerprintAuthenticate()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "BiometricsAuthenticationActivity"

    const-string/jumbo v4, "showFingerprintAuthenticate Called"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-nez v3, :cond_0

    const-string/jumbo v3, "BiometricsAuthenticationActivity"

    const-string/jumbo v4, "mFingerprintManager is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f120b6a

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSensorErrorDialog(I)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->hasEnrolledIrises()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_2

    const-string/jumbo v3, "enrolled_iris"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->identifyFinger(Landroid/os/Bundle;)I

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v3, "BiometricsAuthenticationActivity"

    const-string/jumbo v4, "identifyFinger start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v3, -0x4

    if-ne v2, v3, :cond_6

    const-string/jumbo v3, "BiometricsAuthenticationActivity"

    const-string/jumbo v4, "RESULT_DATABASE_FAILURE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showDatabaseFailureDialog()V

    goto :goto_2

    :cond_6
    const-string/jumbo v3, "BiometricsAuthenticationActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Other Error occured : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_2
.end method

.method private showIrisAuthenticate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->initBiometricsBackupPasswordValue(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisAuthenticateDialog$IAuthenticateDialogEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromAppLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetCases:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->hideOtherButtons()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->show()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    return-void
.end method

.method private showIrisConrimBPDialog()V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$IrisConfirmBackupPasswordEventListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->show()V

    return-void
.end method

.method private showRemainingTimeoutDialog()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->show()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setBackgroudDimEnabled(Z)V

    return-void
.end method

.method private showSamsungAcountAuthenticate()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.msc.action.samsungaccount.CONFIRM_PASSWORD_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "client_id"

    const-string/jumbo v2, "s5d189ajvs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "client_secret"

    const-string/jumbo v2, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "biometrics_disabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x65

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->startActivityForResultWrapper(Landroid/content/Intent;I)V

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

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120b20

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$8;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$9;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startActivityForResultWrapper(Landroid/content/Intent;I)V
    .locals 4

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

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

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityForResultWrapper failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0
.end method

.method private useMobileKeyboard()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public FaceAuthenticateDialogEvent(I)V
    .locals 2

    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "FaceAuthenticateDialogEvent Called"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "FaceAuthenticateDialogEvent : unused mValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFaceErrorPopup(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSamsungAcountAuthenticate()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFaceErrorPopup(I)V

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x4 -> :sswitch_3
        0x9 -> :sswitch_2
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method public IrisAuthenticateDialogEvent(I)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v4, 0x2

    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "IrisAuthenticateDialogEvent Called"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisConrimBPDialog()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showSamsungAcountAuthenticate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFingerprintAuthenticate()V

    goto :goto_0

    :cond_4
    if-ne p1, v2, :cond_5

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_6

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    goto :goto_0

    :cond_6
    if-ne p1, v6, :cond_7

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    goto :goto_0

    :cond_7
    if-ne p1, v5, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    :cond_8
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showErrorPopup(I)V

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0
.end method

.method public IrisConfirmBackupPasswordDialogEvent(I)V
    .locals 4

    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    const-string/jumbo v1, "IrisConfirmBackupPasswordDialogEvent Called"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "BiometricsAuthenticationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====onActivityResult requestCode : "

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

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    if-ne p2, v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_fingerprint_authentication"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisManager:Lcom/samsung/android/camera/iris/SemIrisManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_iris_authentication"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxSetupWizard"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "from_applock"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromAppLock:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "is_knox"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsFromKnoxSetCases:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_face_authentication"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "for_intelligentscan_authentication"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForSmartScanAuth:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->isEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->useMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIsRearSensor:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForSmartScanAuth:Z

    if-eqz v1, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    :cond_1
    const v0, 0x7f12037a

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    if-eqz v1, :cond_4

    const v0, 0x7f12037b

    :cond_2
    :goto_0
    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "BiometricsAuthenticationActivity"

    const-string/jumbo v2, "onCreate called dismiss"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v6}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    if-eqz v1, :cond_2

    const v0, 0x7f120379

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFingerprintAuth:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFingerprintAuthenticate()V

    :goto_1
    return-void

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForIrisAuth:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-lez v1, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->forceDisplayConfirmBP()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisConrimBPDialog()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisAuthenticate()V

    goto :goto_1

    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mForFaceAuth:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFingerprintAuthenticate()V

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->isEnrolledIrises()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsConfig;->getRemaingTimeToUnlock(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-lez v1, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showRemainingTimeoutDialog()V

    goto :goto_1

    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->forceDisplayConfirmBP()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisConrimBPDialog()V

    goto :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showIrisAuthenticate()V

    goto :goto_1

    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->showFaceAuthenticate()V

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->finish()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisAuthenticateDialog:Lcom/samsung/android/settings/iris/IrisAuthenticateDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mIrisConfirmPasswordDialog:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mShowRemainingTimerDialog:Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity$showRemainingTimerDialog;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFaceAuthenticateDialog:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFaceAuthenticateDialog:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFaceAuthenticateDialog:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->forcedDismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mFaceAuthenticateDialog:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsAuthenticationActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
