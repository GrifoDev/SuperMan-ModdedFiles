.class public Lcom/android/launcher2/theme/OpenThemeManager;
.super Ljava/lang/Object;
.source "OpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;,
        Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;,
        Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;,
        Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;
    }
.end annotation


# static fields
.field private static final DEFAULT_THEME_SCROLL_EFFECT:I = 0x5

.field private static final MAX_TRANSITION_EFFECT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ThemeManager"

.field private static THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/launcher2/theme/OpenThemeManager;

.field private static sBadgeSize:I

.field private static sIconHeight:I

.field private static sIconWidth:I


# instance fields
.field private mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

.field private mFolderStyle:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

.field private mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

.field public mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    sput-object v1, Lcom/android/launcher2/theme/OpenThemeManager;->mInstance:Lcom/android/launcher2/theme/OpenThemeManager;

    sput v2, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sput v2, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    sput v2, Lcom/android/launcher2/theme/OpenThemeManager;->sBadgeSize:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0389

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/theme/OpenThemeManager;->sBadgeSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeLoader;

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {p0}, Lcom/android/launcher2/theme/OpenThemeManager;->setStyleByDecision()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/theme/OpenThemeManager;)Lcom/android/launcher2/theme/OpenThemeLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/theme/OpenThemeManager;Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createThemeManager(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager;

    invoke-direct {v0}, Lcom/android/launcher2/theme/OpenThemeManager;-><init>()V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeManager;->mInstance:Lcom/android/launcher2/theme/OpenThemeManager;

    return-void
.end method

.method private getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getEachItemforDrawableType(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemDrawable(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/android/launcher2/theme/OpenThemeManager;
    .locals 1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager;->mInstance:Lcom/android/launcher2/theme/OpenThemeManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->createThemeManager(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager;->mInstance:Lcom/android/launcher2/theme/OpenThemeManager;

    return-object v0
.end method

.method private initChangeableTheme()V
    .locals 3

    new-instance v1, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    invoke-direct {v1, p0}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;-><init>(Lcom/android/launcher2/theme/OpenThemeManager;)V

    iput-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;->setTheme()V

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->loadThemeAppList()V

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    sput v1, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v1, v2, :cond_0

    const v1, 0x7f0a01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    sput v1, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/theme/OpenThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private load3rdpartyIconBitmap()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v2, "ic_icon_bg"

    :try_start_0
    sget-object v4, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/theme/OpenThemeManager;->getEachItemforDrawableType(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    sget v4, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v5, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {v1, v4, v5}, Lcom/android/launcher2/Utilities;->getBitmapWithSizeForTheme(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v4, "ThemeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load3rdpartyIconBitmap failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getChangeableStyle()Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getEachItemforBooleanType(Ljava/lang/String;ZI)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getEachItemforColorType(Ljava/lang/String;I)I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemColor(Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method public getEachItemforColorType(Ljava/lang/String;ZI)I
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemColor(Ljava/lang/String;ZI)I

    move-result v0

    return v0
.end method

.method getEachItemforIntegerType(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getEachItemforStringType(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mFolderStyle:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    return-object v0
.end method

.method public getFontStyle(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThemeAppIcon(Landroid/content/Context;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 11

    if-nez p2, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    sget-object v8, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager;->initChangeableTheme()V

    :cond_2
    if-nez v4, :cond_3

    sget-object v7, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_5

    sget-object v7, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v9, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {v6, v7, v8, v9}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {p3, v7}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v0, Landroid/graphics/Rect;

    sget v7, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v8, Lcom/android/launcher2/theme/OpenThemeManager;->sBadgeSize:I

    sub-int/2addr v7, v8

    sget v8, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    sget v9, Lcom/android/launcher2/theme/OpenThemeManager;->sBadgeSize:I

    sub-int/2addr v8, v9

    sget v9, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v10, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v5, :cond_4

    invoke-virtual {p3}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v2, v7, v0, v8}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_4
    :goto_2
    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getIconDpi()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v10, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getIconDpi()I

    move-result v7

    invoke-virtual {p2, v7}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v10, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v7, "ThemeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThemeAppIcon ( "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ) failed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getThemeAppIconWithBg()Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    sget-object v5, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getAllapps()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    sget-object v4, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v6, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {v1, v4, v5, v6}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    iget-object v5, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    sget-object v6, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    iget-object v5, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    sget-object v6, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/theme/OpenThemeLoader;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v4, Lcom/android/launcher2/theme/OpenThemeManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v6, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {v1, v4, v5, v6}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1
.end method

.method public getThemeIconWithBg(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager;->initChangeableTheme()V

    :cond_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mChangeableStyle:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle;->getIconBgScope()I

    move-result v0

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->THIRD_PARTY:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->value()I

    move-result v2

    if-ne v0, v2, :cond_4

    if-nez p2, :cond_2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/theme/OpenThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_1
    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v4, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {p1, v2, v3, v4}, Lcom/android/launcher2/theme/ThemeUtils;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    move-object v1, p1

    :cond_3
    return-object v1

    :cond_4
    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->ALL:Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ChangeableStyle$IconBgScope;->value()I

    move-result v2

    if-ne v0, v2, :cond_2

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager;->load3rdpartyIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/theme/OpenThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    :cond_5
    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager;->THIRD_BACKGROUND_BITMAP:Landroid/graphics/Bitmap;

    sget v3, Lcom/android/launcher2/theme/OpenThemeManager;->sIconWidth:I

    sget v4, Lcom/android/launcher2/theme/OpenThemeManager;->sIconHeight:I

    invoke-static {p1, v2, v3, v4}, Lcom/android/launcher2/theme/ThemeUtils;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    return-object v0
.end method

.method public getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    return-object v0
.end method

.method public setStyleByDecision()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    invoke-direct {v0, p0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;-><init>(Lcom/android/launcher2/theme/OpenThemeManager;)V

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->setTheme()V

    new-instance v0, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-direct {v0, p0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;-><init>(Lcom/android/launcher2/theme/OpenThemeManager;)V

    iput-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mFolderStyle:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mFolderStyle:Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->setFolderTheme()V

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->getChangedTheme(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeLoader:Lcom/android/launcher2/theme/OpenThemeLoader;

    sget-object v1, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->APP_ICON:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v1}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/theme/OpenThemeLoader;->getChangedTheme(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/theme/OpenThemeManager;->initChangeableTheme()V

    :cond_1
    return-void
.end method
