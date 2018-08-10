.class public Lcom/android/settings/KnoxSecuritySettings;
.super Landroid/app/Activity;
.source "KnoxSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static enableOneLock:Z


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProfileChallengeUserId:I


# direct methods
.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/KnoxSecuritySettings;->enableOneLock:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/KnoxSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/KnoxSecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->launchConfirmProfileLockForUnifyUncompliantLocks()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    return-void
.end method

.method private chooseLockType(Z)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "confirm_credentials"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x84

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/KnoxSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "android.intent.extra.USER_ID"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.USER"

    new-instance v3, Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v2, 0x83

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/KnoxSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isCallingFromKnox()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.containeragent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    const v1, 0x7f120f11

    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v2, 0x80

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->launchConfirmProfileLockForUnification()V

    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    const v1, 0x7f120f12

    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    iget v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unifyLocksForUCM()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unifyLocks()V

    goto :goto_0
.end method

.method private launchConfirmProfileLockForUnifyUncompliantLocks()V
    .locals 5

    const v1, 0x7f120f12

    invoke-virtual {p0, v1}, Lcom/android/settings/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    iget v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x85

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unifyUncompliantLocks()V

    :cond_0
    return-void
.end method

.method private resetCurrentLockStatus(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricLockscreen(III)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    goto :goto_0
.end method

.method private unUnifyLocks()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/KnoxSecuritySettings;->chooseLockType(Z)V

    return-void
.end method

.method private unifyLocks()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/settings/KnoxSecuritySettings;->resetCurrentLockStatus(Z)V

    iget-object v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    iput-object v6, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyLocksForUCM()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "SecuritySettings"

    const-string/jumbo v1, "unifyLocksForUCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    return-void
.end method

.method private unifyUncompliantLocks()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enable_one_lock_ongoing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0, v3}, Lcom/android/settings/KnoxSecuritySettings;->resetCurrentLockStatus(Z)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    sget-boolean v0, Lcom/android/settings/KnoxSecuritySettings;->enableOneLock:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lcom/android/settings/KnoxSecuritySettings;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 v5, 0x83

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult Result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Request code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_8

    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unUnifyLocks()V

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x80

    if-ne p1, v0, :cond_2

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->launchConfirmProfileLockForUnification()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x81

    if-ne p1, v0, :cond_4

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unifyLocksForUCM()V

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxSecuritySettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->finish()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unifyLocks()V

    goto :goto_1

    :cond_4
    if-eq p1, v5, :cond_5

    const/16 v0, 0x84

    if-ne p1, v0, :cond_7

    :cond_5
    if-ne p1, v5, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "enable_one_lock_ongoing"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/settings/KnoxSecuritySettings;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->finish()V

    goto :goto_0

    :cond_7
    const/16 v0, 0x85

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/KnoxSecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unifyUncompliantLocks()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->isCallingFromKnox()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->finish()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.USER_ID"

    const/16 v7, -0x2710

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "enableOneLock"

    invoke-virtual {v5, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/settings/KnoxSecuritySettings;->enableOneLock:Z

    new-instance v5, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v5, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/android/settings/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-boolean v5, Lcom/android/settings/KnoxSecuritySettings;->enableOneLock:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    const/high16 v6, 0x10000

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/settings/KnoxSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/KnoxSecuritySettings;->mProfileChallengeUserId:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->isKnoxPasswordPolicyApplied(Landroid/content/Context;I)Z

    move-result v5

    xor-int/lit8 v0, v5, 0x1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v4

    :cond_1
    invoke-static {v0}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "onelock_dialog"

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/settings/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    if-eqz v5, :cond_2

    const v5, 0x7f120f11

    invoke-virtual {p0, v5}, Lcom/android/settings/KnoxSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/KnoxSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v6, 0x82

    invoke-virtual {v5, v6, v2, v4, v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/KnoxSecuritySettings;->unUnifyLocks()V

    invoke-virtual {p0}, Lcom/android/settings/KnoxSecuritySettings;->finish()V

    goto :goto_1
.end method
