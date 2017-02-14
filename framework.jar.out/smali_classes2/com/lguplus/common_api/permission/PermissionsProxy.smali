.class public Lcom/lguplus/common_api/permission/PermissionsProxy;
.super Ljava/lang/Object;
.source "PermissionsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;
    }
.end annotation


# static fields
.field static final PERMS_CLS_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl.permission.PermissionsImpl"

.field static final PERMS_PKG_NAME:Ljava/lang/String; = "com.lguplus.common_api_impl"


# instance fields
.field mPerms:Lcom/lguplus/common_api/permission/Permissions;

.field mPkgMgr:Landroid/content/pm/IPackageManager$Stub;


# direct methods
.method public constructor <init>(Landroid/content/pm/IPackageManager$Stub;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iput-object p1, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    return-void
.end method

.method private getPerms()V
    .locals 7

    :try_start_0
    iget-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPkgMgr:Landroid/content/pm/IPackageManager$Stub;

    const-string/jumbo v4, "com.lguplus.common_api_impl"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v3, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-string/jumbo v4, "com.lguplus.common_api_impl.permission.PermissionsImpl"

    invoke-virtual {v3, v4}, Lcom/lguplus/common_api/permission/PermissionsProxy$PermsClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lguplus/common_api/permission/Permissions;

    iput-object v3, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "uplus_common_api"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPerms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public afterAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.lguplus.common_api_impl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v1, v2}, Lcom/lguplus/common_api/permission/Permissions;->afterAdd(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public beforeAddPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v4, :cond_1

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v4, v2}, Lcom/lguplus/common_api/permission/Permissions;->isContainsInTempPerms(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v4, v2}, Lcom/lguplus/common_api/permission/Permissions;->getUserNameInTempPerms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".uplus_common_api"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/lguplus/common_api/permission/PermissionsProxy;->preverifyPkg(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    const-string/jumbo v5, ".uplus_common_api$"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "uplus_common_api"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "beforeAddPkg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_1

    :try_start_1
    iput-object v3, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByPkgName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkByUid(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lguplus/common_api/permission/PermissionsProxy;->getPerms()V

    :cond_0
    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1, p2}, Lcom/lguplus/common_api/permission/Permissions;->checkByUid(ILjava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGids(Ljava/lang/String;)[I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->getGids(Ljava/lang/String;)[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isSystemUid(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    invoke-interface {v0, p1}, Lcom/lguplus/common_api/permission/Permissions;->isSystemUid(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDelPkg(Landroid/content/pm/PackageParser$Package;)V
    .locals 2

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/lguplus/common_api/permission/Permissions;->del(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public preverifyPkg(Landroid/content/pm/PackageParser$Package;)Z
    .locals 17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v13, :cond_4

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_1
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v2, v13}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v13, "assets/uplus_common_api_perm_token.txt"

    invoke-virtual {v2, v4, v13}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    const/16 v13, 0x1000

    new-array v3, v13, [B

    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v9

    new-instance v11, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v11, v3, v13, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v10, v11

    :cond_0
    if-eqz v8, :cond_1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_0
    move-object v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lguplus/common_api/permission/PermissionsProxy;->mPerms:Lcom/lguplus/common_api/permission/Permissions;

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v10, v15}, Lcom/lguplus/common_api/permission/Permissions;->beforeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string/jumbo v13, "INVALID-TOKEN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    :goto_2
    return v13

    :catch_0
    move-exception v6

    const-string/jumbo v13, "uplus_common_api"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "preverifyPkg(finally):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v13, "uplus_common_api"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "preverifyPkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v13, 0x0

    return v13

    :catch_2
    move-exception v7

    :goto_3
    :try_start_5
    const-string/jumbo v13, "uplus_common_api"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "preverifyPkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_2

    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :catch_3
    move-exception v6

    :try_start_7
    const-string/jumbo v13, "uplus_common_api"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "preverifyPkg(finally):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catch_4
    move-exception v5

    :goto_4
    if-eqz v8, :cond_2

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_1

    :catch_5
    move-exception v6

    :try_start_9
    const-string/jumbo v13, "uplus_common_api"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "preverifyPkg(finally):"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v13

    :goto_5
    if-eqz v8, :cond_5

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    :cond_5
    :goto_6
    :try_start_b
    throw v13

    :catch_6
    move-exception v6

    const-string/jumbo v14, "uplus_common_api"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preverifyPkg(finally):"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_6

    :cond_6
    const/4 v13, 0x1

    goto/16 :goto_2

    :catchall_1
    move-exception v13

    move-object v1, v2

    goto :goto_5

    :catch_7
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :catch_8
    move-exception v7

    move-object v1, v2

    goto/16 :goto_3
.end method

.method public reorderApkFiles([Ljava/io/File;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "LGUPlusLinuxCommonApi.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v0, p1, v1

    add-int/lit8 v2, v1, -0x1

    :goto_1
    if-ltz v2, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v4, p1, v2

    aput-object v4, p1, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    aput-object v0, p1, v5

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
