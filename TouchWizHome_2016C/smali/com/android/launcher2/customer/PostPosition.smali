.class public Lcom/android/launcher2/customer/PostPosition;
.super Ljava/lang/Object;
.source "PostPosition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;,
        Lcom/android/launcher2/customer/PostPosition$CONTAINER;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DISABLED:I = -0x1

.field public static final OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "CUSTOMER.PostPosition"

.field private static mInstance:Lcom/android/launcher2/customer/PostPosition;


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public fakeFolder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

.field private mProvider:Lcom/android/launcher2/customer/PostPositionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->fakeFolder:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/customer/PostPosition;->mIsEnabled:Z

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;-><init>(Lcom/android/launcher2/customer/PostPosition;)V

    iput-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/customer/PostPosition;->execute(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/customer/PostPosition;->addToHomeWidget(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/customer/PostPosition;->homeAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/customer/PostPosition;->appsAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/customer/PostPosition;->addToAppsFolder(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addAppItemToApps(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v3, "CUSTOMER.PostPosition"

    const-string v4, "addAppItemToApps : info is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v4, v1, p2}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/launcher2/MenuAppModel;->appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private addToAppsFolder(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;J)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v4, v0, p2}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3, v1, p3, p4}, Lcom/android/launcher2/MenuAppModel;->addItemToFolder(Lcom/android/launcher2/AppItem;J)Z

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :goto_0
    return-void

    :cond_1
    const-string v3, "CUSTOMER.PostPosition"

    const-string v4, "addToAppsFolder MenuView is NULL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v3, "CUSTOMER.PostPosition"

    const-string v4, "Launcher Activity not yet created."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToHomeFolder(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;JLcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 15

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v14

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Lcom/android/launcher2/LauncherModel;->getHomeFolderById(Landroid/content/Context;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v11

    if-nez v11, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p3

    invoke-static {v2, v0, v1}, Lcom/android/launcher2/LauncherModel;->getHomeFolderById(Landroid/content/Context;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v11

    :cond_0
    if-eqz v11, :cond_3

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToHomeFolder() - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v11, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move-object/from16 v0, p5

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v4, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v4}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v2, v0, v1}, Lcom/android/launcher2/LauncherModel;->makeHomeShortcutItem(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12, v11}, Lcom/android/launcher2/HomeView;->setStateTargetFolder(Lcom/android/launcher2/FolderItem;)V

    invoke-virtual {v12, v13}, Lcom/android/launcher2/HomeView;->addShortcutItemsIntoExistingFolder(Ljava/util/List;)Lcom/android/launcher2/HomeFolderItem;

    :cond_2
    iget v2, v3, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    if-gez v2, :cond_5

    invoke-virtual {v11}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v6

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    iget-wide v4, v11, Lcom/android/launcher2/HomeFolderItem;->mId:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZZ)Landroid/content/ContentValues;

    :cond_3
    return-void

    :cond_4
    move-object/from16 v0, p5

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v4, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v4}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->getShorcutIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v14, v2, v4, v5}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget v6, v3, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    goto :goto_1
.end method

.method private addToHomeShortcut(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)Lcom/android/launcher2/HomeShortcutItem;
    .locals 22

    const-string v2, "CUSTOMER.PostPosition"

    const-string v5, "addToHomeShortcut()"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v13

    if-eqz v17, :cond_0

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p3

    iput v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "replace correct homeIndex to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/customer/PostPosition;->performHomeNewPage(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeNewPage:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher2/customer/PostPosition;->performHomeReplace(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    :cond_1
    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    aput v5, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    aput v5, v3, v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v19

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeReplace:Z

    if-eqz v2, :cond_9

    const/4 v15, 0x1

    :cond_2
    :goto_0
    if-nez v15, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v20

    const/16 v21, 0x0

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v21, v21, 0x1

    :cond_3
    move/from16 v18, v21

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    if-nez v15, :cond_5

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    move/from16 v0, v18

    if-eq v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    move/from16 v0, v18

    invoke-static {v2, v3, v0, v5, v6}, Lcom/android/launcher2/LauncherModel;->findNearEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v15

    :cond_4
    if-eqz v15, :cond_a

    move/from16 v4, v18

    :cond_5
    if-nez v15, :cond_6

    if-eqz v17, :cond_b

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/HomeView;->addPage()V

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :cond_6
    const/4 v7, 0x0

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v5, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v5}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-static {v2, v5, v0}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v7

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    const-wide/16 v8, -0x64

    const/4 v2, 0x0

    aget v11, v3, v2

    const/4 v2, 0x1

    aget v12, v3, v2

    move-object/from16 v5, v19

    move v10, v4

    invoke-virtual/range {v5 .. v13}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v16

    if-eqz v17, :cond_e

    const-wide/16 v8, -0x64

    move-object/from16 v0, v16

    iput-wide v8, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-object/from16 v0, v16

    iput v4, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    const/4 v2, 0x1

    aget v2, v3, v2

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9, v2}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->isBouncingAnimationRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v14}, Lcom/android/launcher2/CellLayout;->reset()V

    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    :goto_4
    const-string v2, "CUSTOMER.PostPosition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToHomeShortcut - HomeReadyState at screen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v16

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[IIIIZ)Z

    move-result v15

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/launcher2/LauncherModel;->findNearEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v15

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v2, v5}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v5, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v5}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    if-ne v2, v5, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->getShorcutIntent()Landroid/content/Intent;

    move-result-object v7

    goto/16 :goto_3

    :cond_d
    const-string v2, "CUSTOMER.PostPosition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToHomeShortcut() - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " page doesn\'t exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_e
    const-string v2, "CUSTOMER.PostPosition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addToHomeShortcut - No Ready at screen : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private addToHomeWidget(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 19

    const-string v2, "CUSTOMER.PostPosition"

    const-string v4, "addToHomeWidget()"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/customer/PostPosition;->performHomeNewPage(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeNewPage:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher2/customer/PostPosition;->performHomeReplace(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeReplace:Z

    if-eqz v2, :cond_2

    const/4 v15, 0x1

    :goto_0
    new-instance v17, Lcom/android/launcher2/HomeWidgetItem;

    const/4 v2, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher2/HomeWidgetItem;->setPosition(I)V

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[IIIIZ)Z

    move-result v15

    if-eqz v15, :cond_3

    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    const/4 v2, 0x1

    aget v2, v3, v2

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    :cond_1
    :goto_1
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    move-object/from16 v0, v17

    iput v2, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    const-wide/16 v4, -0x64

    move-object/from16 v0, v17

    iput-wide v4, v0, Lcom/android/launcher2/HomeWidgetItem;->container:J

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v2

    move-object/from16 v0, v17

    iput-object v2, v0, Lcom/android/launcher2/HomeWidgetItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherModel;->getWidgetItemByComponentName(Landroid/content/ComponentName;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const-string v2, "CUSTOMER.PostPosition"

    const-string v4, "addToHomeWidget() - Already Same widget Exist"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    aput v4, v3, v2

    const/4 v2, 0x1

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    aput v4, v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher2/LauncherModel;->findEmptyCell(Landroid/content/Context;[IIIIZ)Z

    move-result v15

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/customer/PostPosition;->performHomeNewPage(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "CUSTOMER.PostPosition"

    const-string v4, "addToHomeWidget() - with HomeReadyState"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v16

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/HomeView;->addWidgetFromIntent(Lcom/android/launcher2/HomeWidgetItem;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    new-instance v12, Landroid/appwidget/AppWidgetHost;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    const/16 v4, 0x400

    invoke-direct {v12, v2, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v12}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v13

    if-lez v13, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v14, v13, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, v17

    iput v13, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/launcher2/HomeWidgetItem;->container:J

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    const/4 v11, 0x0

    move-object/from16 v5, v17

    invoke-static/range {v4 .. v11}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    goto/16 :goto_2

    :cond_6
    const-string v2, "CUSTOMER.PostPosition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindAppWidgetIdIfAllowed() - Can\'t allow widgetID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p3}, Lcom/android/launcher2/customer/PostPosition;->retryWidgetAdd(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    goto/16 :goto_2

    :cond_7
    const-string v2, "CUSTOMER.PostPosition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addToHomeWidget() - Can\'t allow widgetID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private appsAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 31

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsAdd:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appsAdd() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-wide/16 v24, -0x1

    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsPreloadFolder:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v3, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getPreloadedFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;)J

    move-result-wide v24

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemRecord.AppsPreloadFolder is true = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-wide/32 v2, 0x1869f

    cmp-long v2, v24, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-lez v2, :cond_3

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add item to exist Folder in Apps. folderId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v6, v24

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v9

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/customer/PostPosition$5;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher2/customer/PostPosition$5;-><init>(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;JLcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Lcom/android/launcher2/LauncherModel;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v11, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v3, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)J

    move-result-wide v24

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemRecord.AppsPreloadFolder is false = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v3, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)J

    move-result-wide v24

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "itemRecord.AppsFolderName is not null. mPrefInfo.getFolderId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v24, v2

    if-lez v2, :cond_6

    const-wide/32 v2, 0x1869e

    cmp-long v2, v24, v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->fakeFolder:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuAppModel;->findItemByCompoName(Landroid/content/ComponentName;)Lcom/android/launcher2/AppItem;

    move-result-object v30

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->fakeFolder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temp_item.mId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v30

    iget-wide v4, v0, Lcom/android/launcher2/AppItem;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v23

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget v2, v2, Lcom/android/launcher2/AppItem;->mCell:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->createFolderFromPostPosition(ILjava/util/List;ZLjava/lang/String;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v3, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->removeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v12, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Grouping AppsFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v2, "CUSTOMER.PostPosition"

    const-string v3, "temp_item is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v23

    invoke-static {}, Lcom/android/launcher2/MenuAppLoader;->getApps()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher2/AppItem;

    if-nez v26, :cond_7

    const-string v2, "CUSTOMER.PostPosition"

    const-string v3, "item is null. so make temp item to write shared pref for ready info item"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->fakeFolder:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-wide/32 v20, 0x1869e

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/customer/PostPosition;->added:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v10, v3}, Lcom/android/launcher2/MenuAppModel;->appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsFolderName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add item as normal and write shared pref for ready info item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/customer/PostPosition;->addAppItemToApps(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)V

    const-string v2, "CUSTOMER.PostPosition"

    const-string v3, "Add item as normal in Apps"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private execute(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/customer/PostPositionProvider;->getItemRecord(Ljava/lang/String;Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;)Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not exist in PositionInfo - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/customer/PostPosition;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v0

    iget-boolean v2, v1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeAdd:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0, v0, p2, v1}, Lcom/android/launcher2/customer/PostPosition;->homeAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    :cond_2
    iget-boolean v2, v1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->AppsAdd:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, p2, v1}, Lcom/android/launcher2/customer/PostPosition;->appsAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    :cond_3
    iget-boolean v2, v1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->RemoveAfterPosition:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    iget-object v3, v1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/customer/PostPositionProvider;->deleteItem(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/launcher2/customer/PostPosition;
    .locals 2

    sget-object v0, Lcom/android/launcher2/customer/PostPosition;->mInstance:Lcom/android/launcher2/customer/PostPosition;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/customer/PostPosition;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/customer/PostPosition;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/customer/PostPosition;->mInstance:Lcom/android/launcher2/customer/PostPosition;

    :cond_0
    sget-object v0, Lcom/android/launcher2/customer/PostPosition;->mInstance:Lcom/android/launcher2/customer/PostPosition;

    return-object v0
.end method

.method private homeAdd(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 28

    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeAdd:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "homeAdd() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeCellX : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeCellY : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HomeReplace : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget-boolean v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeReplace:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->checkAndUpdateHomePositionAccordingly()V

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v6, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v6}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v27

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " will be added soon."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Lcom/android/launcher2/customer/PostPosition;->retryWidgetAdd(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    goto/16 :goto_0

    :cond_3
    const-string v5, "CUSTOMER.PostPosition"

    const-string v6, "There is no widget provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    if-eqz v5, :cond_e

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    const-wide/16 v8, -0x1

    move-object/from16 v0, p3

    iget-boolean v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomePreloadFolder:Z

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v6, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getPreloadedFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;)J

    move-result-wide v8

    :goto_1
    const-wide/32 v6, 0x1869f

    cmp-long v5, v8, v6

    if-nez v5, :cond_6

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " folder already removed by user."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v6, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v7, v10}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)J

    move-result-wide v8

    goto :goto_1

    :cond_6
    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_8

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/customer/PostPosition;->addToHomeFolder(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;JLcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    :cond_7
    :goto_2
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->updateResult(Z)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v6, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v5, v6, v7, v10}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)J

    move-result-wide v8

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v24

    invoke-static {v8, v9}, Lcom/android/launcher2/LauncherModel;->getHomeItemById(J)Lcom/android/launcher2/HomeItem;

    move-result-object v23

    if-nez v23, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v9}, Lcom/android/launcher2/LauncherModel;->getHomeFolderById(Landroid/content/Context;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v23

    :cond_9
    const-wide/16 v6, 0x0

    cmp-long v5, v8, v6

    if-lez v5, :cond_d

    if-eqz v23, :cond_d

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v11

    move-object/from16 v12, v23

    check-cast v12, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    const-wide/16 v14, -0x64

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/android/launcher2/HomeView;->completeAddFolderWithShortcutItem(Lcom/android/launcher2/HomeShortcutItem;Ljava/lang/String;JZZ)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v13

    :goto_3
    const/4 v15, 0x0

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v6, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v6}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/launcher2/LauncherModel;->makeHomeShortcutItem(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v15

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    iget-wide v0, v13, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v14 .. v22}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    sget-object v6, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v7, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-virtual {v5, v6, v7, v10}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->removeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-wide v0, v13, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V

    invoke-virtual {v13, v15}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_2

    :cond_a
    new-instance v13, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v13}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    iput-object v5, v13, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    iget-wide v14, v0, Lcom/android/launcher2/HomeItem;->container:J

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    move/from16 v16, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v17, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v12 .. v19}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    iget-wide v0, v13, Lcom/android/launcher2/HomeFolderItem;->mId:J

    move-wide/from16 v16, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v15, v23

    invoke-static/range {v14 .. v22}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v6, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->SHORTCUT:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v6}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->getShorcutIntent()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v15

    goto/16 :goto_4

    :cond_c
    const-string v5, "CUSTOMER.PostPosition"

    const-string v6, "homeAdd() - why you come to here?"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_d
    invoke-direct/range {p0 .. p3}, Lcom/android/launcher2/customer/PostPosition;->addToHomeShortcut(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeFolderName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    move-wide/from16 v20, v0

    const/16 v22, 0x1

    invoke-virtual/range {v17 .. v22}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V

    goto/16 :goto_2

    :cond_e
    invoke-direct/range {p0 .. p3}, Lcom/android/launcher2/customer/PostPosition;->addToHomeShortcut(Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)Lcom/android/launcher2/HomeShortcutItem;

    goto/16 :goto_2
.end method

.method private inArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    new-array v0, v6, [I

    iget-object v6, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    aget v6, v0, v5

    aget v7, v0, v4

    filled-new-array {v6, v7}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    iget v2, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    iget v6, p1, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_1

    aget v6, v0, v5

    if-ge v2, v6, :cond_1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v6, :cond_0

    aget v6, v0, v4

    if-ge v3, v6, :cond_0

    aget-object v6, v1, v2

    aput-boolean v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget v2, p2, Landroid/graphics/Rect;->left:I

    :goto_2
    iget v6, p2, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_4

    aget v6, v0, v5

    if-ge v2, v6, :cond_4

    iget v3, p2, Landroid/graphics/Rect;->top:I

    :goto_3
    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v6, :cond_3

    aget v6, v0, v4

    if-ge v3, v6, :cond_3

    aget-object v6, v1, v2

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_2

    :goto_4
    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_4
.end method

.method private isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    array-length v5, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, p2, v4

    iget-object v6, v2, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-nez v1, :cond_1

    iget-boolean v4, v2, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private isHomeReadyState(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)Z
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performHomeNewPage(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeNewPage:Z

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "CUSTOMER.PostPosition"

    const-string v2, "performHomeNewPage()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/launcher2/customer/PostPosition;->isHomeReadyState(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v1

    iget v2, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    if-ge v1, v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->addPage()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v1

    iget v2, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    if-le v1, v2, :cond_1

    :goto_1
    iput-boolean v3, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeNewPage:Z

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    iget v2, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/customer/PostPositionProvider;->disableHomeNewPage(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherProvider;->shiftScreenIndex(I)V

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private performHomeReplace(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 16

    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeReplace:Z

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "CUSTOMER.PostPosition"

    const-string v11, "performHomeReplace()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v10, "CUSTOMER.PostPosition"

    const-string v11, "performHomeReplace() return becuase homevew is null"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->allItems()Ljava/util/List;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/BaseItem;

    instance-of v11, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v11, :cond_4

    instance-of v11, v4, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v11, :cond_6

    :cond_4
    move-object v2, v4

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    if-ne v11, v12, :cond_5

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    if-ne v11, v12, :cond_5

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v12, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v12}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v12

    if-ne v11, v12, :cond_3

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    if-lt v11, v12, :cond_3

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    if-lt v11, v12, :cond_3

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_3

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_3

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    instance-of v11, v4, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v11, :cond_3

    move-object v2, v4

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    if-gt v11, v12, :cond_7

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    if-gt v11, v12, :cond_7

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v12, v2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v11, v12

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    if-le v11, v12, :cond_7

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v12, v2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v11, v12

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    if-le v11, v12, :cond_7

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v12, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v12}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v12

    if-ne v11, v12, :cond_3

    new-instance v6, Landroid/graphics/Rect;

    iget v11, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v12, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v13, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v14, v2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    iget v14, v2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v15, v2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    add-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/launcher2/customer/PostPosition;->inArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v9

    const-string v10, "CUSTOMER.PostPosition"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "performHomeReplace() - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " items removed."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v8}, Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellX:I

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanX:I

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    iget v13, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeCellY:I

    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WidgetSpanY:I

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, -0x1

    invoke-direct {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    iget v10, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeIndex:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v7}, Lcom/android/launcher2/customer/PostPosition;->deleteHomeArea(ILandroid/graphics/Rect;)V

    goto/16 :goto_0
.end method

.method private retryWidgetAdd(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v5

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/launcher2/customer/PostPosition$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/customer/PostPosition$4;-><init>(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Lcom/android/launcher2/LauncherModel;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public checkAndEnableProvider()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->isEnabled()J

    move-result-wide v0

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndEnableProvider() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher2/customer/PostPosition;->mIsEnabled:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteFolder(Lcom/android/launcher2/customer/PostPosition$CONTAINER;J)V
    .locals 8

    const-wide/32 v4, 0x1869f

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderNameId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getPreloadedFolderNameId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;J)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public deleteHomeArea(ILandroid/graphics/Rect;)V
    .locals 18

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "container"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, -0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "itemType"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "cellX"

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const-string v7, "cellY"

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const-string v7, "spanX"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "spanY"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v3, 0x1

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v3, 0x3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v3, 0x4

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v3, 0x5

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    new-instance v14, Landroid/graphics/Rect;

    add-int v3, v9, v16

    add-int/lit8 v3, v3, -0x1

    add-int v4, v10, v17

    add-int/lit8 v4, v4, -0x1

    invoke-direct {v14, v9, v10, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/android/launcher2/customer/PostPosition;->inArea(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    if-ne v11, v3, :cond_0

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "container="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v3, "CUSTOMER.PostPosition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHomeArea() - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " items removed."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/customer/PostPosition;->isHomeReadyState(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)Z

    move-result v4

    invoke-static {v3, v15, v4}, Lcom/android/launcher2/LauncherModel;->deleteItemsFromDatabase(Landroid/content/Context;Ljava/util/List;Z)V

    :cond_3
    return-void
.end method

.method public getSharedPrefInfo()Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->mPrefInfo:Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/customer/PostPosition;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetItem(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/customer/PostPositionProvider;->resetItem(Ljava/lang/String;)V

    return-void
.end method

.method public run(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CUSTOMER.PostPosition"

    const-string v3, "feature disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/customer/PostPosition$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/customer/PostPosition$1;-><init>(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public runHomeAdd(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V
    .locals 11

    iget-boolean v8, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->HomeAdd:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v8, "CUSTOMER.PostPosition"

    const-string v9, "runHomeAdd()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v8, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v8, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v9, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v9}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_2

    invoke-direct {p0, v0, v7}, Lcom/android/launcher2/customer/PostPosition;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v8, "CUSTOMER.PostPosition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runHomeAdd(): Can\'t find ActivityInfo. - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v8, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v9, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v9}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_3

    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v8}, Lcom/android/launcher2/customer/PostPosition;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "CUSTOMER.PostPosition"

    const-string v9, "Widget exist and will be added soon"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    move-object v2, v3

    new-instance v6, Lcom/android/launcher2/customer/PostPosition$3;

    invoke-direct {v6, p0, v2, v7, p1}, Lcom/android/launcher2/customer/PostPosition$3;-><init>(Lcom/android/launcher2/customer/PostPosition;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    if-eqz p2, :cond_6

    const/4 v8, 0x0

    iput-boolean v8, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->WorksOnUIThread:Z

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_4
    :try_start_1
    const-string v8, "CUSTOMER.PostPosition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find widget component info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v8, "CUSTOMER.PostPosition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t find widget component info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v8, "CUSTOMER.PostPosition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "runHomeAdd(): Wrong Component expression. - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/android/launcher2/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4, v6}, Lcom/android/launcher2/LauncherModel;->runOnMainThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public runHomeAdd(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CUSTOMER.PostPosition"

    const-string v3, "runHomeAdd() - feature disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v2, "CUSTOMER.PostPosition"

    const-string v3, "runHomeAdd() - All"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    invoke-virtual {v2}, Lcom/android/launcher2/customer/PostPositionProvider;->getItemRecordsNeedToPosition()[Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    iget v4, v0, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ItemType:I

    sget-object v5, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v5}, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v5

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher2/customer/PostPosition;->runHomeAdd(Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public runHomeWidgetAdd(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CUSTOMER.PostPosition"

    const-string v6, "feature disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/customer/PostPositionProvider;->hasWidgetToAdd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    sget-object v6, Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v5, p1, v6}, Lcom/android/launcher2/customer/PostPositionProvider;->getItemRecord(Ljava/lang/String;Lcom/android/launcher2/customer/PostPositionProvider$ITEM_TYPE;)Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "runHomeWidgetAdd() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;->ComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v6, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "CUSTOMER.PostPosition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " will be added soon."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/launcher2/customer/PostPosition$2;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/launcher2/customer/PostPosition$2;-><init>(Lcom/android/launcher2/customer/PostPosition;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;Lcom/android/launcher2/customer/PostPositionProvider$ItemRecord;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher2/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_3
    const-string v5, "CUSTOMER.PostPosition"

    const-string v6, "There is no widget provider"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setProvider(Lcom/android/launcher2/customer/PostPositionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition;->mProvider:Lcom/android/launcher2/customer/PostPositionProvider;

    return-void
.end method
