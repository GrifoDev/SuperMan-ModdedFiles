.class public Lcom/android/launcher2/searchapp/SearchAppController;
.super Ljava/lang/Object;
.source "SearchAppController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_DATA:Ljava/lang/String; = "UpdateListData"

.field private static final APPS_LOADING_COUNT_FIRST:I = 0x258

.field private static final SEC_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final TAG:Ljava/lang/String; = "SearchAppController"

.field public static mIconDpi:I

.field public static mIsSearchAppOpen:Z

.field public static mListIconDpi:I

.field private static mSAController:Lcom/android/launcher2/searchapp/SearchAppController;

.field static reRunTask:Z

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private AppsMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private doesMoreApps_exist:Z

.field private mAppItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

.field private mLoadingCount:I

.field mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field mQueryAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/searchapp/SearchAppController;->reRunTask:Z

    sput-boolean v0, Lcom/android/launcher2/searchapp/SearchAppController;->mIsSearchAppOpen:Z

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/searchapp/SearchAppController;->sCollator:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    iput v1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryCount:I

    iput v1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I

    iput-boolean v1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->doesMoreApps_exist:Z

    sput-object p0, Lcom/android/launcher2/searchapp/SearchAppController;->mSAController:Lcom/android/launcher2/searchapp/SearchAppController;

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppController;->setIconDpi()I

    move-result v0

    sput v0, Lcom/android/launcher2/searchapp/SearchAppController;->mIconDpi:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/searchapp/SearchAppController;->mIsSearchAppOpen:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    sget-object v1, Lcom/android/launcher2/searchapp/SearchAppController;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lcom/android/launcher2/searchapp/SearchAppController;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/searchapp/SearchAppController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/searchapp/SearchAppController;Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/searchapp/SearchAppController;->getApplicationsWithClass(Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/searchapp/SearchAppController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/searchapp/SearchAppController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/searchapp/SearchAppController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher2/searchapp/SearchAppController;->sendUpdateDataIntent()V

    return-void
.end method

.method private declared-synchronized getApplicationsWithClass(Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentSkipListMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v6, p3

    if-nez v6, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppController;->getQueryAppsList()Ljava/util/List;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryCount:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    :cond_2
    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v24

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move-object v10, v9

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_14

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/AppItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v19, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;-><init>()V

    invoke-virtual {v15}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v20

    iget-object v0, v15, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_7

    const-string v5, ""

    :goto_2
    iget-boolean v14, v15, Lcom/android/launcher2/AppItem;->mHidden:Z

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/searchapp/AppInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v0, v15, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setComponentName(Landroid/content/ComponentName;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setClassName(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/android/launcher2/searchapp/AppInfo;->setHidden(Z)V

    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    iget-object v0, v15, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-direct {v9, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_3

    :try_start_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/launcher2/searchapp/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    :cond_3
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/launcher2/searchapp/AppInfo;->setAppName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setSection(Ljava/lang/String;)V

    iget-wide v0, v15, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setId(Ljava/lang/Long;)V

    invoke-virtual {v15}, Lcom/android/launcher2/AppItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setUserHandle(Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/compat/UserHandleCompat;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->makeKeyString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v26, "com.sec.android.app.launcher"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getSection()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;

    move-object/from16 v26, v0

    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    :goto_3
    add-int/lit8 v8, v8, 0x1

    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppController;->isCancelled()Z

    move-result v26

    if-eqz v26, :cond_8

    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I

    move/from16 v26, v0

    add-int v26, v26, v8

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v26

    monitor-exit p0

    throw v26

    :cond_7
    :try_start_4
    iget-object v5, v15, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v11

    move-object v9, v10

    :goto_5
    :try_start_5
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I

    move/from16 v26, v0

    if-nez v26, :cond_9

    const/16 v26, 0x258

    move/from16 v0, v26

    if-gt v8, v0, :cond_6

    :cond_9
    move-object v10, v9

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I

    :goto_6
    move/from16 v0, v24

    if-ge v12, v0, :cond_6

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v4, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v22

    new-instance v19, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-direct/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/searchapp/AppInfo;->setPackageName(Ljava/lang/String;)V

    new-instance v26, Landroid/content/ComponentName;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setComponentName(Landroid/content/ComponentName;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setClassName(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v26

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->getOemDialerClassName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_7
    if-eqz v9, :cond_13

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/android/launcher2/searchapp/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x0

    :cond_b
    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setAppName(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setSection(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mAppItems:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_c
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_d

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/AppItem;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual {v15}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    iget-wide v0, v15, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setId(Ljava/lang/Long;)V

    :cond_d
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ":"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v26, "com.sec.android.app.launcher"

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_f

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getSection()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;

    move-object/from16 v26, v0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_f
    :goto_9
    add-int/lit8 v8, v8, 0x1

    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/searchapp/SearchAppController;->isCancelled()Z

    move-result v26

    if-nez v26, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadingCount:I

    move/from16 v26, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v26, :cond_10

    const/16 v26, 0x258

    move/from16 v0, v26

    if-gt v8, v0, :cond_6

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    :cond_11
    :try_start_8
    iget v0, v4, Landroid/content/pm/ActivityInfo;->icon:I

    move/from16 v26, v0

    if-eqz v26, :cond_12

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/searchapp/AppInfo;->getClassName()Ljava/lang/String;

    move-result-object v26

    :goto_a
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_7

    :cond_12
    move-object/from16 v26, v20

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/searchapp/SearchAppController;->setLiveIcon(Landroid/content/Context;Lcom/android/launcher2/searchapp/AppInfo;)Z

    move-result v26

    if-nez v26, :cond_b

    invoke-virtual {v13}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v26

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/searchapp/AppInfo;->setListAppIcon(Landroid/content/res/Resources;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_8

    :catch_1
    move-exception v11

    :try_start_9
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    :catch_2
    move-exception v11

    goto/16 :goto_5

    :cond_14
    move-object v9, v10

    goto/16 :goto_4
.end method

.method public static getInstance()Lcom/android/launcher2/searchapp/SearchAppController;
    .locals 1

    sget-object v0, Lcom/android/launcher2/searchapp/SearchAppController;->mSAController:Lcom/android/launcher2/searchapp/SearchAppController;

    return-object v0
.end method

.method private getQueryAppsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "SearchAppController"

    const-string v3, "getPackageManager() return null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendUpdateDataIntent()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "UpdateListData"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/searchapp/SearchAppController;->mIsSearchAppOpen:Z

    return-void
.end method

.method public declared-synchronized getAppsMap()Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->AppsMap:Ljava/util/TreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMoreAppsListState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->doesMoreApps_exist:Z

    return v0
.end method

.method public loadApps(Z)V
    .locals 4

    const-string v0, "SearchAppController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadApps() : firstLoading = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mAppItems:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mOtherAppsList:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mQueryAppsList:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/searchapp/SearchAppController;->getApplicationsWithClass(Landroid/content/Context;Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/util/List;)V

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->IsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/searchapp/SearchAppController;->startAsyncTask()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;-><init>(Lcom/android/launcher2/searchapp/SearchAppController;Lcom/android/launcher2/searchapp/SearchAppController$1;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setIconDpi()I
    .locals 11

    const/16 v3, 0xf0

    iget-object v9, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v9, Lcom/android/launcher2/searchapp/SearchAppController;->mListIconDpi:I

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    const v9, 0x7f090005

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v9, 0x7f09016f

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/high16 v9, 0x1050000

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-ne v8, v5, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0

    :cond_1
    int-to-float v9, v8

    int-to-float v10, v5

    div-float/2addr v9, v10

    iget v10, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v7, v9

    const/16 v9, 0x78

    if-gt v7, v9, :cond_2

    const/16 v3, 0x78

    goto :goto_0

    :cond_2
    const/16 v9, 0xa0

    if-gt v7, v9, :cond_3

    const/16 v3, 0xa0

    goto :goto_0

    :cond_3
    if-gt v7, v3, :cond_4

    const/16 v3, 0xf0

    goto :goto_0

    :cond_4
    const/16 v9, 0x140

    if-gt v7, v9, :cond_5

    const/16 v3, 0x140

    goto :goto_0

    :cond_5
    const/16 v9, 0x1e0

    if-gt v7, v9, :cond_6

    const/16 v3, 0x1e0

    goto :goto_0

    :cond_6
    const/16 v3, 0x280

    goto :goto_0
.end method

.method public setLiveIcon(Landroid/content/Context;Lcom/android/launcher2/searchapp/AppInfo;)Z
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/searchapp/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/launcher2/searchapp/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const-string v3, "SearchAppController"

    const-string v4, "PackageManager is null in setLiveIcon()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "SearchAppController"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public setMoreAppsListState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/searchapp/SearchAppController;->doesMoreApps_exist:Z

    return-void
.end method

.method public startAsyncTask()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "SearchAppController"

    const-string v1, "startAsyncTask()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    sput-boolean v2, Lcom/android/launcher2/searchapp/SearchAppController;->reRunTask:Z

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;-><init>(Lcom/android/launcher2/searchapp/SearchAppController;Lcom/android/launcher2/searchapp/SearchAppController$1;)V

    iput-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppController;->mLoadApplication:Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/searchapp/SearchAppController$LoadApplicationLists;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
