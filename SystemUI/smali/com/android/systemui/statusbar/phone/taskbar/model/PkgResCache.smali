.class public Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;
.super Ljava/lang/Object;
.source "PkgResCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field public static LOAD_ALL:I

.field public static LOAD_ICON:I

.field public static LOAD_TITLE:I


# instance fields
.field private mAppIconSize:I

.field private mContext:Landroid/content/Context;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private final mIconDpi:I

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mPkgCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;",
            "Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgMgr:Landroid/content/pm/PackageManager;

.field private mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

.field private mUnavailableIcon:Landroid/graphics/Bitmap;

.field private sBadgeSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->DEBUGGABLE:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->LOAD_TITLE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->LOAD_ICON:I

    sget v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->LOAD_TITLE:I

    sget v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->LOAD_ICON:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->LOAD_ALL:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
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

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "launcherapps"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherApps;

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070064

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mAppIconSize:I

    const v7, 0x7f0703a8

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mAppIconSize:I

    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v7, 0x1050000

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v7, 0x7f07039f

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->sBadgeSize:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-ne v3, v4, :cond_0

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    :goto_0
    const/high16 v7, 0x10d0000

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    const v7, 0x108099d

    invoke-direct {p0, v5, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    iget v8, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-int v6, v7

    if-gt v6, v9, :cond_1

    iput v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_1
    if-gt v6, v10, :cond_2

    iput v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_2
    if-gt v6, v11, :cond_3

    iput v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_3
    if-gt v6, v12, :cond_4

    iput v12, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_4
    if-gt v6, v13, :cond_5

    iput v13, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    goto :goto_0

    :cond_5
    const/16 v7, 0x280

    iput v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    goto :goto_0
.end method

.method private createDefaultBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCSCPackageItemIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getCSCPackageItemText(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getEntryForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;
    .locals 8

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v5, "."

    invoke-direct {v1, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v6

    monitor-enter v3

    :try_start_1
    const-string/jumbo v5, ""

    iput-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v3

    return-object v3

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :catch_0
    move-exception v2

    :try_start_2
    const-string/jumbo v5, "[DS]PkgResCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Application not installed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v3

    throw v5
.end method

.method private getLauncherActivityInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method private loadTitleAndIcon(Landroid/content/ComponentName;Landroid/content/pm/LauncherActivityInfo;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;I)V
    .locals 8

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;

    invoke-direct {v0, p1, p4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$CacheKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v6

    monitor-enter v1

    if-eqz p3, :cond_5

    if-eqz p2, :cond_6

    :try_start_1
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getCSCPackageItemIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mIconDpi:I

    invoke-virtual {p2, v5}, Landroid/content/pm/LauncherActivityInfo;->semGetBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    :cond_2
    :goto_0
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getCSCPackageItemText(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    :cond_3
    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    :cond_4
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v5, p3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_6
    :try_start_2
    const-string/jumbo v5, ""

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p4}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getEntryForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string/jumbo v5, "[DS]PkgResCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "using package default icon for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->title:Ljava/lang/CharSequence;

    :cond_7
    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    const-string/jumbo v5, "[DS]PkgResCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "using default icon for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$PkgEntry;->icon:Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v1

    throw v5

    :cond_8
    :try_start_3
    const-string/jumbo v5, ""

    iput-object v5, p3, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    const-string/jumbo v5, "[DS]PkgResCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fail to load title : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mPkgCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTitleAndIcon(Landroid/content/ComponentName;Landroid/content/pm/LauncherActivityInfo;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;)V
    .locals 6

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->LOAD_ALL:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->loadTitleAndIcon(Landroid/content/ComponentName;Landroid/content/pm/LauncherActivityInfo;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;I)V

    return-void
.end method

.method public getTitleAndIcon(Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getTitleAndIcon(Landroid/content/ComponentName;Landroid/content/pm/LauncherActivityInfo;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;)V

    :goto_0
    return-void

    :cond_1
    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;->mIsWidget:Z

    goto :goto_0
.end method

.method public getUnavailableIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->mUnavailableIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;)V
    .locals 7

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    const/4 v1, 0x0

    invoke-direct {v6, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-direct {p0, v6, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->getLauncherActivityInfo(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v2

    sget v5, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->LOAD_ALL:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->loadTitleAndIcon(Landroid/content/ComponentName;Landroid/content/pm/LauncherActivityInfo;Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache$TitleIconInfo;Landroid/os/UserHandle;I)V

    return-void
.end method
