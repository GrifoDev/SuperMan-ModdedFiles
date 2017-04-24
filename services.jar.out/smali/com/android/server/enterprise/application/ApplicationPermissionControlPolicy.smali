.class public Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;
.super Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;
.source "ApplicationPermissionControlPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final ALLPACKAGES:Ljava/lang/String; = "*"

.field private static final PKGNAME_PERMISSION_ALLIST:Ljava/lang/String; = "Alllist"

.field private static final PKGNAME_PERMISSION_BLACKLIST:Ljava/lang/String; = "Blacklist"

.field private static final PKGNAME_PERMISSION_WHITELIST:Ljava/lang/String; = "Whitelist"

.field private static final TAG:Ljava/lang/String; = "ApplicationPermissionControlPolicy"

.field private static mAppPermissionControl:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/enterprise/IApplicationPermissionControlPolicy$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method private declared-synchronized clearBWList(ILjava/lang/String;)V
    .locals 26

    monitor-enter p0

    if-lez p1, :cond_0

    :try_start_0
    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v23, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_0

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v23

    if-nez v23, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map;

    if-eqz v17, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v23

    if-eqz v23, :cond_4

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string/jumbo v24, "Blacklist"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    const-string/jumbo v24, "Whitelist"

    invoke-interface/range {v23 .. v24}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    const/4 v14, 0x0

    const-string/jumbo v23, "Blacklist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_6

    const-string/jumbo v23, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    :cond_6
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    :cond_7
    :goto_1
    invoke-interface {v9, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_5

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Set;

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    monitor-exit p0

    throw v23

    :cond_8
    :try_start_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_9
    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    goto :goto_1

    :cond_b
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_c
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v23, "*"

    move-object/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface {v14, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_d
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_f
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v24, "APPLICATION_PERMISSIONCONTROL"

    const-string/jumbo v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_10
    :try_start_5
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_11
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_14

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_12
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    move/from16 v1, p1

    if-eq v0, v1, :cond_12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1, v12}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_12

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_13
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_14
    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v24, "APPLICATION_PERMISSIONCONTROL"

    const-string/jumbo v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_15
    const/16 v20, 0x0

    :try_start_6
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_18

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    const-string/jumbo v23, "Whitelist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v0

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v20

    :goto_5
    if-eqz v20, :cond_16

    :try_start_8
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v24, v0

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    invoke-interface {v0, v11, v1, v2}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v20

    goto :goto_5

    :catch_0
    move-exception v7

    const/16 v20, 0x0

    goto :goto_5

    :cond_18
    :try_start_a
    const-string/jumbo v23, "Alllist"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_19

    sget-object v23, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_6
    monitor-exit p0

    return-void

    :cond_19
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string/jumbo v24, "APPLICATION_PERMISSIONCONTROL"

    const-string/jumbo v25, "ListType"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, p1

    move-object/from16 v3, v25

    move-object/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_6
.end method

.method private declared-synchronized createAdminMap(ILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string/jumbo v1, "android.permission.sec.MDM_APP_PERMISSION_MGMT"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_0

    return-object p3

    :cond_0
    const-string/jumbo v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string/jumbo v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    return-object v3

    :cond_1
    const-string/jumbo v9, "*"

    invoke-interface {p3, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v9, "ApplicationPermissionControlPolicy"

    const-string/jumbo v10, "getEffectiveAllPackages: returns null"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    return-object v9

    :cond_2
    const-string/jumbo v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string/jumbo v9, "Blacklist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    const-string/jumbo v10, "*"

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    return-object v3

    :cond_5
    invoke-interface {v3, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_7
    return-object v3

    :cond_8
    const-string/jumbo v9, "Whitelist"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v3, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    if-eqz p4, :cond_c

    :cond_b
    return-object v3

    :cond_c
    sget-object v9, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v9, p1, :cond_d

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_d

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method private getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-nez v6, :cond_0

    return-object v5

    :cond_0
    const-string/jumbo v13, "Blacklist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    return-object v5

    :cond_1
    const-string/jumbo v13, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "Blacklist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    const-string/jumbo v14, "*"

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    const-string/jumbo v13, "Whitelist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v5, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string/jumbo v13, "Blacklist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-interface {v5, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v13, "Blacklist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    const-string/jumbo v14, "*"

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "Whitelist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    const-string/jumbo v14, "*"

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    :cond_5
    const-string/jumbo v13, "Whitelist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    const-string/jumbo v14, "*"

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/List;->clear()V

    return-object v5

    :cond_6
    move-object/from16 v0, p3

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_a

    return-object v5

    :cond_8
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v13, "Blacklist"

    invoke-interface {v6, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    invoke-interface {v13, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    if-eqz p4, :cond_d

    sget-object v13, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v0, p1

    if-eq v13, v0, :cond_b

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p2

    invoke-direct {p0, v13, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v5, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v5, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    return-object v5
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-nez v6, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "ApplicationPermissionControlPolicy"

    const-string/jumbo v7, "Can\'t apply policy to EDM Admin: "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v6, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v2, :cond_0

    return-object v8

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_0
    const-string/jumbo v6, "Blacklist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string/jumbo v6, "Whitelist"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    return-object v8

    :cond_2
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const-string/jumbo v6, "*"

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    return-object v8

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_5
    const-string/jumbo v6, "*"

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_7

    const-string/jumbo v6, "ApplicationPermissionControlPolicy"

    const-string/jumbo v7, "getEffectiveBlacklist: returns null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_9
    return-object v1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    monitor-exit p0

    return-object v11

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    :cond_2
    monitor-exit p0

    return-object v11

    :cond_3
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    new-instance v0, Landroid/app/enterprise/AppPermissionControlInfo;

    invoke-direct {v0}, Landroid/app/enterprise/AppPermissionControlInfo;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->adminPackageName:Ljava/lang/String;

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    iput-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->entries:Ljava/util/List;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_6
    :try_start_3
    iget-object v10, v0, Landroid/app/enterprise/AppPermissionControlInfo;->mapEntries:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_8

    const/4 v2, 0x0

    :cond_8
    monitor-exit p0

    return-object v2
.end method

.method private declared-synchronized getPermissionList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    sget-object v5, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    monitor-exit p0

    return-object v1
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move-object v1, p0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private declared-synchronized handleAdminAdded(I)V
    .locals 17

    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v15, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v15, :cond_0

    sget-object v15, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    :cond_0
    const-string/jumbo v15, "ApplicationPermissionControlPolicy"

    const-string/jumbo v16, "mAppPermissionControl is null. handleAdminAdded not needed"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackageNameForUid(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    const/4 v11, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    if-eqz v2, :cond_2

    if-nez v11, :cond_3

    :cond_2
    :try_start_3
    const-string/jumbo v15, "ApplicationPermissionControlPolicy"

    const-string/jumbo v16, "illegal input found. can\'t do handleAdminAdded operation"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v15, "ApplicationPermissionControlPolicy"

    const-string/jumbo v16, "handleAdminAdded failed"

    invoke-static/range {v15 .. v16}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    iget-object v15, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v15, v11, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v15, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    sget-object v15, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map;

    invoke-interface {v15, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    if-eqz v10, :cond_5

    const-string/jumbo v15, "Blacklist"

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    invoke-interface {v15, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    const-string/jumbo v15, "Blacklist"

    invoke-interface {v10, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    const-string/jumbo v16, "*"

    invoke-interface/range {v15 .. v16}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_6
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    :cond_7
    :try_start_6
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_8

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v15, v6, v12, v0}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_8
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :cond_8
    monitor-exit p0

    return-void
.end method

.method private handleAdminRemoval(I)V
    .locals 1

    const-string/jumbo v0, "Alllist"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    return-void
.end method

.method private killApplications(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    const-string/jumbo v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "killApplications failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "killApplications failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "IActivityManager is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :try_start_1
    const-string/jumbo v7, "ApplicationPermissionControlPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "is going to be killed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v8, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-interface {v1, v7, v8}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "killApplicationProcess failed"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    return-void
.end method

.method private reinforceApplicationPermissionControl()V
    .locals 14

    const/4 v5, 0x0

    const-string/jumbo v12, "ApplicationPermissionControlPolicy"

    const-string/jumbo v13, "reinforceApplicationPermissionControl"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    monitor-enter p0

    :try_start_0
    sget-object v12, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    monitor-exit p0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {p0, v12, v6}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveBlacklist(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_4
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {v8, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    return-void

    :cond_6
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_1
    iget-object v12, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v13, 0x1

    invoke-interface {v12, v4, v9, v13}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_7
    const-string/jumbo v12, "ApplicationPermissionControlPolicy"

    const-string/jumbo v13, "reinforceApplicationPermissionControl done"

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->createAdminMap(ILjava/lang/String;)V

    if-eqz p4, :cond_0

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v8, 0x0

    const-string/jumbo v1, "Blacklist"

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct/range {p0 .. p4}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getAppPermissionControlBL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    :goto_0
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p4, :cond_2

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v7, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "permission"

    invoke-virtual {v7, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "Object"

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_1
    invoke-direct/range {p0 .. p4}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getAppPermissionControlWL(ILjava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v8

    goto :goto_0

    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "permission"

    invoke-virtual {v9, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "ListType"

    move-object/from16 v0, p5

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Object"

    invoke-virtual {v9, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit p0

    return-object v8
.end method

.method private updateAppPermissionControlBWState(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    if-eqz p4, :cond_2

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "Whitelist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Blacklist"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private declared-synchronized validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->loadApplicationPermissionControlList()V

    :cond_0
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :cond_2
    :try_start_1
    invoke-static {p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    if-nez v10, :cond_3

    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_5
    :try_start_3
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :cond_6
    :try_start_4
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string/jumbo v10, "*"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v3, :cond_7

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_8

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v10, v10, 0x80

    if-eqz v10, :cond_9

    :cond_8
    const-string/jumbo v10, "ApplicationPermissionControlPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t apply policy to system app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :cond_9
    if-eqz v2, :cond_7

    :try_start_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_7

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string/jumbo v10, "ApplicationPermissionControlPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Can\'t apply policy to EDM Admin: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :catch_0
    move-exception v4

    :try_start_7
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :cond_a
    if-nez p4, :cond_f

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v10, :cond_f

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v10

    if-nez v10, :cond_c

    :cond_b
    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :cond_c
    :try_start_8
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const-string/jumbo v11, "*"

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v10

    :goto_2
    if-nez v10, :cond_d

    const/4 v7, 0x0

    const/4 v10, 0x0

    monitor-exit p0

    return-object v10

    :cond_e
    const/4 v10, 0x1

    goto :goto_2

    :cond_f
    :try_start_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    const-string/jumbo v10, "*"

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    if-eqz p4, :cond_10

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-eqz v10, :cond_10

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_10

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    move-object/from16 v0, p5

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    const-string/jumbo v11, "*"

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_10
    monitor-exit p0

    return-object v7
.end method


# virtual methods
.method public addPackagesToPermissionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v13, 0x0

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v13

    :cond_1
    const-string/jumbo v7, "Blacklist"

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const-string/jumbo v7, "Blacklist"

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_4

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW returned empty list."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v10, v4}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_0
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    const/4 v13, 0x1

    :cond_7
    :goto_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    if-eqz v13, :cond_8

    if-nez v17, :cond_8

    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_1
    const-string/jumbo v2, "Application"

    const-string/jumbo v4, "addPackagesToPermissionBlackList"

    invoke-virtual {v11, v2, v4, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_2
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addPackagesToPermissionBlackList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :catch_0
    move-exception v8

    const/16 v16, 0x0

    goto :goto_0

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    const-string/jumbo v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    goto :goto_1

    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_7

    const/4 v13, 0x1

    goto :goto_1

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public addPackagesToPermissionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v14

    :cond_1
    const-string/jumbo v7, "Whitelist"

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    const-string/jumbo v7, "Whitelist"

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_4

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v4}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_0
    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW returned empty list."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_5

    iget v2, v13, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    :cond_5
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get permission info for permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    :cond_7
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v10, v4}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    :goto_2
    if-nez v15, :cond_9

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW null uPkgNameList failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_8
    move-object/from16 v10, p3

    goto :goto_1

    :catch_1
    move-exception v8

    const/4 v15, 0x0

    goto :goto_2

    :cond_9
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    const-string/jumbo v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v14, 0x1

    :cond_a
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    if-eqz v14, :cond_b

    if-nez v18, :cond_b

    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_2
    const-string/jumbo v2, "Application"

    const-string/jumbo v4, "addPackagesToPermissionWhiteList"

    invoke-virtual {v11, v2, v4, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "addPackagesToPermissionWhiteList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_c
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_a

    const/4 v14, 0x1

    goto :goto_3

    :cond_d
    const/4 v14, 0x1

    goto :goto_3

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public clearPackagesFromPermissionBlackList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "Blacklist"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string/jumbo v6, "Application"

    const-string/jumbo v7, "clearPackagesFromPermissionBlackList"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public clearPackagesFromPermissionWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 9

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "Whitelist"

    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->clearBWList(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string/jumbo v6, "Application"

    const-string/jumbo v7, "clearPackagesFromPermissionWhiteList"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    if-nez p2, :cond_0

    return-object v4

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, p2}, Landroid/content/pm/IPackageManager;->getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackagesFromPermissionBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ApplicationPermissionControlPolicy"

    const-string/jumbo v1, "getAppPermissionAllBlackLists:"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Blacklist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackagesFromPermissionWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppPermissionControlInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "ApplicationPermissionControlPolicy"

    const-string/jumbo v1, "getPackagesFromPermissionWhiteList:"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Whitelist"

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPackagesFromPermissionBlackWhiteList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPermissionAllowedList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    monitor-exit p0

    return-object v8

    :cond_1
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_2

    monitor-exit p0

    return-object v8

    :cond_2
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    monitor-exit p0

    return-object v8

    :cond_3
    :try_start_3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x1

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v0, 0x0

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_5

    const-string/jumbo v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string/jumbo v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_6
    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_8
    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getPermissionBlockedList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    monitor-exit p0

    return-object v9

    :cond_1
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    if-nez v7, :cond_2

    const-string/jumbo v7, "ApplicationPermissionControlPolicy"

    const-string/jumbo v8, "mAppPermissionControl is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v9

    :cond_2
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    monitor-exit p0

    return-object v9

    :cond_3
    :try_start_3
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v0, 0x1

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    const/4 v0, 0x1

    sget-object v7, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_5

    const-string/jumbo v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "Blacklist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string/jumbo v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_6
    const-string/jumbo v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string/jumbo v7, "Whitelist"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    const-string/jumbo v8, "*"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    :goto_1
    if-nez v7, :cond_5

    const/4 v0, 0x0

    :cond_7
    if-nez v0, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    :cond_8
    const/4 v7, 0x1

    goto :goto_1

    :cond_9
    monitor-exit p0

    return-object v1
.end method

.method public loadApplicationPermissionControlList()V
    .locals 12

    monitor-enter p0

    :try_start_0
    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidList()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x3

    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v10, "permission"

    const/4 v11, 0x0

    aput-object v10, v2, v11

    const-string/jumbo v10, "Object"

    const/4 v11, 0x1

    aput-object v10, v2, v11

    const-string/jumbo v10, "ListType"

    const/4 v11, 0x2

    aput-object v10, v2, v11

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v11, "APPLICATION_PERMISSIONCONTROL"

    invoke-virtual {v10, v11, v7, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "Object"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "permission"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "ListType"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v10, "Whitelist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "Blacklist"

    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    :cond_3
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mAppPermissionControl:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_5
    monitor-exit p0

    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->reinforceApplicationPermissionControl()V

    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onAdminAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->handleAdminAdded(I)V

    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->handleAdminRemoval(I)V

    return-void
.end method

.method public removePackagesFromPermissionBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/16 v16, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v13, 0x0

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v13

    :cond_1
    const-string/jumbo v7, "Blacklist"

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    const-string/jumbo v7, "Blacklist"

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_4

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v10, v4}, Landroid/content/pm/IPackageManager;->rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    :goto_0
    if-nez v16, :cond_5

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :catch_0
    move-exception v8

    const/16 v16, 0x0

    goto :goto_0

    :cond_5
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_6
    :goto_1
    const-string/jumbo v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v13, 0x1

    :cond_7
    :goto_2
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v17

    if-eqz v13, :cond_8

    if-nez v17, :cond_8

    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_1
    const-string/jumbo v2, "Application"

    const-string/jumbo v4, "removePackagesFromPermissionBlackList"

    invoke-virtual {v11, v2, v4, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromPermissionBlackList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v13

    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    goto :goto_1

    :cond_a
    if-eqz v16, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_7

    const/4 v13, 0x1

    goto :goto_2

    :cond_b
    const/4 v13, 0x1

    goto :goto_2

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public removePackagesFromPermissionWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->enforceOwnerOnlyAndAppPermisionControlPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v14, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo v2, "*"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v14

    :cond_1
    const-string/jumbo v7, "Whitelist"

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->validateRequest(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "illegal input found. can\'t do the operation"

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :cond_3
    const-string/jumbo v7, "Whitelist"

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->updateAppPermissionControlBW(ILjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_4

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v4}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    :goto_0
    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW returned empty list."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_5

    iget v2, v13, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_6

    :cond_5
    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get permission info for permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "*"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getEffectiveAllPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    :cond_7
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v2, v0, v10, v4}, Landroid/content/pm/IPackageManager;->revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    :goto_2
    if-nez v15, :cond_9

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    const-string/jumbo v4, "updateAppPermissionControlBW uPkgNameList failed."

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_8
    move-object/from16 v10, p3

    goto :goto_1

    :catch_1
    move-exception v8

    const/4 v15, 0x0

    goto :goto_2

    :cond_9
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->killApplications(Ljava/util/List;)V

    const-string/jumbo v2, "*"

    invoke-interface {v5, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v14, 0x1

    :cond_a
    :goto_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v18

    if-eqz v14, :cond_b

    if-nez v18, :cond_b

    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :try_start_2
    const-string/jumbo v2, "Application"

    const-string/jumbo v4, "removePackagesFromPermissionWhiteList"

    invoke-virtual {v11, v2, v4, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringListTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v2, "ApplicationPermissionControlPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removePackagesFromPermissionWhiteList: return:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    :cond_c
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_a

    const/4 v14, 0x1

    goto :goto_3

    :cond_d
    const/4 v14, 0x1

    goto :goto_3

    :catch_2
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public systemReady()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
