.class public Lcom/android/launcher2/InstallShortcutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallShortcutReceiver.java"


# static fields
.field public static final ACTION_INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final EXTRA_SHORTCUT_LIVE_ICON_COMPONENT:Ljava/lang/String; = "liveicon_cmpname"

.field public static final EXTRA_SHORTCUT_USER_ID:Ljava/lang/String; = "userid"

.field public static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field public static final SHORTCUT_MIMETYPE:Ljava/lang/String; = "com.android.launcher/shortcut"

.field private static final TAG:Ljava/lang/String; = "InstallShortcutReceiver"

.field private static final mCoordinates:[I

.field public static final sAddItemLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/InstallShortcutReceiver;->sAddItemLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static convertToKnoxLiveIconActivityIfPossible(Landroid/content/Context;Landroid/content/Intent;J)V
    .locals 8

    const-string v5, "liveicon_cmpname"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v5, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "liveicon_cmpname"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "InstallShortcutReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Knox Live icon - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-static {p0, v0, v4}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "InstallShortcutReceiver"

    const-string v6, "convertToKnoxLiveIconActivityIfPossible : true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v5, "InstallShortcutReceiver"

    const-string v6, "convertToLauncherActivityIfPossible : false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static convertToLauncherActivityIfPossible(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 6

    invoke-static {p2}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v1

    const-string v3, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/android/launcher2/AppItem;->makeLaunchIntent(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "InstallShortcutReceiver"

    const-string v4, "convertToLauncherActivityIfPossible : true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, "InstallShortcutReceiver"

    const-string v4, "convertToLauncherActivityIfPossible : false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createPageAddShortcut(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v4

    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    if-nez v3, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-static {p1, v5}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, v4}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v5, :cond_3

    iget-object v5, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/launcher2/Workspace;->insertWorkspaceScreen(IZ)Lcom/android/launcher2/CellLayout;

    :goto_1
    iget-object v5, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/QuickViewWorkspace;->updateAddScreen()V

    goto :goto_0

    :cond_3
    iget-object v5, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v5}, Lcom/android/launcher2/HomeView;->addPage()V

    goto :goto_1
.end method

.method private hasActivityForComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 6

    invoke-static {p1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

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

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z
    .locals 19

    const/16 v16, 0x0

    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/launcher2/LauncherModel;->findLastEmptyCell(Landroid/content/Context;[IIII)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    const-string v3, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    if-eqz v17, :cond_4

    if-eqz v2, :cond_4

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v11

    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v3

    const-wide/16 v6, -0x64

    sget-object v4, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v5, 0x0

    aget v9, v4, v5

    sget-object v4, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v5, 0x1

    aget v10, v4, v5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher2/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;JIIIZ)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v15

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    if-eqz v3, :cond_3

    if-nez v11, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_1
    const-wide/16 v4, -0x64

    iput-wide v4, v15, Lcom/android/launcher2/HomeShortcutItem;->container:J

    move/from16 v0, p3

    iput v0, v15, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v15, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    sget-object v3, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v15, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    iget-wide v4, v15, Lcom/android/launcher2/HomeShortcutItem;->container:J

    iget v3, v15, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    invoke-virtual {v14, v4, v5, v3}, Lcom/android/launcher2/HomeView;->getCellLayout(JI)Lcom/android/launcher2/CellLayout;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->isBouncingAnimationRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayout;->reset()V

    :cond_2
    invoke-virtual {v12, v15}, Lcom/android/launcher2/CellLayout;->addItem(Lcom/android/launcher2/BaseItem;)Z

    const-string v3, "InstallShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addShortcut is added on screen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/InstallShortcutReceiver;->mCoordinates:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notify : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    const/16 v16, 0x1

    :cond_4
    return v16

    :cond_5
    const-string v3, "InstallShortcutReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addShortcut, Could not find CellLayout : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", screen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private restoredShortcut(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 16

    const-string v13, "SEC_CONTACT_SHORTCUT_RESTORED"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v13, ","

    const/4 v14, 0x2

    invoke-virtual {v7, v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    const-string v13, "InstallShortcutReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RESTORED, restored : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "RESTORED"

    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :try_start_0
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const-string v13, "InstallShortcutReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RESTORED, restoreID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string v13, "com.android.contacts"

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string v13, "intent"

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v14, v6

    const/4 v13, 0x1

    invoke-static {v14, v15, v13}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v11, v12, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_0

    const-string v13, "InstallShortcutReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RESTORED failed, rowID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportHomeModeChange()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "InstallShortcutReceiver"

    const-string v14, "RESTORED another table start"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->getCurrentDBHomeOnlyMode()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v10, "favorites_homeApps"

    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://com.sec.android.app.launcher.settings/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "?notify=true"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v11, v12, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_0

    const-string v13, "InstallShortcutReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RESTORED failed, rowID : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v13, "InstallShortcutReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "RESTORED, result : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v13, 0x1

    :goto_2
    return v13

    :catch_0
    move-exception v3

    const/4 v13, 0x1

    goto :goto_2

    :cond_1
    const-string v10, "favorites_homeOnly"

    goto :goto_0

    :cond_2
    const-string v13, "InstallShortcutReceiver"

    const-string v14, "RESTORED failed, not have AUTHORITY"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 22

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    array-length v3, v9

    if-lez v3, :cond_1

    array-length v4, v9

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v12, v9, v3

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    :cond_2
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_3
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v16

    const-string v3, "profile"

    move-wide/from16 v0, v16

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v14, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "component="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "intent"

    aput-object v6, v4, v5

    const-string v5, "intent like ? or intent like ?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "%component="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v18, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "%component="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v21, v10, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v3, v15

    goto :goto_1
.end method

.method private shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 14

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "component="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    array-length v2, v9

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    aget-object v2, v9, v2

    const-string v3, "\\;"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v2, "InstallShortcutReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shortcutExistsOnHomeOnlyMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v3, v4

    const-string v4, "(trim(title,\'\u00a0\')=? or trim(title)=?) and intent like ?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    const/4 v6, 0x1

    aput-object v11, v5, v6

    const/4 v6, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%component="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v10

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 30

    const-string v26, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v26, "android.intent.extra.shortcut.INTENT"

    const-class v27, Landroid/content/Intent;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_2

    const-string v26, "android.intent.extra.shortcut.ICON_RESOURCE"

    const-class v27, Landroid/content/Intent$ShortcutIconResource;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v26

    if-eqz v26, :cond_2

    const-string v26, "android.intent.extra.shortcut.ICON"

    const-class v27, Landroid/graphics/Bitmap;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/InstallShortcutReceiver;->isValidExtraType(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_3

    :cond_2
    const-string v26, "InstallShortcutReceiver"

    const-string v27, "Invalid install shortcut intent case 1"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v26, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const-string v26, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v14, :cond_4

    if-nez v17, :cond_5

    :cond_4
    const-string v26, "InstallShortcutReceiver"

    const-string v27, "Invalid install shortcut intent case 2"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v14}, Lcom/android/launcher2/InstallShortcutReceiver;->restoredShortcut(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v26

    if-eqz v26, :cond_6

    const-string v26, "InstallShortcutReceiver"

    const-string v27, "restored shortcut return"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    invoke-static {v14}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v26

    if-nez v26, :cond_7

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v14, v1}, Lcom/android/launcher2/Utilities;->hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_7

    const-string v26, "InstallShortcutReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Ignoring malicious intent "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_8

    const-string v26, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_8
    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v15

    :cond_9
    invoke-static {v14}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v26

    if-eqz v26, :cond_a

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v5, v0, :cond_a

    const-string v26, "InstallShortcutReceiver"

    const-string v27, "This shortcut is disabled or removed application!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    const-string v26, "InstallShortcutReceiver"

    const-string v27, "This shortcut is disabled or removed application!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/4 v13, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v26

    if-eqz v26, :cond_13

    const-string v26, "android.intent.action.MAIN"

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    if-eqz v26, :cond_b

    const-string v26, "com.samsung.knox.rcp.components"

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    const-string v26, "duplicate"

    const/16 v27, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v26

    if-eqz v26, :cond_c

    const/4 v13, 0x0

    :cond_b
    :goto_1
    if-nez v13, :cond_f

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    if-eqz v26, :cond_f

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/InstallShortcutReceiver;->hasActivityForComponent(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-static {v14}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v26

    if-eqz v26, :cond_d

    const-string v26, "InstallShortcutReceiver"

    const-string v27, "This shortcut is same with application!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/4 v13, 0x1

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/android/launcher2/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v26

    if-eqz v26, :cond_f

    const-string v26, "InstallShortcutReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "This component("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ") exist in DB. Show duplicate toast popup"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    const-string v26, "com.samsung.android.themestore"

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_f

    const-string v26, "InstallShortcutReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "This component("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ") have no ACTION_MAIN"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v26, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v23

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v24

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v26

    if-eqz v26, :cond_15

    const-string v26, "com.samsung.knox.rcp.components"

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    const-string v26, "userid"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_14

    const-string v26, "userid"

    const/16 v27, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/InstallShortcutReceiver;->convertToKnoxLiveIconActivityIfPossible(Landroid/content/Context;Landroid/content/Intent;J)V

    :goto_2
    const-string v26, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    const-string v26, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v14, v2, v3}, Lcom/android/launcher2/LauncherModel;->shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;J)Z

    move-result v26

    if-eqz v26, :cond_16

    const v26, 0x7f09000d

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v17, v27, v28

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    :goto_3
    const-string v26, "InstallShortcutReceiver"

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v26

    if-nez v26, :cond_20

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v19, :cond_10

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/LauncherApplication;->getPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v6, v1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    :cond_10
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v26

    if-gtz v26, :cond_20

    new-instance v11, Landroid/content/Intent;

    const-string v26, "android.intent.action.MAIN"

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v26, "android.intent.category.HOME"

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v11, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    const/4 v8, 0x0

    if-eqz v9, :cond_1f

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_11
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_1f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    const-string v27, "com.sec.android.app.easylauncher"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_12

    const-string v27, "com.android.settings"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11

    :cond_12
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_13
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v26

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lcom/android/launcher2/InstallShortcutReceiver;->shortcutExistsOnHomeOnlyMode(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v26

    if-eqz v26, :cond_f

    goto/16 :goto_0

    :cond_14
    const-string v26, "InstallShortcutReceiver"

    const-string v27, "Knox live icon but There is no knox id or normal knox icon"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v14}, Lcom/android/launcher2/InstallShortcutReceiver;->convertToLauncherActivityIfPossible(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_16
    sget-object v27, Lcom/android/launcher2/InstallShortcutReceiver;->sAddItemLock:Ljava/lang/Object;

    monitor-enter v27

    const/16 v21, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v26

    if-eqz v26, :cond_17

    const/16 v26, 0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_17

    const/16 v21, 0x1

    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/LauncherModel;->getLastItemScreen(Landroid/content/Context;)I

    move-result v21

    const/16 v26, -0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-ne v0, v1, :cond_18

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v26

    if-eqz v26, :cond_1c

    const/16 v21, 0x1

    :cond_18
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v10

    if-nez v10, :cond_19

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v22

    add-int/lit8 v26, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-lt v0, v1, :cond_1d

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/InstallShortcutReceiver;->createPageAddShortcut(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v10

    :cond_19
    :goto_6
    if-eqz v10, :cond_1e

    if-eqz v15, :cond_1a

    iget-object v0, v15, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    iget-object v0, v15, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->isQuickViewWorkspaceOpened()Z

    move-result v26

    if-eqz v26, :cond_1a

    iget-object v0, v15, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher2/QuickViewWorkspace;->updateTitleBar()V

    :cond_1a
    const v26, 0x7f09000e

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aput-object v17, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v26

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    sget-boolean v26, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v26, :cond_1b

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v28, 0x200f

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_1b
    :goto_7
    monitor-exit v27

    goto/16 :goto_3

    :catchall_0
    move-exception v26

    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v26

    :cond_1c
    const/16 v21, 0x0

    goto :goto_5

    :cond_1d
    add-int/lit8 v21, v21, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/InstallShortcutReceiver;->installShortcut(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v10

    goto :goto_6

    :cond_1e
    const v26, 0x7f09008d

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v16

    goto :goto_7

    :cond_1f
    const-string v26, "InstallShortcutReceiver"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Silent install shortcut due to none PreferredActivities count : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x1

    move/from16 v0, v26

    if-gt v8, v0, :cond_0

    :cond_20
    if-eqz v15, :cond_21

    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-static {v15, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_21
    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
