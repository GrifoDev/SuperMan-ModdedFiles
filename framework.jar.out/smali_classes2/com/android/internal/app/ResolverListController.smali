.class public Lcom/android/internal/app/ResolverListController;
.super Ljava/lang/Object;
.source "ResolverListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverListController$ComputeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DOCUMENTS_UI_POLICY:Ljava/lang/String; = "DocumentsUIPolicy"

.field public static final DOCUMENTS_UI_POLICY_SEC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ResolverListController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDropsDocumentsUI:Z

.field private final mLaunchedFromUid:I

.field private final mReferrerPackage:Ljava/lang/String;

.field private mResolverComparator:Lcom/android/internal/app/ResolverComparator;

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mpm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    iput p5, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iput-object p3, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    return-void
.end method

.method private static isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z
    .locals 3

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    :try_start_0
    const-string/jumbo v9, "android.intent.action.GET_CONTENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "DocumentsUIPolicy"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-ne v11, v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/app/ResolverListController;->mDropsDocumentsUI:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_4

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-static {v7, v8}, Lcom/android/internal/app/ResolverListController;->isSameResolvedComponent(Landroid/content/pm/ResolveInfo;Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v8, p2, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    :cond_1
    if-nez v1, :cond_2

    new-instance v6, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-direct {v8, v6, p2, v7}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/app/ResolverListController;->isComponentPinned(Landroid/content/ComponentName;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->setPinned(Z)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v9, "ResolverListController"

    const-string/jumbo v10, "Exception occures while getting values from current intent !"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverComparator;->destroy()V

    :cond_0
    return-void
.end method

.method public filterIneligibleActivities(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/internal/app/ResolverListController;->filterIneligibleActivities(Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public filterIneligibleActivities(Ljava/util/List;ZLandroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v9, -0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    :goto_0
    if-ltz v10, :cond_4

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget v3, p0, Lcom/android/internal/app/ResolverListController;->mLaunchedFromUid:I

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v6, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v7, 0x0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    invoke-static/range {v0 .. v7}, Landroid/app/ActivityManager;->checkComponentPermission(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZZ)I

    move-result v9

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v12, 0x1

    :goto_1
    if-nez v9, :cond_0

    if-nez v12, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverListController;->isComponentFiltered(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    if-nez v11, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    invoke-interface {p1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    return-object v11
.end method

.method public filterLowPriority(Ljava/util/List;Z)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v4, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v6, v8}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/ResolveInfo;->priority:I

    iget v7, v5, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v6, v7, :cond_0

    iget-boolean v6, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v7, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v6, v7, :cond_2

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_2

    if-eqz p2, :cond_1

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".documentsui"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/app/ResolverListController;->mDropsDocumentsUI:Z

    if-eqz v6, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-object v2
.end method

.method public getLastChosen()Landroid/content/pm/ResolveInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getResolversForIntent(ZZLjava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/app/ResolverListController;->getResolversForIntent(ZZLjava/util/List;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResolversForIntent(ZZLjava/util/List;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iget-object v12, p0, Lcom/android/internal/app/ResolverListController;->mpm:Landroid/content/pm/PackageManager;

    if-eqz p1, :cond_1

    const/16 v11, 0x40

    :goto_1
    const/high16 v13, 0x10000

    or-int/2addr v13, v11

    if-eqz p2, :cond_2

    const/16 v11, 0x80

    :goto_2
    or-int/2addr v11, v13

    const/high16 v13, 0x800000

    or-int/2addr v11, v13

    invoke-virtual {v12, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v7, v10, -0x1

    :goto_3
    if-ltz v7, :cond_3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_0

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->exported:Z

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_0

    invoke-interface {v5, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    if-nez v9, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {p0, v9, v6, v5}, Lcom/android/internal/app/ResolverListController;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Ljava/util/List;)V

    if-nez v3, :cond_7

    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v7, 0x0

    :goto_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_7

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v8, v11, -0x1

    :goto_5
    if-ltz v8, :cond_6

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v9
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverComparator;->getScore(Landroid/content/ComponentName;)F

    move-result v0

    return v0
.end method

.method isComponentFiltered(Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLastChosen(Landroid/content/Intent;Landroid/content/IntentFilter;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/high16 v3, 0x10000

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v4, Lcom/android/internal/app/ResolverListController$ComputeCallback;

    invoke-direct {v4, p0, v6}, Lcom/android/internal/app/ResolverListController$ComputeCallback;-><init>(Lcom/android/internal/app/ResolverListController;Ljava/util/concurrent/CountDownLatch;)V

    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/internal/app/ResolverComparator;

    iget-object v8, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    iput-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v7, p1}, Lcom/android/internal/app/ResolverComparator;->compute(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-static {p1, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string/jumbo v7, "ResolverListController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Time Cost: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v0, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v7, v4}, Lcom/android/internal/app/ResolverComparator;->setCallBack(Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v7, "ResolverListController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Compute & Sort was interrupted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public sortWithoutRankerService(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/app/ResolverComparator;

    iget-object v1, p0, Lcom/android/internal/app/ResolverListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/ResolverListController;->mTargetIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/app/ResolverListController;->mReferrerPackage:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ResolverComparator;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/android/internal/app/ResolverComparator$AfterCompute;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverComparator;->computeWithoutRankerService(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ResolverComparator;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateModel(Landroid/content/ComponentName;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverListController;->mResolverComparator:Lcom/android/internal/app/ResolverComparator;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ResolverComparator;->updateModel(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method
