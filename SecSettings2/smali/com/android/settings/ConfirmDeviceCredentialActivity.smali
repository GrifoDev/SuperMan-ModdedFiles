.class public Lcom/android/settings/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-class v2, Lcom/android/settings/ConfirmDeviceCredentialActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object v0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private isFingerprintLockType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    instance-of v0, p0, Lcom/android/settings/ConfirmDeviceCredentialActivity$InternalActivity;

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v1, "android.app.extra.TITLE"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v8

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {v1, v8}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v10

    if-nez v3, :cond_4

    if-eqz v10, :cond_4

    invoke-direct {p0, v8}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v12, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz v10, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v12, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result v11

    :goto_2
    if-nez v11, :cond_3

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No pattern, password or PIN set."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->isFingerprintLockType()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->setResult(I)V

    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->finish()V

    return-void

    :catch_0
    move-exception v13

    sget-object v1, Lcom/android/settings/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid intent extra"

    invoke-static {v1, v2, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    if-nez v3, :cond_1

    const v1, 0x7f0b08e4

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result v11

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmDeviceCredentialActivity;->setResult(I)V

    goto :goto_3
.end method
