.class public Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
.super Ljava/lang/Object;
.source "PrivateKnoxCustom.java"


# static fields
.field static final KNOX_CUSTOM_AUTO_STARTUP_FLAG:I = 0x1

.field static final KNOX_CUSTOM_AUTO_STARTUP_OFFSET:I = 0x8

.field static final KNOX_CUSTOM_CHECKSUM_OFFSET:I = 0x1f

.field static final KNOX_CUSTOM_CHECKSUM_VALUE:I = 0x6

.field static final KNOX_CUSTOM_FLAG_OFFSET:I = 0x1e

.field static final KNOX_CUSTOM_RESERVED_FLAG:I = 0x2

.field static final KNOX_CUSTOM_RESERVED_OFFSET:I = 0x9

.field private static final KNOX_CUSTOM_SYSTEM_PERMISSION_LEGACY:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

.field private static final KNOX_CUSTOM_SYSTEM_PERMISSION_ONESDK:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field static final KNOX_CUSTOM_TRUE:I = 0x8

.field static final PARAM_BUF_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "PrivateKnoxCustom:"

.field static mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;


# instance fields
.field private final DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->DEBUG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object p1, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enforceSystemPermission()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/util/List;)V

    return v5
.end method

.method private getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .locals 2

    const-class v1, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->mInstance:Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private readBooleanDataValue(I)Z
    .locals 9

    const/16 v8, 0x1e

    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/16 v4, 0x1f

    aget-byte v4, v1, v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    if-ne p1, v6, :cond_1

    aget-byte v4, v1, v6

    if-ne v4, v6, :cond_1

    aget-byte v4, v1, v8

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-ne p1, v7, :cond_2

    aget-byte v4, v1, v7

    if-ne v4, v6, :cond_2

    aget-byte v4, v1, v8

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private native readParamData()[B
.end method

.method private writeBooleanDataValue(IZ)Z
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x0

    const/16 v9, 0x9

    const/16 v8, 0x1e

    const/16 v7, 0x8

    const/4 v2, 0x0

    const/16 v6, 0x20

    new-array v3, v6, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-virtual {v1, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readParamData()[B

    move-result-object v0

    const/16 v6, 0x1f

    aget-byte v6, v0, v6

    if-ne v6, v11, :cond_2

    aget-byte v6, v0, v7

    aput-byte v6, v3, v7

    aget-byte v6, v0, v9

    aput-byte v6, v3, v9

    aget-byte v6, v0, v8

    aput-byte v6, v3, v8

    :goto_0
    if-eqz p2, :cond_3

    aput-byte v7, v3, p1

    :goto_1
    const/16 v6, 0x1f

    aput-byte v11, v3, v6

    if-ne p1, v7, :cond_0

    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    :cond_0
    if-ne p1, v9, :cond_1

    aget-byte v6, v3, v8

    or-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v3, v8

    :cond_1
    invoke-direct {p0, v3}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeParamData([B)Z

    move-result v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_2
    const/16 v6, 0x17

    aput-byte v6, v3, v7

    aput-byte v10, v3, v9

    aput-byte v10, v3, v8

    goto :goto_0

    :cond_3
    const/4 v6, 0x7

    aput-byte v6, v3, p1

    goto :goto_1
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public isKnoxCustomAutoStartUpEnabled()Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->readBooleanDataValue(I)Z

    move-result v0

    return v0
.end method

.method public setKnoxCustomAutoStartUp(Z)Z
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->enforceSystemPermission()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z

    move-result v1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v4, v3}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->writeBooleanDataValue(IZ)Z

    move-result v2

    goto :goto_0
.end method
