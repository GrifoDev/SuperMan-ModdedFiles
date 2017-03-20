.class public Lcom/cmcc/sso/sdk/util/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field public static final NAME_SSOSERVICE:Ljava/lang/String; = "com.cmcc.sso.service.SsoService"

.field private static final PACKAGE_FILE_NAME:Ljava/lang/String; = "lastpackagenameforsso.txt"

.field public static final SSOSERVICE_ACTION:Ljava/lang/String; = "com.cmcc.sso.Action.SsoService"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private compareServiceVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "version1"    # Ljava/lang/String;
    .param p2, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 157
    const-string v6, "[-]+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object p1, v6, v5

    .line 158
    const-string v6, "[-]+"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object p2, v6, v5

    .line 159
    const-string v6, "[.]+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "versions1":[Ljava/lang/String;
    const-string v6, "[.]+"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "versions2":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 175
    .local v0, "v1":I
    const/4 v1, 0x0

    .line 177
    .local v1, "v2":I
    aget-object v6, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 178
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 180
    if-eq v0, v1, :cond_2

    .line 181
    if-le v0, v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v4

    :cond_1
    move v4, v5

    .line 181
    goto :goto_0

    .line 183
    :cond_2
    aget-object v6, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 184
    aget-object v6, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 186
    if-eq v0, v1, :cond_3

    .line 187
    if-gt v0, v1, :cond_0

    move v4, v5

    goto :goto_0

    .line 189
    :cond_3
    aget-object v6, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    aget-object v6, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 192
    if-ge v0, v1, :cond_0

    move v4, v5

    goto :goto_0
.end method

.method private stopService(Ljava/lang/String;)V
    .locals 3
    .param p1, "svcPkgName"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stoping SsoService in package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "inte":Landroid/content/Intent;
    const-string v1, "com.cmcc.sso.service.SsoService"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "com.cmcc.sso.Action.SsoService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    iget-object v1, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 37
    return-void
.end method


# virtual methods
.method public getLatestServicePkgName()Ljava/lang/String;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 94
    iget-object v11, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 95
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.cmcc.sso.Action.SsoService"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x80

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 96
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "services "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 98
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v4

    .line 103
    :cond_1
    const-string v11, "lastpackagenameforsso.txt"

    iget-object v12, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/cmcc/sso/sdk/util/FileUtil;->readFile(Ljava/lang/String;Landroid/content/Context;)[B

    move-result-object v0

    .line 104
    .local v0, "fileName":[B
    if-nez v0, :cond_2

    .line 105
    .local v4, "localServicePackageName":Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "localServicePackageName="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 107
    const/4 v3, 0x0

    .line 108
    .local v3, "latestPkgName":Ljava/lang/String;
    const-string v10, "0.0.0-jar.arm"

    .line 109
    .local v10, "version":Ljava/lang/String;
    const/4 v5, 0x0

    .line 110
    .local v5, "localVersion":Ljava/lang/String;
    const/4 v2, 0x0

    .line 111
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 112
    .local v6, "metaData":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 114
    .local v9, "v":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lt v1, v11, :cond_3

    .line 130
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "BootReceiver:latest SsoService version="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 132
    if-eqz v5, :cond_6

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 134
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "localVersion="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v3    # "latestPkgName":Ljava/lang/String;
    .end local v4    # "localServicePackageName":Ljava/lang/String;
    .end local v5    # "localVersion":Ljava/lang/String;
    .end local v6    # "metaData":Landroid/os/Bundle;
    .end local v9    # "v":Ljava/lang/String;
    .end local v10    # "version":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    .line 116
    .restart local v1    # "i":I
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "latestPkgName":Ljava/lang/String;
    .restart local v4    # "localServicePackageName":Ljava/lang/String;
    .restart local v5    # "localVersion":Ljava/lang/String;
    .restart local v6    # "metaData":Landroid/os/Bundle;
    .restart local v9    # "v":Ljava/lang/String;
    .restart local v10    # "version":Ljava/lang/String;
    :cond_3
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 117
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 118
    const-string v11, "service_version"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    invoke-direct {p0, v9, v10}, Lcom/cmcc/sso/sdk/util/ServiceUtils;->compareServiceVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 121
    move-object v10, v9

    .line 122
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 124
    :cond_4
    iget-object v11, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 126
    move-object v5, v9

    .line 114
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    :cond_6
    if-eqz v3, :cond_7

    .line 140
    const-string v11, "lastpackagenameforsso.txt"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    iget-object v13, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/cmcc/sso/sdk/util/FileUtil;->saveFile(Ljava/lang/String;[BLandroid/content/Context;I)V

    .line 143
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "latest version SsoService PackageName : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    move-object v4, v3

    .line 145
    goto/16 :goto_0
.end method

.method public getRunningServiceInfo()Landroid/content/ComponentName;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 203
    const/16 v1, 0x64

    .line 205
    .local v1, "defaultNum":I
    iget-object v7, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 206
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 208
    .local v3, "runServiceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v4, v6

    .line 227
    :goto_0
    return-object v4

    .line 213
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v4, v6

    .line 227
    goto :goto_0

    .line 213
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 217
    .local v2, "runServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 218
    .local v4, "serviceCMP":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, "serviceName":Ljava/lang/String;
    const-string v8, "com.cmcc.sso.service.SsoService"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0
.end method

.method public startService()Ljava/lang/String;
    .locals 7

    .prologue
    .line 42
    iget-object v5, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "currentPackageName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentPackageName : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 45
    const/4 v3, 0x0

    .line 48
    .local v3, "latestSvcPkgName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/cmcc/sso/sdk/util/ServiceUtils;->getLatestServicePkgName()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 52
    const/4 v5, 0x0

    .line 83
    :goto_0
    return-object v5

    .line 55
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 58
    move-object v3, v0

    .line 62
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/cmcc/sso/sdk/util/ServiceUtils;->getRunningServiceInfo()Landroid/content/ComponentName;

    move-result-object v4

    .line 63
    .local v4, "runningServiceInfo":Landroid/content/ComponentName;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "running SsoService : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 65
    if-eqz v4, :cond_2

    .line 67
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    .line 69
    goto :goto_0

    .line 73
    :cond_1
    const-string v5, "starting the latest version of SsoService"

    invoke-static {v5}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/cmcc/sso/sdk/util/ServiceUtils;->stopService(Ljava/lang/String;)V

    .line 78
    :cond_2
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v2, "inte":Landroid/content/Intent;
    const-string v5, "com.cmcc.sso.service.SsoService"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v5, "com.cmcc.sso.Action.SsoService"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    iget-object v5, p0, Lcom/cmcc/sso/sdk/util/ServiceUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-object v5, v3

    .line 83
    goto :goto_0
.end method
