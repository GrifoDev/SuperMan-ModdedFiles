.class public Lcom/samsung/android/settings/KnoxConfirmLockHelper;
.super Ljava/lang/Object;
.source "KnoxConfirmLockHelper.java"


# static fields
.field private static maxAttempts:I

.field private static totalAttempts:I


# instance fields
.field private lockPolicy:I

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSFMaxAttempts:Z

.field private maximumFailedPasswordsForDisable:I

.field private maximumFailedPasswordsForWipe:I

.field private pInfo:Landroid/content/pm/UserInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sput v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->pInfo:Landroid/content/pm/UserInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->getLockAttemptPolicy()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDialogTheme:I

    return-void
.end method

.method private ShowDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDialogTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private getLockAttemptPolicy()V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x3e8

    const/16 v7, 0x3e9

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    iput-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "enterprise_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBasePasswordPolicy()Landroid/app/enterprise/BasePasswordPolicy;

    move-result-object v0

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getMaximumFailedPasswordsForDeviceDisable()I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    invoke-virtual {v0, v9}, Landroid/app/enterprise/BasePasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x14

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v5

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    return-void

    :cond_0
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v5, :cond_1

    const/16 v5, 0xa

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    const/16 v5, 0x3ea

    iput v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gtz v5, :cond_3

    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v8, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    iget v6, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    if-gt v5, v6, :cond_4

    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForWipe:I

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v8, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0

    :cond_4
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maximumFailedPasswordsForDisable:I

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    iput v7, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    goto :goto_0
.end method

.method private sendAdminLockEvent(I)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "android.intent.extra.user_handle"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "knox.container.proxy.POLICY_ADMIN_LOCK"

    invoke-static {v1, v0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private setSFMaxAttempts(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    return-void
.end method


# virtual methods
.method public checkNumberOfAttempts()I
    .locals 12

    const/4 v11, 0x2

    const/16 v7, 0x3e8

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v5

    sput v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int v3, v5, v6

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->setSFMaxAttempts(Z)V

    sget v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    if-lt v5, v6, :cond_6

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5, v8}, Lcom/samsung/android/knox/SemPersonaManager;->launchPersonaHome(I)Z

    :cond_0
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v5, v7, :cond_3

    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "checkAttempts(): failedPasswordAttempts max than maximumFailedPasswordsForWipe!!: WIPING(Removing container)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v5, "KnoxConfirmLockHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " remove container: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->removeContainer(I)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v3

    :cond_2
    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "UNKNOWN ERROR"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "Exception when remove container"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :sswitch_0
    :try_start_1
    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "ERROR_INTERNAL_ERROR"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "ERROR_DOES_NOT_EXIST"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "ERROR_NOT_CONTAINER_OWNER"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_5

    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "checkAttempts(): failedPasswordAttempts max than maximumFailedPasswordsForDisable!!: DISABLING container"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->setSFMaxAttempts(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "trust"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/TrustManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5, v9}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "Triggering lock !"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->sendAdminLockEvent(I)V

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_1

    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "checkAttempts(): failedPasswordAttempts is more than 10 and no policy set Container will get locked. And only admin can remove the lock"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_1

    const-string/jumbo v5, "KnoxConfirmLockHelper"

    const-string/jumbo v6, "Triggering admin lock !"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->sendAdminLockEvent(I)V

    goto/16 :goto_0

    :cond_6
    sget v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->pInfo:Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->pInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v5, v7, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f120dc1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v10, v5}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f120dbd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v10, v5}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget v5, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v6, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v5, v6

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->pInfo:Landroid/content/pm/UserInfo;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->pInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->lockPolicy:I

    if-ne v5, v7, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f120dc3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v10, v5}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v6, 0x7f120dbf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    sget v7, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v8, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v10, v5}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->ShowDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x4b3 -> :sswitch_2
        -0x4b2 -> :sswitch_1
        -0x3f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public isSFAttemptDefaultFailed()Z
    .locals 2

    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSFMaxAttempts()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mSFMaxAttempts:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public resetNumberOfAttempts()V
    .locals 2

    const-string/jumbo v0, "KnoxConfirmLockHelper"

    const-string/jumbo v1, "resetting totalAttempts to 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    return-void
.end method

.method public setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, "KnoxConfirmLockHelper"

    const-string/jumbo v1, "textview is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getCurrentFailedPasswordAttempts()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    :cond_1
    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    return-void

    :cond_2
    sget v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v1, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v0, v1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f120e9c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f120e9d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    sget v2, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->maxAttempts:I

    sget v3, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->totalAttempts:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
