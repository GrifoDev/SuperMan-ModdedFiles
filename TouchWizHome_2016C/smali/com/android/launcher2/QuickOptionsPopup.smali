.class public Lcom/android/launcher2/QuickOptionsPopup;
.super Ljava/lang/Object;
.source "QuickOptionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/QuickOptionsPopup$OptionItem;,
        Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;,
        Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;
    }
.end annotation


# static fields
.field private static final PUT_TO_SLEEP_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "QuickOptionsPopup"


# instance fields
.field private mAddAppsValid:Z

.field private mAddToSecureFolderValid:Z

.field private mAnchorItem:Lcom/android/launcher2/BaseItem;

.field private mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

.field private mAnchorView:Lcom/android/launcher2/AppIconView;

.field private mAppInfoValid:Z

.field private mClearBadgeValid:Z

.field private mContext:Landroid/content/Context;

.field private mConvertedAppItem:Lcom/android/launcher2/AppItem;

.field private mDisableableItem:Z

.field private mPopupHeight:I

.field private mPopupWidth:I

.field private mPutToSleepValid:Z

.field public mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

.field private final mResources:Landroid/content/res/Resources;

.field private mTopItem:Z

.field private mUninatallableItem:Z

.field private mUninstallValid:Z

.field private mUserIdForSecureFolderItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/QuickOptionsPopup;->PUT_TO_SLEEP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/AppIconView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->CENTER:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    iput v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    iput v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupHeight:I

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mClearBadgeValid:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAddToSecureFolderValid:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mPutToSleepValid:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUninstallValid:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAppInfoValid:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAddAppsValid:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mDisableableItem:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUninatallableItem:Z

    iput v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUserIdForSecureFolderItem:I

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mTopItem:Z

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickOptionsPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/QuickOptionsPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickOptionsPopup;->doShowAppInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/QuickOptionsPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickOptionsPopup;->doAddApps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/QuickOptionsPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickOptionsPopup;->doClearBadge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/QuickOptionsPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickOptionsPopup;->doAddToSecureFolder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/QuickOptionsPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickOptionsPopup;->doPutToSleep()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/QuickOptionsPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/QuickOptionsPopup;->doUninstall()Z

    move-result v0

    return v0
.end method

.method private canAddApps()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canAddToSecureFolder()Z
    .locals 7

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v4, "com.sec.knox.moveto.containerType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_0

    const-string v4, "com.sec.knox.moveto.containerId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUserIdForSecureFolderItem:I

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUserIdForSecureFolderItem:I

    iget-object v6, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    return v4
.end method

.method private canPutToSleep()Z
    .locals 13

    const/4 v12, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v1

    const-string v0, "extras"

    aput-object v0, v2, v11

    const-string v0, "resetTime"

    aput-object v0, v2, v3

    const-string v0, "notifiedCount"

    aput-object v0, v2, v5

    const-string v0, "isAppOptTarget"

    aput-object v0, v2, v12

    const-string v10, "package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?)"

    new-array v4, v12, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "1"

    aput-object v0, v4, v11

    const-string v0, "0"

    aput-object v0, v4, v3

    const-string v0, "2"

    aput-object v0, v4, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/QuickOptionsPopup;->PUT_TO_SLEEP_URI:Landroid/net/Uri;

    const-string v3, "package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?)"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v11, :cond_0

    const/4 v8, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v9, v8

    :goto_0
    return v9

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v9, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v9, v8

    goto :goto_0
.end method

.method private canRemoveBadge()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->hasBadge()Z

    move-result v0

    return v0
.end method

.method private canRemoveItem()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/HomeShortcutItem;->makeAppItem(Lcom/android/launcher2/HomeShortcutItem;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    :cond_0
    :goto_0
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppModel;->canUninstallable(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppModel;->canUninstallable2(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    iput-boolean v5, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUninatallableItem:Z

    move v3, v5

    :goto_1
    return v3

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    :cond_3
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v4}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppModel;->canDisableable(Lcom/android/launcher2/AppItem;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput-boolean v5, p0, Lcom/android/launcher2/QuickOptionsPopup;->mDisableableItem:Z

    move v3, v5

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private canShowAppInfo()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAddApps()Z
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    check-cast v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/launcher2/Workspace;->openFolderFromQuickOption(Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/FolderIconView;Z)V

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doAddToSecureFolder()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, ""

    invoke-virtual {v0, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/Intent;

    const-string v1, "knox.lwc.action.INSTALL_APK"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "from_app"

    const-string v2, "Launcher"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "userid"

    iget v2, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUserIdForSecureFolderItem:I

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "packages"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Add To Secure folder"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    move v6, v9

    :goto_1
    return v6

    :cond_0
    const-string v2, "APQO"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method private doClearBadge()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->removeFolderBadge()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_2

    const-string v2, "HSQO"

    :goto_1
    const-string v3, "Clear badge"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->removeBadge(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    :cond_2
    const-string v2, "APQO"

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_2
.end method

.method private doPutToSleep()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_1

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Add To Secure folder"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v0, v1}, Lcom/android/launcher2/PutToSleepAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/BaseItem;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_1
    const-string v2, "APQO"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method private doShowAppInfo()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Show App Info"

    const-wide/16 v4, -0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_0
    const-string v2, "APQO"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method private doUninstall()Z
    .locals 15

    const/4 v6, 0x0

    const/4 v14, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppsGrid;->getmMenuAppsGridFragment()Lcom/android/launcher2/MenuAppsGridFragment;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mUninatallableItem:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    iget-object v1, v1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    iget-object v3, v3, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    invoke-virtual {v4}, Lcom/android/launcher2/AppItem;->getPosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v13

    if-le v13, v14, :cond_1

    :cond_0
    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    :cond_1
    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/UninstallConfirmDialogFragment;->createAndShow(Landroid/content/Context;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/content/ComponentName;Ljava/lang/String;ILandroid/app/FragmentManager;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_7

    move v0, v11

    :goto_1
    sput-boolean v0, Lcom/android/launcher2/Launcher;->sDisableOrUninstallAppFromApps:Z

    :cond_3
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_8

    const-string v2, "HSQO"

    :goto_2
    const-string v3, "Uninstall or Disable"

    const-wide/16 v4, -0x1

    move v6, v12

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_3
    return v11

    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mDisableableItem:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    invoke-virtual {v8, v0}, Lcom/android/launcher2/MenuAppsGrid;->setDisableItem(Lcom/android/launcher2/AppItem;)V

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/QuickOptionsPopup;->mConvertedAppItem:Lcom/android/launcher2/AppItem;

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    if-le v2, v14, :cond_6

    :cond_5
    invoke-virtual {v9}, Lcom/android/launcher2/MenuAppsGridFragment;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v6

    :cond_6
    invoke-virtual {v0, v1, v6}, Lcom/android/launcher2/Launcher;->callDisableDialog(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Launcher$IPackageDeleteCompletedListener;)V

    goto :goto_0

    :cond_7
    move v0, v12

    goto :goto_1

    :cond_8
    const-string v2, "APQO"

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    move v11, v12

    goto :goto_3
.end method

.method public static isValidState()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "QuickOptionsPopup"

    const-string v3, "NPE occurred."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isValidType(Lcom/android/launcher2/BaseItem;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher2/HomeShortcutItem;

    check-cast p0, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v0, p0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/launcher2/HomeShortcutItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const-string v0, "QuickOptionsPopup"

    const-string v1, "dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getAnchorView()Lcom/android/launcher2/AppIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public show()Z
    .locals 25

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickOptionsPopup;->canRemoveBadge()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mClearBadgeValid:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickOptionsPopup;->canAddToSecureFolder()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddToSecureFolderValid:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickOptionsPopup;->canPutToSleep()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPutToSleepValid:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickOptionsPopup;->canRemoveItem()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mUninstallValid:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickOptionsPopup;->canShowAppInfo()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAppInfoValid:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/QuickOptionsPopup;->canAddApps()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddAppsValid:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.canRemoveBadge:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mClearBadgeValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 2.canAddToSecureFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddToSecureFolderValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 3.canPutToSleep:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPutToSleepValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 4.canRemoveItem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mUninstallValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 4.canShowAppInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAppInfoValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 5.canAddApps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddAppsValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v2, "QuickOptionsPopup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mClearBadgeValid:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddToSecureFolderValid:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPutToSleepValid:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mUninstallValid:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAppInfoValid:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddAppsValid:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03003e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v2, 0x7f1000d3

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const v2, 0x7f1000d4

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ListView;

    const v2, 0x7f1000d2

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v2, 0x7f1000d5

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090292

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090291

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    new-instance v2, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v6, 0x1

    invoke-direct {v2, v12, v3, v4, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mClearBadgeValid:Z

    if-eqz v2, :cond_1

    new-instance v17, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0800a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/QuickOptionsPopup$1;)V

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->CLEAR_BADGE:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    # setter for: Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    invoke-static {v0, v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$402(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddToSecureFolderValid:Z

    if-eqz v2, :cond_2

    new-instance v17, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020091

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/QuickOptionsPopup$1;)V

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->ADD_TO_SECURE_FOLDER:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    # setter for: Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    invoke-static {v0, v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$402(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPutToSleepValid:Z

    if-eqz v2, :cond_3

    new-instance v17, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0800a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020095

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/QuickOptionsPopup$1;)V

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->PUT_TO_SLEEP:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    # setter for: Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    invoke-static {v0, v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$402(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mUninstallValid:Z

    if-eqz v2, :cond_4

    new-instance v17, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mUninatallableItem:Z

    if-eqz v2, :cond_a

    const v2, 0x7f0800a4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mUninatallableItem:Z

    if-eqz v2, :cond_b

    const v2, 0x7f020096

    :goto_2
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/QuickOptionsPopup$1;)V

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->UNINSTALL:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    # setter for: Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    invoke-static {v0, v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$402(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAppInfoValid:Z

    if-eqz v2, :cond_5

    new-instance v17, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020092

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/QuickOptionsPopup$1;)V

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->APP_INFO:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    # setter for: Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    invoke-static {v0, v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$402(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAddAppsValid:Z

    if-eqz v2, :cond_6

    new-instance v17, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f020090

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/QuickOptionsPopup$1;)V

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;->ADD_APPS:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    # setter for: Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->mOption:Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;
    invoke-static {v0, v2}, Lcom/android/launcher2/QuickOptionsPopup$OptionItem;->access$402(Lcom/android/launcher2/QuickOptionsPopup$OptionItem;Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;)Lcom/android/launcher2/QuickOptionsPopup$OptionItem$OPTION;

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v1, Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mContext:Landroid/content/Context;

    const v4, 0x7f030040

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher2/QuickOptionsPopup$OptionItemAdapter;-><init>(Lcom/android/launcher2/QuickOptionsPopup;Landroid/content/Context;ILjava/util/List;Lcom/android/launcher2/QuickOptionsPopup$1;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/launcher2/QuickOptionsPopup$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/android/launcher2/QuickOptionsPopup$1;-><init>(Lcom/android/launcher2/QuickOptionsPopup;Ljava/util/ArrayList;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/widget/ListView;->measure(II)V

    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f09029a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupHeight:I

    const/4 v15, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher2/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "Workspace.HomeOnly.CellX"

    :goto_3
    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupHeight:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v3

    sub-int v23, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getIconDestination()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_7
    :goto_4
    :pswitch_0
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    sget-object v3, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    if-ne v2, v3, :cond_13

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    :cond_8
    :goto_5
    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$2;->$SwitchMap$com$android$launcher2$QuickOptionsPopup$AnchorPosition:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    invoke-virtual {v3}, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :goto_6
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v2, :cond_9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mTopItem:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_7
    sget-boolean v2, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v14, Landroid/graphics/LightingColorFilter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v14, v2, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher2/AppIconView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int v6, v6, v22

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v24, v24, v23

    move/from16 v0, v24

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_a
    const v2, 0x7f0800a1

    goto/16 :goto_1

    :cond_b
    const v2, 0x7f020094

    goto/16 :goto_2

    :cond_c
    const-string v2, "Workspace.CellX"

    goto/16 :goto_3

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getHotseatItemcount()I

    move-result v16

    const/4 v2, 0x1

    move/from16 v0, v16

    if-le v0, v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    if-nez v2, :cond_d

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    if-ne v2, v0, :cond_7

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    goto/16 :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    if-nez v2, :cond_10

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupHeight:I

    if-ge v2, v3, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mTopItem:Z

    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    iget v2, v2, Lcom/android/launcher2/HomeItem;->cellX:I

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v15, :cond_f

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    goto :goto_9

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    rem-int/2addr v2, v13

    if-nez v2, :cond_12

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTop()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupHeight:I

    if-ge v2, v3, :cond_7

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mTopItem:Z

    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    rem-int/2addr v2, v13

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v13, :cond_11

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    sget-object v3, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->RIGHT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    if-ne v2, v3, :cond_8

    sget-object v2, Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;->LEFT:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorPosition:Lcom/android/launcher2/QuickOptionsPopup$AnchorPosition;

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v22, v2, 0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mTopItem:Z

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0e002d

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0e002a

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_6

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v4}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v22, v2, v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mTopItem:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getIconSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0e002b

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_6

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mAnchorView:Lcom/android/launcher2/AppIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v22, v2, 0x2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mTopItem:Z

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0e002c

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mPopupWidth:I

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v3, v10, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/QuickOptionsPopup;->mQuickOptionsPopupWindow:Landroid/widget/PopupWindow;

    const v3, 0x7f0e0029

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_6

    :cond_17
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_18
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto/16 :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
