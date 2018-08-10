.class public Landroid/content/pm/AppsQueryHelper;
.super Ljava/lang/Object;
.source "AppsQueryHelper.java"


# static fields
.field public static GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

.field public static GET_IMES:I

.field public static GET_NON_LAUNCHABLE_APPS:I

.field public static GET_REQUIRED_FOR_SYSTEM_USER:I


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    const/4 v0, 0x2

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    const/4 v0, 0x4

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    const/16 v0, 0x8

    sput v0, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/AppsQueryHelper;-><init>(Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method protected getAllApps(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x2200

    invoke-interface {v1, v2, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryApps(IZLandroid/os/UserHandle;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    and-int v20, v20, p1

    if-lez v20, :cond_1

    const/4 v10, 0x1

    :goto_0
    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    and-int v20, v20, p1

    if-lez v20, :cond_2

    const/4 v9, 0x1

    :goto_1
    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    and-int v20, v20, p1

    if-lez v20, :cond_3

    const/4 v7, 0x1

    :goto_2
    sget v20, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    and-int v20, v20, p1

    if-lez v20, :cond_4

    const/4 v15, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/AppsQueryHelper;->getAllApps(I)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_5

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_5

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    return-object v18

    :cond_7
    if-eqz v10, :cond_b

    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.intent.action.MAIN"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v21, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/AppsQueryHelper;->queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const/4 v6, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v6, v0, :cond_8

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_a

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_a

    :cond_9
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_a
    iget-object v12, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_b
    if-eqz v9, :cond_e

    const-string/jumbo v20, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppsQueryHelper;->getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    const/4 v6, 0x0

    :goto_9
    if-ge v6, v14, :cond_e

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    if-eqz p2, :cond_d

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_d

    :cond_c
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_d
    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    iget-object v0, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    if-eqz v7, :cond_11

    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v21, "android.view.InputMethod"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AppsQueryHelper;->queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    const/4 v6, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v6, v0, :cond_11

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v19, v0

    if-eqz p2, :cond_10

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_10

    :cond_f
    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_10
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    if-eqz p2, :cond_13

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_13

    :cond_12
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_13
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isRequiredForSystemUser()Z

    move-result v20

    if-eqz v20, :cond_12

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_14
    return-object v18
.end method

.method protected queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const v3, 0xc2200

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    const v3, 0xc8080

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
