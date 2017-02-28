.class public Lcom/android/launcher2/PkgResCache;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PkgResCache$CacheKey;,
        Lcom/android/launcher2/PkgResCache$ActivityInfoCache;,
        Lcom/android/launcher2/PkgResCache$PkgEntry;,
        Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final EMPTY_CLASS_NAME:Ljava/lang/String; = "."

.field private static final FLAG_SUSPENDED:I = 0x40000000

.field private static final INITIAL_PACKAGE_CAPACITY:I = 0x50

.field public static LOAD_ALL:I = 0x0

.field public static LOAD_ICON:I = 0x0

.field public static LOAD_TITLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PkgResCache"

.field private static mDefaultIcon:Landroid/graphics/Bitmap;

.field private static mIconDpi:I


# instance fields
.field private mActivityInfoCache:Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field private mAppIconSize:I

.field private final mFolderIcon:Landroid/graphics/Bitmap;

.field private final mPkgCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher2/PkgResCache$CacheKey;",
            "Lcom/android/launcher2/PkgResCache$PkgEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private mTargetIconDpi:I

.field private final mUnavailableIcon:Landroid/graphics/Bitmap;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher2/PkgResCache;->LOAD_TITLE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/launcher2/PkgResCache;->LOAD_ICON:I

    sget v0, Lcom/android/launcher2/PkgResCache;->LOAD_TITLE:I

    sget v1, Lcom/android/launcher2/PkgResCache;->LOAD_ICON:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 14

    const/16 v13, 0x1e0

    const/16 v12, 0x140

    const/16 v11, 0xf0

    const/16 v10, 0xa0

    const/16 v9, 0x78

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    new-instance v7, Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/android/launcher2/PkgResCache$ActivityInfoCache;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    iput-object v7, p0, Lcom/android/launcher2/PkgResCache;->mActivityInfoCache:Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

    iput-object p1, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f090004

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    const v7, 0x7f09016e

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v7, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v7, 0x1050000

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v7, p0, Lcom/android/launcher2/PkgResCache;->mTargetIconDpi:I

    if-ne v6, v3, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v7, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    :goto_0
    const/high16 v7, 0x10d0000

    invoke-direct {p0, v4, v7}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    sput-object v7, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    const v7, 0x7f0200b5

    invoke-direct {p0, v0, v7}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    const v7, 0x7f02005f

    invoke-direct {p0, v0, v7}, Lcom/android/launcher2/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    const-string v7, "user"

    invoke-virtual {p1, v7}, Lcom/android/launcher2/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    iput-object v7, p0, Lcom/android/launcher2/PkgResCache;->mUserManager:Landroid/os/UserManager;

    return-void

    :cond_0
    int-to-float v7, v6

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v5, v7

    if-gt v5, v9, :cond_1

    sput v9, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_1
    if-gt v5, v10, :cond_2

    sput v10, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_2
    if-gt v5, v11, :cond_3

    sput v11, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_3
    if-gt v5, v12, :cond_4

    sput v12, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_4
    if-gt v5, v13, :cond_5

    sput v13, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_5
    const/16 v7, 0x280

    sput v7, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    goto :goto_0
.end method

.method private createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 4

    sget v1, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget v2, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getEntryForPackage(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)Lcom/android/launcher2/PkgResCache$PkgEntry;
    .locals 11

    new-instance v2, Landroid/content/ComponentName;

    const-string v7, "."

    invoke-direct {v2, p1, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v0, v2, p2}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PkgResCache$PkgEntry;

    if-nez v4, :cond_0

    new-instance v4, Lcom/android/launcher2/PkgResCache$PkgEntry;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    :goto_0
    monitor-exit v8

    if-eqz v1, :cond_1

    move-object v4, v5

    :goto_1
    return-object v5

    :cond_0
    if-eqz p3, :cond_2

    const/4 v1, 0x1

    move-object v5, v4

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    :cond_1
    monitor-enter v5

    :try_start_1
    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    const-string v7, ""

    iput-object v7, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    iget-object v7, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget v9, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v10, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v5

    :goto_2
    :try_start_2
    monitor-exit v5

    move-object v5, v4

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v4, 0x0

    const-string v7, "PkgResCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application not installed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception v7

    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    :catchall_2
    move-exception v7

    move-object v4, v5

    goto :goto_3

    :cond_2
    move-object v5, v4

    goto :goto_0
.end method

.method private getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/PkgResCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    sget v2, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/PkgResCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public static getIconDpi()I
    .locals 1

    sget v0, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    return v0
.end method

.method private loadIconIfNecessary(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$PkgEntry;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 15

    if-eqz p4, :cond_2

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v11, :cond_2

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    const/4 v2, 0x0

    sget v11, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget v13, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v14, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v11, v12, v13, v14}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    :cond_0
    if-nez v8, :cond_1

    sget v11, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iget-object v12, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    iget v13, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v14, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v11, v12, v13, v14}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    :cond_1
    if-eqz v8, :cond_2

    move-object/from16 v0, p2

    iput-object v8, v0, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    invoke-virtual {v11, v6, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v11, :cond_6

    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_1
    if-eqz v3, :cond_4

    iget-object v12, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget v11, v3, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v11, :cond_7

    iget-object v11, v3, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v12, v11}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_4
    :goto_3
    const/4 v10, 0x0

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v11, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v12, 0x40000000    # 2.0f

    and-int/2addr v11, v12

    if-eqz v11, :cond_9

    const/4 v10, 0x1

    :goto_4
    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v10, :cond_a

    :cond_5
    const/4 v4, 0x1

    :goto_5
    if-eqz v5, :cond_b

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v11

    sget-object v12, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v12}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v13, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v5, v11, v12, v13, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    iget-object v3, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    :cond_7
    iget-object v11, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v0, p3

    iget-boolean v11, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconWithTray:Z

    if-eqz v11, :cond_c

    sget v11, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_6
    if-eqz v5, :cond_d

    :goto_7
    iget-object v11, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v11}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget v12, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v13, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v5, v11, v12, v13, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    :cond_c
    sget v11, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_6

    :cond_d
    sget v11, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_7
.end method

.method private loadTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 6

    sget v5, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    return-void
.end method

.method private loadTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;I)V
    .locals 17

    new-instance v10, Lcom/android/launcher2/PkgResCache$CacheKey;

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-direct {v10, v0, v1}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    if-nez v5, :cond_0

    new-instance v5, Lcom/android/launcher2/PkgResCache$PkgEntry;

    const/4 v3, 0x0

    invoke-direct {v5, v3}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v3, v10, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PkgResCache;->mActivityInfoCache:Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

    move-object/from16 v0, p2

    invoke-virtual {v3, v10, v0}, Lcom/android/launcher2/PkgResCache$ActivityInfoCache;->addOrUpdate(Lcom/android/launcher2/PkgResCache$CacheKey;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)V

    monitor-enter v5

    if-eqz p2, :cond_3

    :try_start_1
    sget v3, Lcom/android/launcher2/PkgResCache;->LOAD_TITLE:I

    and-int v3, v3, p5

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Lcom/android/launcher2/PkgResCache;->loadTitleIfNecessary(Lcom/android/launcher2/PkgResCache$PkgEntry;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)V

    :cond_1
    sget v3, Lcom/android/launcher2/PkgResCache;->LOAD_ICON:I

    and-int v3, v3, p5

    if-eqz v3, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher2/PkgResCache;->loadIconIfNecessary(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$PkgEntry;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    :goto_0
    :try_start_2
    iget-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    iget-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    :goto_1
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    :cond_3
    :try_start_4
    const-string v3, ""

    iput-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iget-boolean v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mUsePackageIcon:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v3, v1, v4}, Lcom/android/launcher2/PkgResCache;->getEntryForPackage(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Z)Lcom/android/launcher2/PkgResCache$PkgEntry;

    move-result-object v15

    if-eqz v15, :cond_4

    const-string v3, "PkgResCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "using package default icon for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v15, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v3, v15, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    iput-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_5
    iget-object v4, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v4, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    iget-object v4, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    :goto_2
    throw v3

    :catchall_2
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_4
    const/16 v16, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x2000

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v16

    :goto_3
    if-eqz v16, :cond_2

    :try_start_7
    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_2

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    const/4 v14, 0x1

    :goto_4
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    const/4 v12, 0x1

    :goto_5
    if-nez v14, :cond_8

    if-nez v12, :cond_8

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x800000

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    const/4 v13, 0x1

    :goto_6
    if-nez v12, :cond_5

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v3, v5, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    goto :goto_6

    :cond_9
    :try_start_8
    const-string v3, ""

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    const-string v3, "PkgResCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to load title : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_a
    const-string v4, ""

    move-object/from16 v0, p3

    iput-object v4, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    const-string v4, "PkgResCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to load title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_2
.end method

.method private loadTitleIfNecessary(Lcom/android/launcher2/PkgResCache$PkgEntry;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    iget-object v1, p1, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.stk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.stk2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p3}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 6

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PkgResCache$CacheKey;

    iget-object v5, v2, Lcom/android/launcher2/PkgResCache$CacheKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/android/launcher2/PkgResCache$CacheKey;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v5, p2}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PkgResCache$CacheKey;

    iget-object v5, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method


# virtual methods
.method public declared-synchronized cachePackageInstallInfo(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/PkgResCache;->removeFromMemCacheLocked(Ljava/lang/String;Lcom/android/launcher2/compat/UserHandleCompat;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "."

    invoke-direct {v1, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v0, v1, p2}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v4, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PkgResCache$PkgEntry;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/launcher2/PkgResCache$PkgEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/launcher2/PkgResCache$PkgEntry;-><init>(Lcom/android/launcher2/PkgResCache$1;)V

    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iput-object p4, v2, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    :cond_1
    if-eqz p3, :cond_2

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v4, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {p3, v3, v4}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/android/launcher2/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    :cond_2
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    :catchall_2
    move-exception v3

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method

.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearActivityInfoCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mActivityInfoCache:Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

    invoke-virtual {v0}, Lcom/android/launcher2/PkgResCache$ActivityInfoCache;->clear()V

    return-void
.end method

.method public clearTitle()V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PkgResCache$PkgEntry;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/launcher2/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getFolderIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mFolderIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, v1, p2}, Lcom/android/launcher2/PkgResCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/PkgResCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public getLauncherActivityInfoCompat(Lcom/android/launcher2/PkgResCache$CacheKey;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mActivityInfoCache:Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PkgResCache$ActivityInfoCache;->getLauncherActivityInfoCompat(Lcom/android/launcher2/PkgResCache$CacheKey;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V
    .locals 1

    sget v0, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;I)V

    return-void
.end method

.method public getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;I)V
    .locals 6

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    goto :goto_0
.end method

.method public declared-synchronized getTitleAndIcon(Lcom/android/launcher2/HomeShortcutItem;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;Z)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    const-string v0, ""

    iput-object v0, p1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v3}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mUsePackageIcon:Z

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v2

    sget v5, Lcom/android/launcher2/PkgResCache;->LOAD_ALL:I

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    iget-object v0, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/launcher2/HomeShortcutItem;->mTitle:Ljava/lang/String;

    :cond_1
    iget-object v0, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher2/HomeShortcutItem;->usingFallbackIcon:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    :goto_0
    return-void

    :cond_0
    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v3, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconWithTray:Z

    goto :goto_0
.end method

.method public getUnavailableIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p3}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v3, "com.samsung.helphub"

    invoke-virtual {p3, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/launcher2/PkgResCache;->mTargetIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget v4, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    iget v5, p0, Lcom/android/launcher2/PkgResCache;->mAppIconSize:I

    invoke-static {v1, v3, v4, v5}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "PkgResCache"

    const-string v4, "Cound not call getCSCPackageItemIcon. This should only happen when running on a device without CSC related features"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_2
    sget v3, Lcom/android/launcher2/PkgResCache;->mIconDpi:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-boolean v3, Lcom/android/launcher2/PkgResCache;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "PkgResCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load icon from res.getDrawableForDensity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " resId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 6

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v0, p1, p3}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v4, p0, Lcom/android/launcher2/PkgResCache;->mActivityInfoCache:Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/PkgResCache$ActivityInfoCache;->getLauncherActivityInfoCompat(Lcom/android/launcher2/PkgResCache$CacheKey;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/PkgResCache;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher2/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {v2, v3, p3}, Lcom/android/launcher2/compat/LauncherAppsCompat;->resolveActivity(Landroid/content/Intent;Lcom/android/launcher2/compat/UserHandleCompat;)Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    move-result-object v1

    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/launcher2/PkgResCache;->loadTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V

    return-void
.end method

.method public declared-synchronized remove(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/launcher2/PkgResCache$CacheKey;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher2/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v2, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/launcher2/PkgResCache;->mActivityInfoCache:Lcom/android/launcher2/PkgResCache$ActivityInfoCache;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/PkgResCache$ActivityInfoCache;->remove(Lcom/android/launcher2/PkgResCache$CacheKey;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method
