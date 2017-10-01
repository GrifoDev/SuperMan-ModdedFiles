.class public Lcom/android/launcher2/HomeLoader;
.super Ljava/lang/Object;
.source "HomeLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Launcher.HomeLoader"


# instance fields
.field private final mBadgeCache:Lcom/android/launcher2/BadgeCache;

.field private final mLauncherApp:Lcom/android/launcher2/LauncherApplication;

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private final mPkgResCache:Lcom/android/launcher2/PkgResCache;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;Lcom/android/launcher2/BadgeCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    iput-object p2, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iput-object p3, p0, Lcom/android/launcher2/HomeLoader;->mBadgeCache:Lcom/android/launcher2/BadgeCache;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private checkAddHomeItem(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            ">;",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeItem;

    instance-of v6, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v6, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Lcom/android/launcher2/PkgResCache$CacheKey;

    iget-object v7, v4, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-direct {v6, v1, v7}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v0, v1, p4}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/LauncherActivityInfoCompat;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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

    iget-object v4, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

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

.method private refreshShortcutAndInfo(Lcom/android/launcher2/HomeItem;Landroid/content/ComponentName;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    move-object v6, p1

    check-cast v6, Lcom/android/launcher2/HomeShortcutItem;

    const/4 v0, 0x0

    iget-object v2, v6, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_4

    iget-object v10, v6, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_0

    invoke-static {v2}, Lcom/android/launcher2/HomeItem;->isAppShortcut(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v11, p1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v10, p2, v11}, Lcom/android/launcher2/PkgResCache;->remove(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    :cond_1
    new-instance v7, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v7}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    iget-object v11, p1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v10, v7, v2, v11}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v10, v7, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_2

    iget-object v10, v7, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v11, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v10, v11, :cond_2

    iget-object v10, v7, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v10}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    :cond_2
    iget-object v10, v7, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v10, v7, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v7, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v10, v6, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_3
    iget v10, v6, Lcom/android/launcher2/HomeShortcutItem;->isDisabled:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v10}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_4
    :goto_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_5
    invoke-virtual {v6}, Lcom/android/launcher2/HomeShortcutItem;->isPromise()Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v10, 0x26

    invoke-virtual {v6, v10}, Lcom/android/launcher2/HomeShortcutItem;->hasStatusFlag(I)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "android.intent.category.LAUNCHER"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    const/high16 v12, 0x10000

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-nez v5, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_a

    :goto_1
    return v8

    :cond_6
    iget-object v10, v6, Lcom/android/launcher2/HomeShortcutItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/launcher2/LauncherProvider;->getShortcutInfo(Lcom/android/launcher2/HomeItem;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v7

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v10}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v11, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-ne v10, v11, :cond_7

    move v4, v9

    :goto_2
    if-eqz v4, :cond_4

    iget-object v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    iget-object v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v11, v6, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eq v10, v11, :cond_4

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v10

    sget-object v11, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v11}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v10

    iget-object v11, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v11, v8}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    move v4, v8

    goto :goto_2

    :cond_8
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v10, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v1, v2}, Lcom/android/launcher2/Utilities;->getDrawableForIconTray(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v10, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v11

    iget v11, v11, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v12

    iget v12, v12, Lcom/android/launcher2/IconConfig;->mIconHeight:I

    invoke-static {v1, v10, v11, v12}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_9
    iget-object v10, v7, Lcom/android/launcher2/HomeShortcutItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v10}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_a
    iput-object v3, v6, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    :cond_b
    iget-object v10, v6, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    iput-object v10, v6, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    iput-object v10, v6, Lcom/android/launcher2/HomeShortcutItem;->promisedIntent:Landroid/content/Intent;

    iput v8, v6, Lcom/android/launcher2/HomeShortcutItem;->status:I

    iput-boolean v9, v6, Lcom/android/launcher2/HomeShortcutItem;->mDBupdate:Z

    const/4 v0, 0x1

    iget-object v8, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/HomeShortcutItem;->updateIcon(Lcom/android/launcher2/PkgResCache;)V

    :cond_c
    move v8, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    iget-object v6, v0, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v6, p4}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    sget-object v6, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v7, v0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v7}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v6, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    sget-object v6, Lcom/android/launcher2/LauncherModel;->BACKUP_POSITION_PKG_LIST:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/HomeLoader;->mLauncherApp:Lcom/android/launcher2/LauncherApplication;

    const-string v7, "com.sec.android.app.launcher.prefs"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, v0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, p2, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method updateBadgeCounts(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    instance-of v7, v3, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v7, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    iget-object v2, v4, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    iget-object v7, v3, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_1

    iget-object v7, v3, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v7, v8, :cond_0

    invoke-static {v2}, Lcom/android/launcher2/HomeItem;->isAppShortcutInDetail(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v7, Lcom/android/launcher2/BadgeCache$CacheKey;

    iget-object v8, v3, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-direct {v7, v1, v8}, Lcom/android/launcher2/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, v4, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    if-eq v7, v8, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Lcom/android/launcher2/HomeShortcutItem;->mBadgeCount:I

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v5
.end method

.method public updatePackage(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            ">;",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v11

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v9

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v12

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/HomeLoader;->removePackage(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/HomeItem;

    iget-object v0, v7, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v16

    if-nez v16, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v16

    if-eqz v16, :cond_4

    :cond_3
    instance-of v0, v7, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v16, v7

    check-cast v16, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/HomeShortcutItem;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    :cond_4
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    sget-object v16, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v0, v7, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v18

    aget v16, v16, v18

    packed-switch v16, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {v12, v5}, Lcom/android/launcher2/HomeLoader;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v16

    if-nez v16, :cond_5

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    :pswitch_1
    move-object/from16 v0, p8

    invoke-virtual {v11, v5, v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lcom/android/launcher2/HomeLoader;->refreshShortcutAndInfo(Lcom/android/launcher2/HomeItem;Landroid/content/ComponentName;)Z

    move-result v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p5

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getAllProviders()Ljava/util/List;

    move-result-object v15

    const/4 v10, 0x0

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v8, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/4 v10, 0x1

    :cond_8
    if-nez v10, :cond_9

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/HomeLoader;->mPkgMgr:Landroid/content/pm/PackageManager;

    move-object/from16 v16, v0

    const/16 v18, 0x2

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/android/launcher2/HomeLoader;->isComponentActive(Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    if-eqz v16, :cond_9

    const/4 v10, 0x1

    :cond_9
    :goto_2
    if-nez v10, :cond_a

    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :catch_0
    move-exception v6

    const-string v16, "Launcher.HomeLoader"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Can\'t find widget component info : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_a
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v16

    if-eqz v16, :cond_2

    instance-of v0, v7, Lcom/android/launcher2/HomeWidgetItem;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object v14, v7

    check-cast v14, Lcom/android/launcher2/HomeWidgetItem;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/launcher2/HomeWidgetItem;->hasRestoreFlag(I)Z

    move-result v16

    if-eqz v16, :cond_2

    iget v0, v14, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, -0xb

    move/from16 v0, v16

    iput v0, v14, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    iget v0, v14, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    iput v0, v14, Lcom/android/launcher2/HomeWidgetItem;->restoreStatus:I

    move-object/from16 v0, p6

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/android/launcher2/HomeLoader;->checkAddHomeItem(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updatePackageAvailability(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            ">;",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    if-eqz p4, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    iget-object v4, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v6, :cond_1

    iget-object v4, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v6, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    instance-of v4, v1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v4, :cond_3

    move-object v4, v1

    check-cast v4, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeShortcutItem;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0, p8}, Lcom/android/launcher2/compat/LauncherAppsCompat;->isActivityEnabledForProfile(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/android/launcher2/HomeLoader;->refreshShortcutAndInfo(Lcom/android/launcher2/HomeItem;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    sget-object v5, Lcom/android/launcher2/HomeLoader$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v6, v1, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v5, v1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v5, p8}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/HomeLoader;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v5}, Lcom/android/launcher2/PkgResCache;->getUnavailableIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/android/launcher2/HomeItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/launcher2/HomeItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object v5, v1, Lcom/android/launcher2/HomeItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v5, p8}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/HomeItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, p3, p8}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, p2, v3, p7, p8}, Lcom/android/launcher2/HomeLoader;->checkAddHomeItem(Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lcom/android/launcher2/compat/UserHandleCompat;)V

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
