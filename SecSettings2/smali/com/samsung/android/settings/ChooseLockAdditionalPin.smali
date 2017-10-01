.class public Lcom/samsung/android/settings/ChooseLockAdditionalPin;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockAdditionalPin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;
    }
.end annotation


# static fields
.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mForAppLockBackupKey:Z

.field private static mForFingerprint:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsFromKnoxFinger:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get4()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForPrivateModeBackupKey:Z

    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    sput-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    sput-boolean v0, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z

    sput-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/samsung/android/settings/ChooseLockAdditionalPin$ChooseLockAdditionalPinFragment;

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

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_personal"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "from_applock"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "forPrivateBackupKey"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForPrivateModeBackupKey:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "forAppLockBackupKey"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    :goto_0
    sput-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForAppLockBackupKey:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "isFromKnoxFinger"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mIsFromKnoxFinger:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "for_fingerprint"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mForFingerprint:Z

    const-string/jumbo v1, "ChooseLockAdditionalPin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFromAppLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    sget-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromPersonalPage:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mFromAppLock:Z

    if-eqz v1, :cond_3

    :cond_1
    const v1, 0x7f0b14b8

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->setTitle(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    sput-object v1, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0add

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getText(I)Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockAdditionalPin;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    return-void
.end method
