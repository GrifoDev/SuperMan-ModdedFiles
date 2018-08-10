.class public Lcom/android/systemui/util/ResetDeviceUtils;
.super Ljava/lang/Object;
.source "ResetDeviceUtils.java"


# static fields
.field private static sResetDeviceUtils:Lcom/android/systemui/util/ResetDeviceUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v0, "ResetDeviceUtils"

    const-string/jumbo v1, "ResetDeviceUtils()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method private findSDCard()Landroid/os/storage/StorageVolume;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "ResetDeviceUtils"

    const-string/jumbo v4, "findSDCard ()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ResetDeviceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findSDCard ( storageVolumes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v2, v0

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "ResetDeviceUtils"

    const-string/jumbo v4, "findSDCard ( null )"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/util/ResetDeviceUtils;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/systemui/util/ResetDeviceUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/util/ResetDeviceUtils;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/ResetDeviceUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/systemui/util/ResetDeviceUtils;

    :cond_0
    sget-object v0, Lcom/android/systemui/util/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/systemui/util/ResetDeviceUtils;

    return-object v0
.end method

.method private removeSubUser(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    iget-object v2, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->switchUser(I)Z

    iget-object v2, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "ResetDeviceUtils"

    const-string/jumbo v3, "KeyguardHostView - exception in removeSubuser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public updateProgressDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public wipeOut(I)V
    .locals 4

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/util/ResetDeviceUtils;->wipeOut(II)V

    return-void

    :cond_1
    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0
.end method

.method public wipeOut(II)V
    .locals 13

    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    const-string/jumbo v8, "ResetDeviceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wipeOut() attemptsCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " userType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    if-ne p2, v11, :cond_5

    iget-object v8, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "enterprise_policy_new"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isFactoryResetAllowed()Z

    move-result v4

    const-string/jumbo v8, "ResetDeviceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isFactoryResetAllowed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_0

    const-string/jumbo v8, "ResetDeviceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Factory Reset is not allowed isFactoryResetAllowed="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz v6, :cond_1

    const-string/jumbo v8, "no_factory_reset"

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "ResetDeviceUtils"

    const-string/jumbo v9, "Factory Reset is not allowed DISALLOW_FACTORY_RESET"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded()Z

    move-result v7

    const-string/jumbo v8, "ResetDeviceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wipeExcludeExternalStorage = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/util/ResetDeviceUtils;->findSDCard()Landroid/os/storage/StorageVolume;

    move-result-object v5

    const v8, 0x7f12049a

    invoke-virtual {p0, v8}, Lcom/android/systemui/util/ResetDeviceUtils;->updateProgressDialog(I)V

    const/4 v0, 0x0

    if-eqz v5, :cond_3

    xor-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_3

    const-string/jumbo v8, "ResetDeviceUtils"

    const-string/jumbo v9, "wipeOut ACTION_FACTORY_RESET/EXTRA_WIPE_EXTERNAL_STORAGE=true)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.extra.REASON"

    const-string/jumbo v9, "MasterClearConfirm_ResetDeviceUtils"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const/high16 v8, 0x1000000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-boolean v8, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_FACTORY_RESET_WITHOUT_UI:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "ResetDeviceUtils"

    const-string/jumbo v9, "wipeOut ( send SEC_FACTORY_RESET_WITHOUT_FACTORY_UI )"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "com.samsung.intent.action.SEC_FACTORY_RESET_WITHOUT_FACTORY_UI"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "android.intent.extra.REASON"

    const-string/jumbo v9, "MasterClearConfirm_ResetDeviceUtils"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_4
    const-string/jumbo v8, "ResetDeviceUtils"

    const-string/jumbo v9, "wipeOut ( send ACTION_FACTORY_RESET )"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.extra.REASON"

    const-string/jumbo v9, "MasterClearConfirm_ResetDeviceUtils"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_5
    const-string/jumbo v8, "ResetDeviceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "wipeOut() removeSubUser userType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v8, 0x2

    if-ne p2, v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/util/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/systemui/util/ResetDeviceUtils;->removeSubUser(I)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/systemui/util/ResetDeviceUtils;->removeSubUser(I)V

    goto :goto_1
.end method
