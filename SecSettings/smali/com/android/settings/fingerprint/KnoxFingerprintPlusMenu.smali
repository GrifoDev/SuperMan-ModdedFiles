.class public Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
    }
.end annotation


# static fields
.field private static mSetResult:I

.field private static mUserNavigated:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mSetResult:I

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mSetResult:I

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mSetResult:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 4

    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v2, ":settings:show_fragment"

    const-class v3, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:hide_drawer"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120786

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    sget-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x63

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu;->mUserNavigated:Z

    goto :goto_0
.end method
