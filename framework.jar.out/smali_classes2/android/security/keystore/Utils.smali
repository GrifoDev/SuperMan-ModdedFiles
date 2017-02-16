.class abstract Landroid/security/keystore/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cloneIfNotNull(Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    const/4 v0, 0x0

    .line 47
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :cond_0
    return-object v0
.end method

.method static cloneIfNotNull([B)[B
    .locals 1
    .param p0, "value"    # [B

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :cond_0
    return-object v0
.end method

.method static getKeystoreString(I)Ljava/lang/String;
    .locals 3
    .param p0, "uid"    # I

    .prologue
    .line 77
    const-string/jumbo v0, ""

    .line 78
    .local v0, "keystore":Ljava/lang/String;
    const/16 v1, 0x3f2

    if-ne p0, v1, :cond_1

    .line 79
    const-string/jumbo v0, "Wi-Fi"

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 80
    :cond_1
    const/4 v1, -0x1

    if-eq p0, v1, :cond_2

    const/16 v1, 0x2710

    if-lt p0, v1, :cond_3

    const/16 v1, 0x4e1f

    if-gt p0, v1, :cond_3

    .line 82
    :cond_2
    :goto_1
    const-string/jumbo v0, "VPN and Apps"

    goto :goto_0

    .line 81
    :cond_3
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    goto :goto_1
.end method

.method static getRequestorInfo()Ljava/lang/String;
    .locals 16

    .prologue
    .line 94
    const-string/jumbo v10, ""

    .line 95
    .local v10, "role":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 96
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_2

    .line 97
    const-string/jumbo v10, "SystemApp"

    .line 102
    :goto_0
    :try_start_0
    const-string/jumbo v11, "android.app.ActivityManagerNative"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getDefault"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 103
    .local v2, "mAm":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getRunningAppProcesses"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 104
    .local v5, "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "processInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 105
    .local v7, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 106
    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 111
    .end local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const-string/jumbo v11, "android.os.ServiceManager"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getService"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 112
    const-string/jumbo v13, "enterprise_policy"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    .line 111
    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 113
    .local v0, "bEdm":Landroid/os/IBinder;
    const-string/jumbo v11, "com.samsung.android.knox.IEnterpriseDeviceManager$Stub"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "asInterface"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Landroid/os/IBinder;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 114
    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x0

    .line 113
    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 115
    .local v3, "mEdm":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "packageHasActiveAdmins"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 117
    .local v4, "mthdCheck":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v4, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 118
    .local v9, "result":Z
    if-eqz v9, :cond_3

    .line 119
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|Administrator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 128
    .end local v0    # "bEdm":Landroid/os/IBinder;
    .end local v2    # "mAm":Ljava/lang/Object;
    .end local v3    # "mEdm":Ljava/lang/Object;
    .end local v4    # "mthdCheck":Ljava/lang/reflect/Method;
    .end local v5    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .end local v8    # "processInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "result":Z
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " role="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 99
    :cond_2
    const-string/jumbo v10, "UserApp"

    goto/16 :goto_0

    .line 121
    .restart local v0    # "bEdm":Landroid/os/IBinder;
    .restart local v2    # "mAm":Ljava/lang/Object;
    .restart local v3    # "mEdm":Ljava/lang/Object;
    .restart local v4    # "mthdCheck":Ljava/lang/reflect/Method;
    .restart local v5    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .restart local v8    # "processInfo$iterator":Ljava/util/Iterator;
    .restart local v9    # "result":Z
    :cond_3
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|NonAdministrator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1

    .line 125
    .end local v0    # "bEdm":Landroid/os/IBinder;
    .end local v2    # "mAm":Ljava/lang/Object;
    .end local v3    # "mEdm":Ljava/lang/Object;
    .end local v4    # "mthdCheck":Ljava/lang/reflect/Method;
    .end local v5    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .end local v8    # "processInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "result":Z
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_1
.end method

.method static getUserId(IZ)I
    .locals 2
    .param p0, "uid"    # I
    .param p1, "isAuditLog"    # Z

    .prologue
    .line 61
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 62
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 63
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 64
    :cond_1
    if-eqz p1, :cond_0

    const/16 v1, 0x3f2

    if-ne p0, v1, :cond_0

    .line 66
    const/4 v0, -0x1

    goto :goto_0
.end method
