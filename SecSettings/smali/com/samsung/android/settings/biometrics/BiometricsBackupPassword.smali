.class public Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;
.super Landroid/preference/PreferenceActivity;
.source "BiometricsBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;,
        Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;
    }
.end annotation


# static fields
.field public static isScreenRotated:Z

.field private static mDPM:Landroid/app/admin/DevicePolicyManager;

.field private static mPreviousStage:Ljava/lang/String;


# instance fields
.field private mOnKeyBackListener:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;


# direct methods
.method static synthetic -get0()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->isScreenRotated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getPasswordQuality()I
    .locals 1

    const/high16 v0, 0x50000

    return v0
.end method

.method public static getShortPasswordLength()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v1, ":android:show_fragment"

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "BiometricsBackupPassword"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "BiometricsBackupPassword"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "previousStage"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    const-string/jumbo v2, "BiometricsBackupPassword"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[mPreviousStage] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->setFinishOnTouchOutside(Z)V

    :cond_0
    const v2, 0x7f121024

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    sput-object v2, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "BiometricsBackupPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mOnKeyBackListener:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;->onKeyBack()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "BiometricsBackupPassword"

    const-string/jumbo v1, "onKeyBack() is TRUE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    return v3
.end method

.method setOnKeyBackListener(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword;->mOnKeyBackListener:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$onKeyBackListener;

    :cond_0
    return-void
.end method
