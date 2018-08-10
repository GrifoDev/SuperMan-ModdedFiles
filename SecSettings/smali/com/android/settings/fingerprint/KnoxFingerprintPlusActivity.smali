.class public Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;
.super Landroid/preference/PreferenceActivity;
.source "KnoxFingerprintPlusActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;
    }
.end annotation


# static fields
.field private static mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public static mIsFromRegisterFingerPrintPlus:Z

.field private static mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field public static mUserId:I

.field private static mUserNavigated:Z

.field public static prefKey:Ljava/lang/String;


# instance fields
.field private final ACTIVITY_NAME:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    sget-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserNavigated:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mIsFromRegisterFingerPrintPlus:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserNavigated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string/jumbo v0, "KnoxFingerprintPlusActivity"

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->ACTIVITY_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    const-string/jumbo v0, "KnoxFingerprintPlusActivity"

    const-string/jumbo v1, "onBackPressed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserNavigated:Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "KnoxFingerprintPlusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : onCreate(Bundle savedInstanceState)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;

    invoke-direct {v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity$KnoxFingerprintPlusFragment;-><init>()V

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b9b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string/jumbo v0, "fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const-string/jumbo v0, "persona"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserId:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->prefKey:Ljava/lang/String;

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    sget-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserNavigated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->mUserNavigated:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v0, "KnoxFingerprintPlusActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusActivity;->ACTIVITY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
