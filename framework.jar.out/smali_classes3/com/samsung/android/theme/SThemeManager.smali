.class public Lcom/samsung/android/theme/SThemeManager;
.super Ljava/lang/Object;
.source "SThemeManager.java"


# static fields
.field public static final ACTION_FESTIVAL_EFFECT_CHANGED:Ljava/lang/String; = "android.intent.action.FESTIVAL_EFFECT_CHANGED"

.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.STHEME_CHANGED"

.field private static final CSC_FILE_THEME_APP_LIST:Ljava/lang/String; = "/system/csc/theme_app_list.xml"

.field public static final CURRENT_FESTIVAL_EFFECT_PACKAGE:Ljava/lang/String; = "current_festival_effect_package"

.field public static final CURRENT_FESTIVAL_WALLPAPER_CLASS:Ljava/lang/String; = "current_festival_wallpaper_class"

.field public static final CURRENT_FESTIVAL_WALLPAPER_PACKAGE:Ljava/lang/String; = "current_festival_wallpaper_package"

.field public static final CURRENT_THEME_PACKAGE:Ljava/lang/String; = "current_sec_theme_package"

.field private static final DBG:Z = false

.field private static final FESTIVAL_EFFECT_STR:Ljava/lang/String; = "festival"

.field private static final TAG:Ljava/lang/String; = "SThemeManager"

.field private static final TAG_APP_LIST:Ljava/lang/String; = "ThemeAppList"

.field private static final TAG_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final TAG_ATTR_ICONID:Ljava/lang/String; = "iconId"

.field private static final TAG_THEME_APP:Ljava/lang/String; = "ThemeApp"

.field private static final THEME_STR:Ljava/lang/String; = "theme"

.field public static final TYPE_FESTIVAL_EFFECT:I = 0x1

.field public static final TYPE_THEME:I

.field private static sPackageIconMap:Ljava/util/HashMap;
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


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageIconLoaded:Z

.field private mPackageName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;I)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    .line 123
    iput-object p1, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    .line 124
    iput p2, p0, Lcom/samsung/android/theme/SThemeManager;->mType:I

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/theme/SThemeManager;->resetTheme()V

    .line 122
    return-void
.end method

.method private getCurrentResourcePackage()V
    .locals 2

    .prologue
    .line 384
    iget v0, p0, Lcom/samsung/android/theme/SThemeManager;->mType:I

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 387
    const-string/jumbo v1, "current_sec_theme_package"

    .line 386
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iget v0, p0, Lcom/samsung/android/theme/SThemeManager;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 391
    const-string/jumbo v1, "current_festival_effect_package"

    .line 390
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getResources()Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 398
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 407
    .end local v1    # "r":Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 402
    .restart local v1    # "r":Landroid/content/res/Resources;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "r":Landroid/content/res/Resources;
    goto :goto_0

    .line 403
    .local v1, "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private loadThemeAppList()V
    .locals 26

    .prologue
    .line 411
    const/16 v18, 0x0

    .line 412
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    .line 413
    .local v14, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 415
    .local v6, "cscFileReader":Ljava/io/BufferedReader;
    const-string/jumbo v21, "SThemeManager"

    const-string/jumbo v22, "Theme app list path: /system/csc/theme_app_list.xml"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v21, "/system/csc/theme_app_list.xml"

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v5, "cscFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-lez v21, :cond_0

    .line 421
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    new-instance v22, Ljava/io/FileInputStream;

    .line 422
    const-string/jumbo v23, "/system/csc/theme_app_list.xml"

    .line 421
    invoke-direct/range {v22 .. v23}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v21 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "cscFileReader":Ljava/io/BufferedReader;
    .local v7, "cscFileReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 428
    .end local v7    # "cscFileReader":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v6, :cond_0

    .line 430
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v14

    .line 431
    .local v14, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 432
    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v18

    .line 433
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    if-eqz v18, :cond_4

    .line 442
    :try_start_3
    const-string/jumbo v21, "ThemeAppList"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 444
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 447
    .local v8, "depth":I
    :cond_1
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v21

    move/from16 v0, v21

    if-le v0, v8, :cond_3

    .line 448
    :cond_2
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 449
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 487
    :cond_3
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    .end local v8    # "depth":I
    .end local v20    # "type":I
    :cond_4
    if-eqz v6, :cond_5

    .line 501
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 410
    .end local v5    # "cscFile":Ljava/io/File;
    :cond_5
    :goto_3
    return-void

    .line 423
    .restart local v5    # "cscFile":Ljava/io/File;
    .restart local v6    # "cscFileReader":Ljava/io/BufferedReader;
    .local v14, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v10

    .line 424
    .local v10, "e":Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 425
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 489
    .end local v5    # "cscFile":Ljava/io/File;
    .end local v6    # "cscFileReader":Ljava/io/BufferedReader;
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v14    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v13

    .line 490
    .local v13, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string/jumbo v21, "SThemeManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception during parsing theme app list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 499
    if-eqz v6, :cond_5

    .line 501
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 502
    :catch_2
    move-exception v12

    .line 503
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 434
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "cscFile":Ljava/io/File;
    :catch_3
    move-exception v13

    .line 435
    .restart local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    invoke-virtual {v13}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 436
    const/16 v18, 0x0

    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_1

    .line 453
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "depth":I
    .restart local v20    # "type":I
    :cond_6
    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 457
    const/4 v4, 0x0

    .line 458
    .local v4, "className":Ljava/lang/String;
    const/16 v16, 0x0

    .line 460
    .local v16, "iconId":Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 461
    .local v17, "name":Ljava/lang/String;
    if-eqz v17, :cond_1

    .line 462
    invoke-interface/range {v18 .. v18}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v19

    .line 463
    .local v19, "size":I
    const/4 v15, 0x0

    .end local v4    # "className":Ljava/lang/String;
    .end local v16    # "iconId":Ljava/lang/String;
    .local v15, "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_9

    .line 464
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 465
    .local v2, "attrName":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "attrValue":Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string/jumbo v21, "className"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 472
    move-object v4, v3

    .line 474
    :cond_7
    if-eqz v2, :cond_8

    const-string/jumbo v21, "iconId"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 475
    move-object/from16 v16, v3

    .line 463
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 479
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    :cond_9
    const-string/jumbo v21, "ThemeApp"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 480
    sget-object v21, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 481
    const/4 v4, 0x0

    .line 482
    .restart local v4    # "className":Ljava/lang/String;
    const/16 v16, 0x0

    .restart local v16    # "iconId":Ljava/lang/String;
    goto/16 :goto_2

    .line 502
    .end local v4    # "className":Ljava/lang/String;
    .end local v8    # "depth":I
    .end local v15    # "i":I
    .end local v16    # "iconId":Ljava/lang/String;
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "size":I
    .end local v20    # "type":I
    :catch_4
    move-exception v12

    .line 503
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 495
    .end local v5    # "cscFile":Ljava/io/File;
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 496
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_9
    const-string/jumbo v21, "SThemeManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception during parsing theme app list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 499
    if-eqz v6, :cond_5

    .line 501
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    .line 502
    :catch_6
    move-exception v12

    .line 503
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 492
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v12    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    .line 493
    .local v11, "e":Ljava/io/IOException;
    :try_start_b
    const-string/jumbo v21, "SThemeManager"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Exception during parsing theme app list"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 499
    if-eqz v6, :cond_5

    .line 501
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_3

    .line 502
    :catch_8
    move-exception v12

    .line 503
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 498
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v21

    .line 499
    if-eqz v6, :cond_a

    .line 501
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 498
    :cond_a
    :goto_5
    throw v21

    .line 502
    :catch_9
    move-exception v12

    .line 503
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method


# virtual methods
.method public getCurrentContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, "c":Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    .line 380
    .end local v0    # "c":Landroid/content/Context;
    :goto_0
    return-object v0

    .line 375
    .restart local v0    # "c":Landroid/content/Context;
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "c":Landroid/content/Context;
    goto :goto_0

    .line 376
    .local v0, "c":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bitmapId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 232
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 235
    :try_start_0
    const-string/jumbo v3, "drawable"

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 236
    .local v2, "resId":I
    if-nez v2, :cond_0

    .line 237
    return-object v5

    .line 240
    :cond_0
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 241
    .end local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    return-object v5

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public getItemColor(Ljava/lang/String;)I
    .locals 6
    .param p1, "colorId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 256
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 260
    :try_start_0
    const-string/jumbo v3, "color"

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 261
    .local v2, "resId":I
    if-nez v2, :cond_0

    .line 262
    return v5

    .line 264
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 265
    .end local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    return v5

    .line 271
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v5
.end method

.method public getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 202
    const/4 v0, 0x0

    .line 204
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 205
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 208
    :try_start_0
    const-string/jumbo v4, "drawable"

    iget-object v5, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 209
    .local v3, "resId":I
    if-eqz v3, :cond_1

    .line 211
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 222
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "resId":I
    :cond_0
    return-object v0

    .line 214
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "resId":I
    :cond_1
    return-object v6

    .line 216
    .end local v3    # "resId":I
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    return-object v6
.end method

.method public getItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "textId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 175
    const/4 v3, 0x0

    .line 177
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    const-string/jumbo v4, "string"

    iget-object v5, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 182
    .local v2, "resId":I
    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 193
    .end local v2    # "resId":I
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-object v3

    .line 185
    .restart local v2    # "resId":I
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-object v6

    .line 187
    .end local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    return-object v6
.end method

.method public getItemXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 6
    .param p1, "xmlId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 346
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 347
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    .line 350
    :try_start_0
    const-string/jumbo v3, "xml"

    iget-object v4, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 351
    .local v2, "resId":I
    if-nez v2, :cond_0

    .line 352
    return-object v5

    .line 354
    :cond_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 355
    .end local v2    # "resId":I
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 357
    return-object v5

    .line 361
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-boolean v1, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->loadThemeAppList()V

    .line 285
    :cond_0
    sget-object v1, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, "iconId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 288
    invoke-virtual {p0, v0}, Lcom/samsung/android/theme/SThemeManager;->getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 291
    :cond_1
    return-object v2
.end method

.method public getPackageIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-boolean v1, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    if-nez v1, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->loadThemeAppList()V

    .line 305
    :cond_0
    sget-object v1, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    .local v0, "iconId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0, v0}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 311
    :cond_1
    return-object v2
.end method

.method public getPackageIconBitmapStartsWith(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 320
    iget-boolean v3, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageIconLoaded:Z

    if-nez v3, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->loadThemeAppList()V

    .line 324
    :cond_0
    const/4 v2, 0x0

    .line 325
    .local v2, "iconId":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/theme/SThemeManager;->sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "iconId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 333
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz v2, :cond_3

    .line 334
    invoke-virtual {p0, v2}, Lcom/samsung/android/theme/SThemeManager;->getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 337
    :cond_3
    return-object v4
.end method

.method public getVersionFromFeature(I)Ljava/lang/String;
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 135
    const-string/jumbo v3, "0"

    .line 136
    .local v3, "v":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 137
    .local v2, "typeString":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    .line 138
    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string/jumbo v6, "0"

    .line 137
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "feature":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 141
    const-string/jumbo v2, "theme"

    .line 146
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 146
    if-eqz v4, :cond_1

    .line 148
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "index":I
    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 150
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 153
    .end local v1    # "index":I
    :cond_1
    return-object v3

    .line 142
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 143
    const-string/jumbo v2, "festival"

    goto :goto_0
.end method

.method public resetTheme()V
    .locals 1

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/samsung/android/theme/SThemeManager;->getCurrentResourcePackage()V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/theme/SThemeManager;->mPackageName:Ljava/lang/String;

    .line 159
    :cond_1
    return-void
.end method
