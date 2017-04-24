.class public Lcom/samsung/android/service/SecurityManager/SecurityJob;
.super Ljava/lang/Object;
.source "SecurityJob.java"


# static fields
.field public static final CMD_DISABLE:Ljava/lang/String; = "DISABLE"

.field public static final CMD_ENABLE:Ljava/lang/String; = "ENABLE"

.field public static final CMD_START_SERVICE:Ljava/lang/String; = "START_SERVICE"

.field private static final ENFORCE_SECUREBOOT_OFF:I = 0x0

.field private static final ENFORCE_SECUREBOOT_ON:I = 0x1

.field private static final MDPP_DISABLED:I = 0x8

.field private static final MDPP_EMPTY:I = 0x10

.field private static final MDPP_ENABLED:I = 0x1

.field private static final MDPP_ENFORCING:I = 0x2

.field private static final MDPP_READY:I = 0x4

.field private static final PROPERTY_MDPP:Ljava/lang/String; = "security.mdpp"

.field private static final PROPERTY_MDPP_DISABLED:Ljava/lang/String; = "Disabled"

.field private static final PROPERTY_MDPP_EMPTY:Ljava/lang/String; = "None"

.field private static final PROPERTY_MDPP_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final PROPERTY_MDPP_ENFORCING:Ljava/lang/String; = "Enforcing"

.field private static final PROPERTY_MDPP_READY:Ljava/lang/String; = "Ready"

.field private static final PROPERTY_MDPP_RELEASE:Ljava/lang/String; = "ro.security.mdpp.release"

.field public static final PROPERTY_MDPP_RESULT:Ljava/lang/String; = "security.mdpp.result"

.field private static final PROPERTY_MDPP_UX:Ljava/lang/String; = "ro.security.mdpp.ux"

.field private static final PROPERTY_MDPP_VER:Ljava/lang/String; = "ro.security.mdpp.ver"

.field private static final SEC_MANAGER_ERR_BORINGSSL_SELFTEST_FAIL:I = -0x14

.field private static final SEC_MANAGER_ERR_CCMODE_ALREADY_ENABLED:I = -0xe

.field private static final SEC_MANAGER_ERR_CCMODE_ALREADY_READY:I = -0xf

.field private static final SEC_MANAGER_ERR_CCMODE_DISABLED:I = -0xb

.field private static final SEC_MANAGER_ERR_CCMODE_ELSE:I = -0xd

.field private static final SEC_MANAGER_ERR_CCMODE_EMPTY:I = -0xc

.field private static final SEC_MANAGER_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field private static final SEC_MANAGER_ERR_DIRECTION_LOCK_ON:I = 0x1

.field private static final SEC_MANAGER_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field private static final SEC_MANAGER_ERR_GET_CCMODE_FLAG_FAIL:I = -0x1c

.field private static final SEC_MANAGER_ERR_GET_FIPS_STATUS_FAIL:I = -0x23

.field private static final SEC_MANAGER_ERR_ICD_FILE_NOT_EXIST:I = -0x16

.field private static final SEC_MANAGER_ERR_ICD_RESULT_INVALID:I = -0x17

.field private static final SEC_MANAGER_ERR_INTEGRITY_CHECK_FAIL:I = -0x15

.field private static final SEC_MANAGER_ERR_INVALID_INPUT:I = -0x1

.field private static final SEC_MANAGER_ERR_LOCK_FINGER_PRINT_SET:I = -0x27

.field public static final SEC_MANAGER_ERR_NULL_POINTER:I = -0x2

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_DEFAULT:I = 0x100

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_EXTERNAL_FAST:I = 0x40

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_FAST:I = 0x200

.field private static final SEC_MANAGER_ERR_ODE_ENCRYPED_INTERNAL:I = 0x80

.field private static final SEC_MANAGER_ERR_ODE_GETTING_STATUS_FAIL:I = 0x400

.field private static final SEC_MANAGER_ERR_ODE_NOT_SET:I = 0x800

.field private static final SEC_MANAGER_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = 0x2

.field private static final SEC_MANAGER_ERR_PASSWORD_HISTORY_LENGTH_SET:I = 0x10

.field private static final SEC_MANAGER_ERR_RECOVERY_PASSWORD_POLICY_SET:I = 0x8

.field private static final SEC_MANAGER_ERR_REVOCATION_CHECK_POLICY_SET:I = 0x20

.field private static final SEC_MANAGER_ERR_SCREENLOCK_NOT_SET:I = 0x4

.field private static final SEC_MANAGER_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field private static final SEC_MANAGER_ERR_SYSTEMPROPERTY_EXCEPTION:I = -0x3

.field public static final SEC_MANAGER_OK:I


# instance fields
.field private mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLPU:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-direct {v0}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    iput-object p1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    return-void
.end method

.method private checkCCModeOnDevice()I
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getCCModeFlag()I

    move-result v0

    const-string/jumbo v2, "check the current status #1 ..."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private checkDevicePolicy()I
    .locals 10

    const/4 v7, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_DIRECTION_LOCK"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockDirectionEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "DIRECTION LOCK ON"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    const/4 v7, 0x1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getMaximumFailedPasswordsForWipe()I

    move-result v5

    if-lez v5, :cond_1

    const/16 v8, 0xa

    if-le v5, v8, :cond_3

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. maximumFailedPasswordsForWipe = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit8 v7, v7, 0x2

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isPasswordEnabled()I

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "Failed. the screen is not locked by password"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit8 v7, v7, 0x4

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getPasswordRecoverable()I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. Recovery password policy has been set. isPasswordRecoverable = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit8 v7, v7, 0x8

    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getPasswordHistoryLength()I

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v8, "Failed. PasswordHistoryLength has been set."

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit8 v7, v7, 0x10

    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isRevocationCheckEnabled()I

    move-result v4

    if-eqz v4, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. RevocationCheckPolicy has not been set yet. isRevocationCheckEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit8 v7, v7, 0x20

    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getSamsungEncryptionStatusForCC()I

    move-result v0

    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isExternalSDRemovable()Z

    move-result v1

    packed-switch v0, :pswitch_data_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit16 v7, v7, 0x800

    :goto_6
    return v7

    :cond_2
    const-string/jumbo v8, "DIRECTION LOCK OFF"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->i(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v8, "MaxPassword check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v8, "ScreenLock check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v8, "RecoveryPassword check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    const-string/jumbo v8, "PasswordHistoryLength check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    const-string/jumbo v8, "RevocationCheckPolicy check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_5

    :pswitch_0
    const-string/jumbo v8, "ENCRYPTED BOTH"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->isPasswordEnabled()I

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit8 v7, v7, 0x40

    goto :goto_6

    :cond_8
    const-string/jumbo v8, "ODE check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_6

    :pswitch_1
    const-string/jumbo v8, "ENCRYPTED INTERNAL"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    if-eqz v1, :cond_a

    iget-object v8, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "SDcard Policy check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit16 v7, v7, 0x80

    goto/16 :goto_6

    :cond_a
    const-string/jumbo v8, "ODE check SUCCESS"

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit16 v7, v7, 0x100

    goto/16 :goto_6

    :pswitch_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit16 v7, v7, 0x200

    goto/16 :goto_6

    :pswitch_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed. ODE check = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    or-int/lit16 v7, v7, 0x400

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkICD()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getTamperFlag()I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "Failed to get icd tamper"

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0x16

    return v1

    :cond_0
    if-lez v0, :cond_1

    const-string/jumbo v1, "Failed. icd tamper is set"

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0x17

    return v1

    :cond_1
    return v0
.end method

.method private enforceSB(Z)I
    .locals 5

    const/16 v4, -0x18

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->setSBFlagOn()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setSBFlagOn() res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getSBFlag()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->setSBFlagOff()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setSBFlagOff() res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v2}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getSBFlag()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. SBFlag has yet to set. current flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v4

    :cond_3
    return v0
.end method

.method private getMaximumFailedPasswordsForWipe()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordHistoryLength()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getPasswordRecoverable()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getSamsungEncryptionStatusForCC()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getSamsungEncryptionStatusForCC(Landroid/content/ComponentName;)I

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "DPM is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 14

    const-string/jumbo v10, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    and-int/lit8 v11, p1, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v11, p1, 0x2

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const/4 v6, 0x1

    :cond_1
    and-int/lit8 v11, p1, 0x4

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    const/4 v7, 0x1

    :cond_2
    and-int/lit8 v11, p1, 0x8

    const/16 v12, 0x8

    if-ne v11, v12, :cond_3

    const/4 v2, 0x1

    :cond_3
    and-int/lit8 v11, p1, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_4

    const/4 v1, 0x1

    :cond_4
    and-int/lit8 v11, p1, 0x20

    const/16 v12, 0x20

    if-ne v11, v12, :cond_5

    const/4 v8, 0x1

    :cond_5
    and-int/lit8 v11, p1, 0x40

    const/16 v12, 0x40

    if-ne v11, v12, :cond_6

    const/4 v5, 0x1

    :cond_6
    and-int/lit16 v11, p1, 0x80

    const/16 v12, 0x80

    if-ne v11, v12, :cond_7

    const/4 v5, 0x1

    :cond_7
    and-int/lit16 v11, p1, 0x100

    const/16 v12, 0x100

    if-ne v11, v12, :cond_8

    const/4 v4, 0x1

    :cond_8
    and-int/lit16 v11, p1, 0x200

    const/16 v12, 0x200

    if-ne v11, v12, :cond_9

    const/4 v4, 0x1

    :cond_9
    and-int/lit16 v11, p1, 0x400

    const/16 v12, 0x400

    if-ne v11, v12, :cond_a

    const/4 v5, 0x1

    const/4 v4, 0x1

    :cond_a
    and-int/lit16 v11, p1, 0x800

    const/16 v12, 0x800

    if-ne v11, v12, :cond_b

    const/4 v5, 0x1

    const/4 v4, 0x1

    :cond_b
    iget-object v11, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v5, 0x1

    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a26

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v9, ""

    const-string/jumbo v3, ""

    if-nez v6, :cond_d

    if-nez v7, :cond_d

    if-nez v8, :cond_d

    if-nez v4, :cond_d

    if-eqz v5, :cond_16

    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a27

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v6, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a29

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v7, :cond_e

    if-nez v8, :cond_e

    if-nez v4, :cond_e

    if-eqz v5, :cond_f

    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_f
    if-eqz v7, :cond_11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a2a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v8, :cond_10

    if-nez v4, :cond_10

    if-eqz v5, :cond_11

    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_11
    if-eqz v8, :cond_13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a2d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v4, :cond_12

    if-eqz v5, :cond_13

    :cond_12
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_13
    if-eqz v4, :cond_14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a2f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-eqz v5, :cond_14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_14
    if-eqz v5, :cond_15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a2e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_15
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_16
    if-nez v2, :cond_17

    if-nez v1, :cond_17

    if-eqz v0, :cond_1d

    :cond_17
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a28

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_19

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a2b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_18

    if-eqz v0, :cond_19

    :cond_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_19
    if-eqz v1, :cond_1a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a2c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_1a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1a
    if-eqz v0, :cond_1b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1040a30

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1b
    const-string/jumbo v11, ""

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1d
    return-object v10
.end method

.method private isExternalSDRemovable()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SDCARD SLOT Support"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "SDCARD SLOT None"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isPasswordEnabled()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mLPU:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x50000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "LPU is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private isRevocationCheckEnabled()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mCP:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "certPolicy is null"

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/4 v0, -0x2

    return v0
.end method

.method private logForAudit(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityManagerService"

    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private performCCModePreProcess()I
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkICD()I

    move-result v6

    if-eqz v6, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. checkICD = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Integrity verification failed. checkICD = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x15

    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/service/SecurityManager/FipsStatus;->getFipsStatus()I

    move-result v6

    if-eqz v6, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. FipsStatus = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Getting fips status failed. res = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x23

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v1}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->FIPS_Openssl_SelfTest()I

    move-result v6

    if-eqz v6, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. Boringssl self test = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string/jumbo v4, "SecurityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Boringssl self-test failed. res = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x14

    return v0

    :cond_2
    const-string/jumbo v0, "Pre Process OK."

    invoke-static {v0}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    return v6
.end method

.method private setCCMode(I)I
    .locals 9

    const/4 v8, -0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "None"

    sparse-switch p1, :sswitch_data_0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "None"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setCCMode default... status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, v5, v0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setFlags(ZI)I

    move-result v4

    if-eqz v4, :cond_0

    return v4

    :sswitch_0
    const/4 v5, 0x1

    const/4 v0, 0x1

    const-string/jumbo v1, "Enabled"

    goto :goto_0

    :sswitch_1
    const/4 v5, 0x1

    const/4 v0, 0x2

    const-string/jumbo v1, "Enforcing"

    goto :goto_0

    :sswitch_2
    const/4 v5, 0x0

    const/4 v0, 0x4

    const-string/jumbo v1, "Ready"

    goto :goto_0

    :sswitch_3
    const/4 v5, 0x1

    const/16 v0, 0x8

    const-string/jumbo v1, "Disabled"

    goto :goto_0

    :sswitch_4
    const/4 v5, 0x0

    const/16 v0, 0x10

    const-string/jumbo v1, "None"

    goto :goto_0

    :cond_0
    :try_start_0
    const-string/jumbo v6, "security.mdpp"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "security.mdpp"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "CC Mode status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->logForAudit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "security.mdpp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "security.mdpp"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    return v4

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SystemProperties Exception Occurs"

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v8

    :catch_1
    move-exception v3

    const-string/jumbo v6, "SystemProperties RuntimeException Occurs"

    invoke-static {v6}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v8

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private setCCModeFlag(I)I
    .locals 6

    const/16 v5, -0x1b

    const/4 v2, 0x0

    move v0, p1

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v3, p1}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->setCCModeFlag(I)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. setCCModeFlag() res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v5

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v3}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->getCCModeFlag()I

    move-result v1

    if-eq v1, p1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v5

    :cond_1
    return v2
.end method

.method private setFlags(ZI)I
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->enforceSB(Z)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed. enforceSB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCModeFlag(I)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed. setCCModeFlag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    return v0

    :cond_1
    return v0
.end method

.method private setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const v9, 0x1080027

    const/4 v6, 0x2

    const/4 v8, 0x0

    const-string/jumbo v5, "SecurityManager : Notice for applying security policy"

    invoke-static {v5}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    new-array v2, v6, [J

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    const/16 v5, 0x20

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const-string/jumbo v5, ""

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.service.SecurityManager.UPDATE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x8000000

    invoke-static {v5, v8, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v5, Landroid/app/Notification$Action;

    const-string/jumbo v6, "Refresh"

    invoke-direct {v5, v9, v6, v3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v5, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method


# virtual methods
.method public enableMDFPPMode(Z)I
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/16 v5, 0x8

    const/16 v4, 0x10

    const/4 v1, 0x0

    const-string/jumbo v2, "security.mdpp.result"

    const-string/jumbo v3, "None"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "Enabled"

    const-string/jumbo v3, "ro.security.mdpp.ux"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "This model does not support CC mode."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0x10

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the current mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    if-eqz p1, :cond_d

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string/jumbo v2, "Failed. CCMode is already enabled."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0xe

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eq v0, v7, :cond_3

    if-ne v0, v6, :cond_7

    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    return v1

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkDevicePolicy()I

    move-result v1

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a25

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->performCCModePreProcess()I

    move-result v1

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. CCMode Pre-Process. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a31

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a21

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a24

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-ne v0, v4, :cond_9

    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_8
    const/16 v1, -0xc

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    if-ne v0, v5, :cond_b

    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_a
    const/16 v1, -0xb

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_c
    const/16 v1, -0xd

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    if-ne v0, v6, :cond_10

    :cond_e
    invoke-direct {p0, v7}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a21

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a23

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    if-ne v0, v7, :cond_11

    const-string/jumbo v2, "Failed. CCMode is already ready."

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    const/16 v1, -0xf

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    if-ne v0, v5, :cond_13

    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a31

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_12
    const/16 v1, -0xb

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    if-ne v0, v4, :cond_15

    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_14
    const/16 v1, -0xc

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_16
    const/16 v1, -0xd

    const-string/jumbo v2, "security.mdpp.result"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initCCMode()I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkCCModeOnDevice()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the current mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->d(Ljava/lang/String;)I

    if-eq v0, v6, :cond_0

    if-ne v0, v7, :cond_4

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->performCCModePreProcess()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. CCMode Pre-Process. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a31

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkDevicePolicy()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a22

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040a25

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0, v6}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    if-ne v0, v5, :cond_7

    invoke-direct {p0, v5}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_6
    const/16 v1, -0xb

    goto/16 :goto_0

    :cond_7
    if-ne v0, v4, :cond_9

    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_8
    const/16 v1, -0xc

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v4}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setCCMode(I)I

    move-result v1

    if-eqz v1, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed. setCCMode. res = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/service/SecurityManager/Log;->e(Ljava/lang/String;)I

    :cond_a
    const/16 v1, -0xd

    goto/16 :goto_0
.end method

.method public isCCModeSupport()Z
    .locals 2

    const-string/jumbo v1, "ro.security.mdpp.ux"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateNotification()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->checkDevicePolicy()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040a21

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a24

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040a22

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040a25

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/service/SecurityManager/SecurityJob;->setNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verifyVPN()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v0}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->verifyVPN()I

    move-result v0

    return v0
.end method

.method public verifyWPA()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/SecurityManager/SecurityJob;->mSecurityNativeJob:Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;

    invoke-virtual {v0}, Lcom/samsung/android/service/SecurityManager/SecurityNativeJob;->verifyWPA()I

    move-result v0

    return v0
.end method
