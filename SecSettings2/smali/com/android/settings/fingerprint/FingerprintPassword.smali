.class public Lcom/android/settings/fingerprint/FingerprintPassword;
.super Landroid/preference/PreferenceActivity;
.source "FingerprintPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;,
        Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;
    }
.end annotation


# static fields
.field public static isScreenRotated:Z

.field private static mDPM:Landroid/app/admin/DevicePolicyManager;

.field private static mFingerpintOwnName:Ljava/lang/String;

.field private static mFingerprintIndex:I

.field private static mFingerprintPreviousStage:Ljava/lang/String;

.field private static mIsSetupWizard:Z


# instance fields
.field private mOnKeyBackListener:Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;


# direct methods
.method static synthetic -get0()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z

    return v0
.end method

.method static synthetic -set0(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    sput-object p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    sput v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z

    sput-boolean v1, Lcom/android/settings/fingerprint/FingerprintPassword;->isScreenRotated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static getFingerPasswordQuality()I
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

    const-class v2, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

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

    const-class v0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "FingerprintPassword"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    const-string/jumbo v3, "previousStage"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    const-string/jumbo v3, "fingerprint_setup_wizard"

    sget-object v4, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mIsSetupWizard:Z

    const-string/jumbo v3, "fingerIndex"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    const-string/jumbo v3, "ownName"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->setFinishOnTouchOutside(Z)V

    :cond_0
    const v3, 0x7f0b138c

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2, v2}, Lcom/android/settings/fingerprint/FingerprintPassword;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    sput-object v3, Lcom/android/settings/fingerprint/FingerprintPassword;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FingerprintPassword"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[mFingerprintPreviousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [mFingerprintIndex] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerprintIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [mFingerpintOwnName] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/settings/fingerprint/FingerprintPassword;->mFingerpintOwnName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "FingerPrintPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyDown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mOnKeyBackListener:Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;->onKeyBack()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FingerPrintPassword"

    const-string/jumbo v1, "onKeyBack() is TRUE"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintPassword;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintPassword;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    return v3
.end method

.method setOnKeyBackListener(Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword;->mOnKeyBackListener:Lcom/android/settings/fingerprint/FingerprintPassword$onKeyBackListener;

    :cond_0
    return-void
.end method
