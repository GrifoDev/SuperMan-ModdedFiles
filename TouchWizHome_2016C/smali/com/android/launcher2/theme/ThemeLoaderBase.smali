.class public abstract Lcom/android/launcher2/theme/ThemeLoaderBase;
.super Ljava/lang/Object;
.source "ThemeLoaderBase.java"


# static fields
.field public static final CURRENT_THEME_PACKAGE:[Ljava/lang/String;

.field public static final INVALID_COLOR:I = 0x1ffffff

.field private static final TAG:Ljava/lang/String; = "ThemeLoader"

.field private static final THEME_TYPE_BOOLEAN:Ljava/lang/String; = "bool"

.field private static final THEME_TYPE_COLOR:Ljava/lang/String; = "color"

.field private static final THEME_TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final THEME_TYPE_INTEGER:Ljava/lang/String; = "integer"

.field private static final THEME_TYPE_STRING:Ljava/lang/String; = "string"

.field protected static final THEME_TYPE_XML:Ljava/lang/String; = "xml"

.field private static final TYPE_THEME:I


# instance fields
.field private changedTheme:[Z

.field private isTheme:[Z

.field protected mContext:Landroid/content/Context;

.field protected mIsDefaultTheme:Z

.field protected mThemePackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "current_sec_home_theme_package"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "current_sec_appicon_theme_package"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "current_sec_eventhome_theme_package"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "current_sec_active_themepackage"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "current_sec_active_themepackage"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/theme/ThemeLoaderBase;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    aput-object v2, v0, v4

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    new-array v0, v3, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->isTheme:[Z

    new-array v0, v3, [Z

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->changedTheme:[Z

    iput-object p1, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher2/theme/ThemeLoaderBase;->resetTheme()V

    invoke-direct {p0}, Lcom/android/launcher2/theme/ThemeLoaderBase;->isThemeEnabled()V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getItemBitmapforDefaultResource(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    sget-object v5, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private getItemBooleanforDefaultResource(Ljava/lang/String;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, "bool"

    iget-object v3, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    sget-object v4, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v0, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getItemIntegerforDefaultResource(Ljava/lang/String;)I
    .locals 6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "integer"

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    sget-object v5, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_0
.end method

.method private getItemStringforDefaultResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "string"

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    sget-object v5, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getThemePackageName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private isThemeEnabled()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v2, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    array-length v10, v10

    if-ge v2, v10, :cond_1

    invoke-direct {p0, v2}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getThemePackageName(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setIsTheme(IZ)V

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setChangedTheme(IZ)V

    sget-object v10, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v10

    if-ge v2, v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setThemePackageName(ILjava/lang/String;)V

    :cond_0
    const-string v10, "ThemeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ThemeLoader::isThemeEnabled() ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") ThemePackage : null"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const-string v10, "ThemeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ThemeLoader::isThemeEnabled() ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") currentTheme : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setIsTheme(IZ)V

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setChangedTheme(IZ)V

    sget-object v10, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v10

    if-ge v2, v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setThemePackageName(ILjava/lang/String;)V

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    const-string v6, "themePreference"

    const-string v7, "prevHomeTheme"

    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "ThemeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ThemeLoader::isThemeEnable() ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") PreviousTheme : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setChangedTheme(IZ)V

    :goto_2
    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setIsTheme(IZ)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setIsTheme(IZ)V

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setChangedTheme(IZ)V

    sget-object v10, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v10

    if-ge v2, v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setThemePackageName(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_7

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    const-string v10, "ThemeLoader"

    const-string v11, "the variable pm is null in isThemeEnabled()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v10, "ThemeLoader"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Theme package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not founded"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v13}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setIsTheme(IZ)V

    sget-object v10, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v10}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v10

    if-ge v2, v10, :cond_8

    iget-object v10, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v2, v10}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setThemePackageName(ILjava/lang/String;)V

    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_9
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, v2, v14}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setChangedTheme(IZ)V

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0, v2, v14}, Lcom/android/launcher2/theme/ThemeLoaderBase;->setIsTheme(IZ)V

    iput-boolean v13, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    goto/16 :goto_3
.end method

.method private resetTheme()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getCurrentResourcePackage()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setChangedTheme(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->changedTheme:[Z

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method private setIsTheme(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->isTheme:[Z

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method private setThemePackageName(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public getChangedTheme(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->changedTheme:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getCurrentResourcePackage()V
.end method

.method public getIsDefaultTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    return v0
.end method

.method public getIsTheme(I)Z
    .locals 1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->isThemeInstalled(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result p1

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->isTheme:[Z

    aget-boolean v0, v0, p1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemBitmap(Ljava/lang/String;ZI)Landroid/graphics/Bitmap;
    .locals 5

    iget-boolean v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemBitmapforDefaultResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v3, v4, p3

    const/4 v0, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "drawable"

    invoke-virtual {v1, p1, v4, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemBitmapforDefaultResource(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemBoolean(Ljava/lang/String;ZI)Z
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemBooleanforDefaultResource(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v4, v5, p3

    const/4 v0, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "bool"

    invoke-virtual {v2, p1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such boolean in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemBooleanforDefaultResource(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getItemColor(Ljava/lang/String;ZI)I
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemColorforDefaultResource(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v4, v5, p3

    invoke-virtual {p0, v4}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    const v0, 0x1ffffff

    if-eqz v2, :cond_3

    const-string v5, "color"

    invoke-virtual {v2, p1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such color in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemColorforDefaultResource(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cannot find item color from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to getting resources from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getItemColorforDefaultResource(Ljava/lang/String;)I
    .locals 7

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v0, 0x1ffffff

    if-eqz v2, :cond_1

    const-string v4, "color"

    iget-object v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    sget-object v6, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public getItemDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemDrawable(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getItemDrawable(Ljava/lang/String;ZI)Landroid/graphics/drawable/Drawable;
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v4, v5, p3

    const/4 v0, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "drawable"

    invoke-virtual {v2, p1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such drawable in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t find such drawable in the resource : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemDrawableforDefaultResource(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    const-string v4, "drawable"

    invoke-virtual {v1, p1, v4, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0
.end method

.method public getItemInteger(Ljava/lang/String;I)I
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemIntegerforDefaultResource(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v4, v5, p2

    const/4 v1, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v5, "integer"

    invoke-virtual {v2, p1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such integer in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemIntegerforDefaultResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getItemString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    iget-boolean v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mIsDefaultTheme:Z

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemStringforDefaultResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v4, v5, p2

    const/4 v3, 0x0

    invoke-virtual {p0, v4}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getResources(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v5, "string"

    invoke-virtual {v1, p1, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "ThemeLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No such String in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;->getItemStringforDefaultResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected getResources(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "ThemeLoader"

    const-string v4, "the variable pm is null in getResources()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public isThemeInstalled(I)Z
    .locals 6

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mThemePackages:[Ljava/lang/String;

    aget-object v3, v4, p1

    iget-object v4, p0, Lcom/android/launcher2/theme/ThemeLoaderBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    :goto_0
    return v1

    :cond_0
    const-string v4, "ThemeLoader"

    const-string v5, "the variable pm is null in isThemeInstalled()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
