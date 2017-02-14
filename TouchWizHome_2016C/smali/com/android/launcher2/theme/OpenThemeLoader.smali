.class public Lcom/android/launcher2/theme/OpenThemeLoader;
.super Lcom/android/launcher2/theme/ThemeLoaderBase;
.source "OpenThemeLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeLoaderBase"

.field private static final TAG_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final TAG_ATTR_ICONID:Ljava/lang/String; = "iconId"

.field private static final TAG_THEME_APP:Ljava/lang/String; = "ThemeApp"

.field public static final TYPE_THEME:I = 0x0

.field private static final XML_APP_LIST:Ljava/lang/String; = "theme_app_list"

.field private static mPackageIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/theme/OpenThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/theme/ThemeLoaderBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getCurrentResourcePackage()V
    .locals 5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/theme/OpenThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, ".common"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    aget-object v3, v3, v1

    const-string v4, ".mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->WINSET:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/theme/OpenThemeLoader;->CURRENT_THEME_PACKAGE:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1

    :cond_2
    return-void

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public loadThemeAppList()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/theme/OpenThemeLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v14, "theme_app_list"

    const-string v15, "xml"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/theme/OpenThemeLoader;->mThemePackages:[Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->DEFAULT:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v17

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v14, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    if-eqz v9, :cond_0

    :try_start_0
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_3

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    if-le v14, v4, :cond_0

    :cond_3
    const/4 v14, 0x1

    if-eq v13, v14, :cond_0

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v14, "ThemeApp"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v12

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v12, :cond_6

    invoke-interface {v9, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    const-string v14, "className"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v3, v2

    :cond_4
    if-eqz v1, :cond_5

    const-string v14, "iconId"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move-object v7, v2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    sget-object v14, Lcom/android/launcher2/theme/OpenThemeLoader;->mPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v14, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v14, "ThemeLoaderBase"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception during parsing theme app list XmlPullParserException"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v5

    const-string v14, "ThemeLoaderBase"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception during parsing theme app list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0
.end method
