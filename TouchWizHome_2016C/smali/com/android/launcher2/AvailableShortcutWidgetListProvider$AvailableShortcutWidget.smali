.class Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;
.super Ljava/lang/Object;
.source "AvailableShortcutWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableShortcutWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableShortcutWidget"
.end annotation


# instance fields
.field private final mCanUninstall:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mFolderTitle:Ljava/lang/String;

.field private final mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

.field final synthetic this$0:Lcom/android/launcher2/AvailableShortcutWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 5

    iput-object p1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->this$0:Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mFolderTitle:Ljava/lang/String;

    new-instance v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v2}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconWithTray:Z

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    # getter for: Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, p4, v3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v1

    # getter for: Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->access$100(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;)Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v2, v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v2, v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v3, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method


# virtual methods
.method public canUninstall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    return v0
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 2

    new-instance v0, Lcom/android/launcher2/HomePendingItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->mTitle:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCellSpan([I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    aput v1, p1, v0

    aput v1, p1, v1

    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getFolderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mFolderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUser()Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public setFolderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mFolderTitle:Ljava/lang/String;

    return-void
.end method
