.class public Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;
.super Landroid/support/v4/app/FragmentActivity;
.source "RegisterKnoxFingerPlusInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;
    }
.end annotation


# static fields
.field private static mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private static mUserNavigated:Z


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mUserNavigated:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mUserNavigated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const-string/jumbo v0, "RegisterKnoxFingerPlusInfo"

    iput-object v0, p0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mUserNavigated:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo$RegisterFingerPlusInfoFragment;-><init>()V

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const-string/jumbo v0, "RegisterKnoxFingerPlusInfo"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mUserNavigated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/RegisterKnoxFingerPlusInfo;->mUserNavigated:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    return-void
.end method
