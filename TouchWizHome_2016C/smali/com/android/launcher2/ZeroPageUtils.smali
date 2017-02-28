.class public Lcom/android/launcher2/ZeroPageUtils;
.super Ljava/lang/Object;
.source "ZeroPageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;
    }
.end annotation


# static fields
.field public static final METADATA_ZEROPAGE:Ljava/lang/String; = "com.samsung.launcher.zeropage.metadata"

.field public static final PREFERECES_HOMEZEROPAGE_CLASS_NAME:Ljava/lang/String; = "home_zeropage_class_name"

.field public static final PREFERECES_HOMEZEROPAGE_DALI_ENABLE:Ljava/lang/String; = "home_zeropage_enable"

.field public static final PREFERECES_HOMEZEROPAGE_ENABLE:Ljava/lang/String; = "home_briefing_enable"

.field public static final PREFERECES_HOMEZEROPAGE_PACKAGE_NAME:Ljava/lang/String; = "home_zeropage_package_name"

.field public static final PREFERECES_ZEROPAGE_SETTING_DIALOG:Ljava/lang/String; = "zeropage_setting_dialog"

.field private static TAG:Ljava/lang/String; = null

.field public static final ZEROPAGE_AXEL_UPDAY_CLASSNAME:Ljava/lang/String; = "de.axelspringer.yana.activities.HomeActivity"

.field public static final ZEROPAGE_AXEL_UPDAY_PACKAGENAME:Ljava/lang/String; = "de.axelspringer.yana.zeropage"

.field public static final ZEROPAGE_ENTER_DISABLE:I = 0x0

.field public static final ZEROPAGE_ENTER_FINGERTRACKING:I = 0x2

.field public static final ZEROPAGE_ENTER_FLICK:I = 0x1

.field public static final ZEROPAGE_ENTER_VIRTUALSCREEN:I = 0x3

.field public static final ZEROPAGE_FLIPBOARD_BRIEFING_CLASSNAME:Ljava/lang/String; = "com.wubydax.geartwswipe.SetAppActivity"

.field public static final ZEROPAGE_FLIPBOARD_BRIEFING_DOWNLOAD_URI:Ljava/lang/String; = "samsungapps://ProductDetail/flipboard.boxer.app"

.field public static final ZEROPAGE_FLIPBOARD_BRIEFING_PACKAGENAME:Ljava/lang/String; = "com.wubydax.geartwswipe"

.field public static final ZEROPAGE_SOHU_NEWS_CLASSNAME:Ljava/lang/String; = "com.mobilesrepublic.sohu.launcher.MainActivity"

.field public static final ZEROPAGE_SOHU_NEWS_DOWNLOAD_URI:Ljava/lang/String; = "samsungapps://ProductDetail/com.mobilesrepublic.sohu.launcher"

.field public static final ZEROPAGE_SOHU_NEWS_PACKAGENAME:Ljava/lang/String; = "com.mobilesrepublic.sohu.launcher"

.field private static mInstance:Lcom/android/launcher2/ZeroPageUtils;

.field private static sZeropageDefaultOnOffState:Z

.field private static sZeropageEnterState:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstalled:Z

.field private mSetPosition:I

.field private mZeroPageAppName:Ljava/lang/String;

.field public mZeroPageFirst:Z

.field public mZeroPageListEnable:Z

.field private mZeropageAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ZeroPageListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher2/ZeroPageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/ZeroPageUtils;->sZeropageDefaultOnOffState:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageFirst:Z

    iput v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/ZeroPageUtils;->sZeropageDefaultOnOffState:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addZeroPageApp(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/android/launcher2/ZeroPageListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher2/ZeroPageListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/launcher2/ZeroPageUtils;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ZeroPageUtils;->mInstance:Lcom/android/launcher2/ZeroPageUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/ZeroPageUtils;

    invoke-direct {v0}, Lcom/android/launcher2/ZeroPageUtils;-><init>()V

    sput-object v0, Lcom/android/launcher2/ZeroPageUtils;->mInstance:Lcom/android/launcher2/ZeroPageUtils;

    :cond_0
    sget-object v0, Lcom/android/launcher2/ZeroPageUtils;->mInstance:Lcom/android/launcher2/ZeroPageUtils;

    return-object v0
.end method

.method public static isZeropageEnable()Z
    .locals 1

    sget v0, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZeropageFingerTracking()Z
    .locals 2

    sget v0, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZeropageFlick()Z
    .locals 2

    const/4 v0, 0x1

    sget v1, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZeropageVirtualScreen()Z
    .locals 2

    sget v0, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveZeropageAppMetadata(Landroid/content/pm/PackageManager;Lcom/android/launcher2/ZeroPageListItem;Z)V
    .locals 24

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    const/16 v21, 0x280

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    const-string v21, "com.samsung.launcher.zeropage.metadata"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v15

    if-nez v15, :cond_1

    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    const-string v22, "resParser is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    :goto_1
    const/16 v21, 0x0

    const-string v22, "apptitle"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const/16 v21, 0x0

    const-string v22, "preview"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    const/16 v21, 0x0

    const-string v22, "preview_chn"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    const/16 v21, 0x0

    const-string v22, "preview_usa"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    const/16 v21, 0x0

    const-string v22, "preview_land"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v11

    const/16 v21, 0x0

    const-string v22, "salestalk"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    const/16 v21, 0x0

    const-string v22, "thumbnail"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v15, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v19

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    :try_start_2
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v14

    if-eqz v14, :cond_4

    const-string v21, "USA"

    sget-object v22, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    if-eqz v13, :cond_7

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_2
    :goto_2
    if-nez v4, :cond_3

    if-eqz v12, :cond_a

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    :goto_3
    if-eqz v11, :cond_b

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_4
    if-nez p3, :cond_4

    if-eqz v6, :cond_c

    invoke-virtual {v14, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_5
    if-eqz v19, :cond_d

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    :goto_6
    if-eqz v17, :cond_e

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v16

    :cond_4
    :goto_7
    if-nez v3, :cond_5

    :try_start_3
    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    const-string v22, "appName was not loaded"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "activityName: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " apptitle: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " appPreview: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/android/launcher2/ZeroPageListItem;->setPreview(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/launcher2/ZeroPageListItem;->setLandPreview(Landroid/graphics/drawable/Drawable;)V

    if-nez p3, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/launcher2/ZeroPageListItem;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ZeroPageListItem;->setSalesTalk(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ZeroPageListItem;->setThumbnail(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_4
    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveZeropageAppMetadata XmlPullParserException : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveZeropageAppMetadata PackageManager.NameNotFoundException : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ZeroApp doesn\'t have Metadata: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/ZeroPageListItem;->getInstalled()Z

    move-result v21

    if-nez v21, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "com.mobilesrepublic.sohu.launcher"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0200b3

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ZeroPageListItem;->setPreview(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0800ed

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ZeroPageListItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_8
    :try_start_5
    const-string v21, "CHINA"

    sget-object v22, Lcom/android/launcher2/LauncherFeature;->mCountryCode:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    if-eqz v10, :cond_9

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_8
    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x0

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_5

    :cond_d
    const/16 v18, 0x0

    goto/16 :goto_6

    :cond_e
    const-string v16, ""
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_7

    :catch_2
    move-exception v7

    :try_start_6
    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveZeropageAppMetadata Resources.NotFoundException : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_7

    :catch_3
    move-exception v7

    :try_start_7
    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveZeropageAppMetadata IOException : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v7

    sget-object v21, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "saveZeropageAppMetadata PackageManager.NameNotFoundException : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f020008

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ZeroPageListItem;->setPreview(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0800e8

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ZeroPageListItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setZeropageAppList()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.wubydax.geartwswipe"

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.wubydax.geartwswipe"

    const-string v2, "com.wubydax.geartwswipe.SetAppActivity"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher2/ZeroPageUtils;->addZeroPageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    const-string v2, "de.axelspringer.yana.zeropage"

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "de.axelspringer.yana.zeropage"

    const-string v2, "de.axelspringer.yana.activities.HomeActivity"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher2/ZeroPageUtils;->addZeroPageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.mobilesrepublic.sohu.launcher"

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "com.mobilesrepublic.sohu.launcher"

    const-string v2, "com.mobilesrepublic.sohu.launcher.MainActivity"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher2/ZeroPageUtils;->addZeroPageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.headlines"

    invoke-static {v1, v2}, Lcom/android/launcher2/Utilities;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.samsung.android.app.headlines"

    const-string v2, "com.samsung.android.app.headlines.activity.HeadlinesActivity"

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher2/ZeroPageUtils;->addZeroPageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setZeropageAppList(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/util/LinkedList;

    const-string v4, "\\s*/\\s*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "com.wubydax.geartwswipe"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "com.wubydax.geartwswipe"

    const-string v2, "com.wubydax.geartwswipe.SetAppActivity"

    :cond_2
    :goto_1
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/android/launcher2/Utilities;->checkInstallApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Lcom/android/launcher2/ZeroPageUtils;->addZeroPageApp(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "de.axelspringer.yana.zeropage"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "de.axelspringer.yana.zeropage"

    const-string v2, "de.axelspringer.yana.activities.HomeActivity"

    goto :goto_1

    :cond_4
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v8, "com.mobilesrepublic.sohu.launcher"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v3, "com.mobilesrepublic.sohu.launcher"

    const-string v2, "com.mobilesrepublic.sohu.launcher.MainActivity"

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    move v4, v5

    :goto_2
    return v4

    :cond_7
    move v4, v6

    goto :goto_2
.end method

.method private supportFingerTracking()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private supportVirtualScreen()Z
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public enableZeroPageSettingDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher2/LauncherFeature;->supportZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZeroPageAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v0

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    iget v2, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ZeroPageListItem;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getZeroPosition()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    return v0
.end method

.method public getZeropageAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ZeroPageListItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    return-object v0
.end method

.method public getZeropageAppListSize()I
    .locals 1

    sget v0, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public initZeroPageFeature(Landroid/content/Context;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Launcher_ConfigZeroPageApp"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v7, "CscFeature_Launcher_ConfigMagazineHome"

    invoke-virtual {v4, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0c002a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageListEnable:Z

    const-string v4, "off"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/launcher2/ZeroPageUtils;->sZeropageDefaultOnOffState:Z

    const-string v4, "disable"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isOwner()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    sput v5, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    :goto_1
    sget-object v4, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZeropageEnterState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/ZeroPageUtils;->setZeropageAppList()Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/ZeroPageUtils;->supportVirtualScreen()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    sput v4, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    :goto_3
    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    sget-object v4, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PreferencesUtil pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getsaveZeroPagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cls: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getsaveZeroPageClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/util/LinkedList;

    const-string v4, "\\s*,\\s*"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/android/launcher2/ZeroPageUtils;->setZeropageAppList(Ljava/util/List;)Z

    move-result v0

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/launcher2/ZeroPageUtils;->supportFingerTracking()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    sput v4, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    goto :goto_3

    :cond_6
    sput v6, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    goto :goto_3

    :cond_7
    sput v5, Lcom/android/launcher2/ZeroPageUtils;->sZeropageEnterState:I

    goto/16 :goto_1
.end method

.method public loadZeropageAppItem()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ZeroPageUtils;->loadZeropageAppItem(Z)V

    return-void
.end method

.method public loadZeropageAppItem(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ZeroPageListItem;

    invoke-direct {p0, v3, v2, p1}, Lcom/android/launcher2/ZeroPageUtils;->saveZeropageAppMetadata(Landroid/content/pm/PackageManager;Lcom/android/launcher2/ZeroPageListItem;Z)V

    goto :goto_1

    :cond_2
    sget-object v4, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    const-string v5, "PackageManager is null in loadZeropageAppItem()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object v4, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getZeropageAppListSize() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v4

    if-lez v4, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v4

    if-ne v4, v8, :cond_5

    iput-boolean v7, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageFirst:Z

    iput-boolean v7, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageListEnable:Z

    iput v7, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->setDefaultZeroPageImage()V

    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    iget v6, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    iget v6, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v5, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    iget v6, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher2/LauncherFeature;->supportZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v5, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPagePackageName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->saveZeroPageClassName(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->setZeroPageSettingDialog(Landroid/content/Context;Z)V

    :cond_6
    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getsaveZeroPagePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ZeroPageListItem;

    invoke-virtual {v4}, Lcom/android/launcher2/ZeroPageListItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iput v1, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const-string v4, "first"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher2/LauncherFeature;->supportZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    iput v7, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    :cond_8
    :goto_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->setDefaultZeroPageImage()V

    goto/16 :goto_2

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iput v8, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    goto :goto_4
.end method

.method public loadZeropageAppItemSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/launcher2/ZeroPageListItem;

    invoke-direct {v0, p1, p2, v5}, Lcom/android/launcher2/ZeroPageListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v2, Lcom/android/launcher2/PagedView;->HEADLINES_INTENT:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/ZeroPageUtils;->setZeropageAppList(Lcom/android/launcher2/ZeroPageListItem;)V

    invoke-direct {p0, v1, v0, v4}, Lcom/android/launcher2/ZeroPageUtils;->saveZeropageAppMetadata(Landroid/content/pm/PackageManager;Lcom/android/launcher2/ZeroPageListItem;Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeropageAppListSize()I

    move-result v2

    if-ne v2, v5, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageFirst:Z

    iput-boolean v4, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageListEnable:Z

    invoke-virtual {p0, v4}, Lcom/android/launcher2/ZeroPageUtils;->setZeroPosition(I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->setDefaultZeroPageImage()V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/launcher2/ZeroPageUtils;->TAG:Ljava/lang/String;

    const-string v3, "PackageManager is null in loadZeropageAppItemSingle()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setZeroPageAppName()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageAppName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/ZeroPageUtils;->getZeroPageSetItem()Lcom/android/launcher2/ZeroPageListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/ZeroPageListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeroPageAppName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setZeroPosition(I)V
    .locals 2

    iput p1, p0, Lcom/android/launcher2/ZeroPageUtils;->mSetPosition:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getZeroPageSettingDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->setZeroPageSettingDialog(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public setZeropageAppList(Lcom/android/launcher2/ZeroPageListItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ZeroPageUtils;->mZeropageAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
