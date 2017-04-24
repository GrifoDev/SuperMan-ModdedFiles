.class public Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;
.super Landroid/app/Activity;
.source "ChooseLockEnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;
    }
.end annotation


# instance fields
.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEnforceWithoutCancel:Z

.field private mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

.field private mIsPasswordChangeEnforced:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOldEnterprisePassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field private mRequestedQuality:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->handleAuthFail(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEnforceWithoutCancel:Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    iput v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    iput-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    const/high16 v0, 0x60000

    iput v0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    return-void
.end method

.method private handleAuthFail(I)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleAuthFail:error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v9, "isChangeRequested"

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabledInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getPasswordChangeTimeout()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :cond_0
    :goto_0
    if-lt v4, v12, :cond_1

    if-gtz v5, :cond_6

    if-ne v4, v12, :cond_6

    const/4 v3, 0x1

    :goto_1
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pwdChangeEnforceStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pwdChangeTimeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enforceWithoutCancel: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-direct {p0, v7, v5}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->scheduleNextPwdChange(II)V

    :cond_1
    iget-boolean v7, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v7, :cond_4

    const/16 v7, -0xf

    if-eq p1, v7, :cond_2

    const/16 v7, -0x10

    if-ne p1, v7, :cond_3

    :cond_2
    const/16 v6, 0x6b

    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    :cond_4
    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    return-void

    :cond_5
    :try_start_1
    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    const-string/jumbo v8, "ekm is null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v7, "ChooseLockEnterpriseIdentity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SecurityException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x2

    if-lt v4, v7, :cond_7

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private handleAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x60000

    invoke-virtual {v3, p2, v5, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "db_lockscreen_is_smart_lock"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    const/high16 v5, 0x10000000

    invoke-static {v3, v7, v0, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v5, "setPwdChangeRequested"

    invoke-static {v3, v4, v5, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendIntentToKnoxKeyguard(I)V

    :cond_0
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->finish()V

    return-void
.end method

.method private scheduleNextPwdChange(II)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p2

    const-wide/32 v8, 0xea60

    mul-long/2addr v6, v8

    add-long v2, v4, v6

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v6, 0x0

    const/high16 v7, 0x10000000

    invoke-static {v4, v6, v0, v7, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "content://com.sec.knox.provider/PasswordPolicy2"

    const-string/jumbo v6, "setPwdChangeRequested"

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/settings/Utils;->setEnterprisePolicyInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v4, "ChooseLockEnterpriseIdentity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduleNextPwdChange: for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendIntentToKnoxKeyguard(I)V
    .locals 4

    const-string/jumbo v1, "ChooseLockEnterpriseIdentity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntentToKnoxKeyguard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    iget-boolean v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b087a

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b0879

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b087c

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f0b087b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b087d

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const v8, 0x7f0b087e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_5
    const/4 v8, 0x0

    return-object v8

    :cond_6
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v8, v9, :cond_7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b11b4

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v8, v9, :cond_8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b11b7

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_8
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_e

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x20

    if-lt v0, v8, :cond_9

    const/16 v8, 0x7f

    if-le v0, v8, :cond_a

    :cond_9
    const v8, 0x7f0b11bb

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_a
    const/16 v8, 0x30

    if-lt v0, v8, :cond_b

    const/16 v8, 0x39

    if-gt v0, v8, :cond_b

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    const/16 v8, 0x41

    if-lt v0, v8, :cond_c

    const/16 v8, 0x5a

    if-gt v0, v8, :cond_c

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_c
    const/16 v8, 0x61

    if-lt v0, v8, :cond_d

    const/16 v8, 0x7a

    if-gt v0, v8, :cond_d

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_d
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_e
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    if-ge v2, v8, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    const v10, 0x7f130007

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_f
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    if-ge v5, v8, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    const v10, 0x7f13000a

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_10
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    if-ge v3, v8, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    const v10, 0x7f130008

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_11
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    if-ge v7, v8, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    const v10, 0x7f130009

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_12
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    if-ge v6, v8, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    const v10, 0x7f13000b

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_13
    iget v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    if-ge v4, v8, :cond_14

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    const v10, 0x7f13000c

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_14
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_16

    :cond_15
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenNumericSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b087a

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_16
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v8

    if-nez v8, :cond_15

    :cond_17
    const/4 v8, 0x0

    return-object v8

    :cond_18
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenCharacterSequence(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b0879

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_19
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    invoke-virtual {v8, p1, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenStringDistance(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b087c

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_1a
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasForbiddenData(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const v8, 0x7f0b087b

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_1b
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->hasMaxRepeatedCharacters(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const v9, 0x7f0b087d

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_1c
    iget-object v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v8, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_17

    const v8, 0x7f0b087e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getString(I)Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v11, 0x10

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mGenericSSO:Lcom/samsung/android/knox/sso/enterpriseid/GenericSSO;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string/jumbo v5, "enterprise.password_old"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldEnterprisePassword:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v5, "com.samsung.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iput-boolean v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mIsPasswordChangeEnforced:Z

    :cond_0
    const-string/jumbo v5, "lockscreen.password_type"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    const-string/jumbo v5, "lockscreen.password_min"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    const-string/jumbo v5, "lockscreen.password_max"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    const-string/jumbo v5, "lockscreen.password_min_letters"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLetters:I

    const-string/jumbo v5, "lockscreen.password_min_uppercase"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinUpperCase:I

    const-string/jumbo v5, "lockscreen.password_min_lowercase"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLowerCase:I

    const-string/jumbo v5, "lockscreen.password_min_numeric"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNumeric:I

    const-string/jumbo v5, "lockscreen.password_min_symbols"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinSymbols:I

    const-string/jumbo v5, "lockscreen.password_min_nonletter"

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinNonLetter:I

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mRequestedQuality:I

    const/high16 v6, 0x20000

    if-ne v5, v6, :cond_7

    iput v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    :cond_1
    :goto_0
    const-string/jumbo v5, "lockscreen.password_old"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mOldPassword:Ljava/lang/String;

    const/4 v0, 0x4

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-lt v5, v8, :cond_8

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-ge v5, v6, :cond_8

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "enterprise_policy_new"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPwdPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    invoke-virtual {v5, v9}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    iput-boolean v9, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->hasPwdPatternRestriction:Z

    :cond_4
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v5, v8, :cond_5

    iput v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    :cond_5
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v5, v11, :cond_6

    iput v11, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    :cond_6
    new-instance v5, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;

    invoke-direct {v5, p0, v7}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;-><init>(Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;)V

    new-array v6, v9, [Ljava/lang/String;

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity$PerformUserAuthTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_7
    const/4 v5, 0x6

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_0

    :cond_8
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    if-ge v5, v8, :cond_9

    iput v8, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_1

    :cond_9
    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    iget v6, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    if-le v5, v6, :cond_2

    iget v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMaxLength:I

    iput v5, p0, Lcom/samsung/android/settings/ChooseLockEnterpriseIdentity;->mPasswordMinLength:I

    goto :goto_1
.end method
