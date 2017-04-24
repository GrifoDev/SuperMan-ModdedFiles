.class public final Lcom/android/launcher2/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Utilities$CanvasPool;
    }
.end annotation


# static fields
.field public static final ATLEAST_MARSHMALLOW:Z

.field private static final DEBUGGABLE:Z

.field public static final DEBUG_VIEWS_AND_SIZES:Z = false

.field private static final PACKAGE_CONTEXT_FLAGS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Launcher.Utilities"

.field private static final WIDGET_PREVIEW_ICON_PADDING_PERCENTAGE:F = 0.25f

.field private static final alphanumSupEndCodePoint:I = 0x1f1ff

.field private static final alphanumSupStartCodePoint:I = 0x1f100

.field private static final emojiEndCodePoint:I = 0x1f6ff

.field private static final emojiStartCodePoint:I = 0x1f300

.field private static mBgPaint:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

.field private static mRandom:Ljava/util/Random;

.field static mSupportFlexibleGrid:Z

.field static mSupportGridSizeArray:[Ljava/lang/String;

.field private static mToast:Landroid/widget/Toast;

.field static mUsedGridSizeIdx:[Z

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static sCheckComponentMetadataForIconTray:Ljava/lang/reflect/Method;

.field private static sGetDrawableForIconTrayMethod:Ljava/lang/reflect/Method;

.field private static sShouldPackIntoIconTray:Ljava/lang/reflect/Method;

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/launcher2/Utilities;->mBgPaint:Landroid/util/SparseArray;

    sput-object v2, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sput-object v2, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sput-object v1, Lcom/android/launcher2/Utilities;->mRandom:Ljava/util/Random;

    const-string v1, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    sput-object v2, Lcom/android/launcher2/Utilities;->sGetDrawableForIconTrayMethod:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/android/launcher2/Utilities;->sCheckComponentMetadataForIconTray:Ljava/lang/reflect/Method;

    sput-object v2, Lcom/android/launcher2/Utilities;->sShouldPackIntoIconTray:Ljava/lang/reflect/Method;

    new-instance v1, Lcom/android/launcher2/Utilities$CanvasPool;

    invoke-direct {v1, v2}, Lcom/android/launcher2/Utilities$CanvasPool;-><init>(Lcom/android/launcher2/Utilities$1;)V

    sput-object v1, Lcom/android/launcher2/Utilities;->mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

    sput-object v2, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    const/16 v1, 0xa

    new-array v1, v1, [Z

    sput-object v1, Lcom/android/launcher2/Utilities;->mUsedGridSizeIdx:[Z

    sput-boolean v0, Lcom/android/launcher2/Utilities;->mSupportFlexibleGrid:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/launcher2/Utilities;->ATLEAST_MARSHMALLOW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static DEBUGGABLE()Z
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    return v0
.end method

.method public static beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    const-string v2, "1"

    const/4 v3, 0x0

    const-string v4, "gsm.sim.screenEvent"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    const/4 v3, 0x1

    const-string v4, "gsm.sim.screenEvent"

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.stk.event"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/launcher2/CatEventDownload;

    invoke-direct {v0}, Lcom/android/launcher2/CatEventDownload;-><init>()V

    const-string v2, "STK EVENT"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CatEventDownload;->putExtra(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "Launcher.Utilities"

    const-string v3, "broadcastStkIntent sent"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public static changeTextColor(Landroid/view/View;II)V
    .locals 7

    const/4 v6, 0x0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p2, :cond_0

    const v5, 0x7f0b0063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0062

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v0, v5

    const v5, 0x7f0d0001

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v0, v4}, Lcom/android/launcher2/AppIconView;->setShadowLayer(FFFI)V

    return-void

    :cond_0
    const v5, 0x7f0b0061

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0060

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v0, v5

    const v5, 0x7f0d002d

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    goto :goto_0
.end method

.method public static checkInstallApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v4, "Launcher.Utilities"

    const-string v5, "PackageManager is null in isPackageExist() "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Launcher.Utilities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NameNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkMaxGridsizefromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)[I
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v9, "folder"

    const-string v5, "favorite"

    const-string v8, "clock"

    const-string v10, "search"

    const-string v6, "appwidget"

    const-string v11, "shortcut"

    const-string v7, "autoinstall"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b0003

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0b0004

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v33, 0x0

    aput v14, v22, v33

    const/16 v33, 0x1

    aput v15, v22, v33

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v29

    const/16 v24, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    const/16 v33, 0x3

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v33

    move/from16 v0, v33

    move/from16 v1, v29

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v33, 0x1

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0c000c

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v33

    sput-boolean v33, Lcom/android/launcher2/Utilities;->mSupportFlexibleGrid:Z

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const v34, 0x7f0f0007

    invoke-virtual/range {v33 .. v34}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    sput-object v33, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    if-nez v19, :cond_6

    sget-boolean v33, Lcom/android/launcher2/Utilities;->mSupportFlexibleGrid:Z

    if-eqz v33, :cond_6

    sget-object v33, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    if-eqz v33, :cond_6

    const/16 v20, 0x0

    const/16 v18, 0x0

    :goto_1
    sget-object v33, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_21

    sget-object v33, Lcom/android/launcher2/Utilities;->mUsedGridSizeIdx:[Z

    aget-boolean v33, v33, v18

    if-eqz v33, :cond_3

    move/from16 v20, v18

    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_4
    const/16 v33, 0x2

    move/from16 v0, v30

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    sget-boolean v33, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v33, :cond_5

    const-string v33, "Launcher.Utilities"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "loadFavoritesContainer. Process tag: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz p2, :cond_7

    const/4 v12, 0x0

    const/16 v33, 0x0

    const-string v34, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const/16 v33, 0x0

    const-string v34, "x"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const/16 v33, 0x0

    const-string v34, "y"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    :goto_2
    const-string v33, "folder"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_9

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_9

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_9

    if-nez v19, :cond_9

    if-nez v23, :cond_8

    const-string v33, "Launcher.Utilities"

    const-string v34, "packageManager is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    sget-boolean v33, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v33, :cond_6

    const-string v33, "Launcher.Utilities"

    const-string v34, "Got exception parsing favorites."

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    return-object v22

    :cond_7
    :try_start_1
    sget-object v33, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/16 v33, 0x5

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v33, 0x6

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v32

    goto :goto_2

    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->packageEnabled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v33

    if-nez v33, :cond_9

    const-string v33, "Launcher.Utilities"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "skip because package not installed : "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x0

    const-string v36, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_9
    if-eqz v31, :cond_a

    const-string v33, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_d

    :cond_a
    const/16 v25, 0x0

    :goto_4
    if-eqz v32, :cond_b

    const-string v33, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_e

    :cond_b
    const/16 v26, 0x0

    :goto_5
    const-string v28, "1"

    move-object/from16 v27, v28

    const-string v33, "favorite"

    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Utilities;->checkValidGridSize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_6
    if-nez p2, :cond_0

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    :cond_d
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_4

    :cond_e
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    goto :goto_5

    :cond_f
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Utilities;->checkValidGridSize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_11

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Utilities;->checkValidGridSize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_11
    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_19

    const-string v27, "4"

    const-string v28, "1"

    if-eqz p2, :cond_17

    const/16 v33, 0x0

    const-string v34, "spanX"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v33, 0x0

    const-string v34, "spanY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_12
    :goto_7
    if-eqz v27, :cond_13

    const-string v33, "null"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_14

    :cond_13
    const-string v27, "4"

    :cond_14
    if-eqz v28, :cond_15

    const-string v33, "null"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_16

    :cond_15
    const-string v28, "1"

    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Utilities;->checkValidGridSize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    const/16 v33, 0x7

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_18

    const/16 v33, 0x7

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    :cond_18
    const/16 v33, 0x8

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_12

    const/16 v33, 0x8

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_7

    :cond_19
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1a

    const-string v27, "2"

    const-string v28, "2"

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Utilities;->checkValidGridSize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1a
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_20

    if-eqz p2, :cond_1f

    const/16 v33, 0x0

    const-string v34, "spanX"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v33, 0x0

    const-string v34, "spanY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :goto_8
    if-eqz v27, :cond_1b

    const-string v33, "null"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1c

    :cond_1b
    const-string v27, "1"

    :cond_1c
    if-eqz v28, :cond_1d

    const-string v33, "null"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1e

    :cond_1d
    const-string v28, "1"

    :cond_1e
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Utilities;->checkValidGridSize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    const/16 v33, 0x7

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v27

    const/16 v33, 0x8

    move/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_8

    :cond_20
    sget-boolean v33, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v33, :cond_c

    const-string v33, "Launcher.Utilities"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Invalid tag <"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "> detected while parsing favorites at line "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_21
    sget-object v33, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v33, v33, v20

    if-eqz v33, :cond_6

    sget-object v33, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v33, v33, v20

    const-string v34, "x"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v33, v0

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_6

    const/16 v33, 0x0

    const/16 v34, 0x0

    aget-object v34, v17, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    aput v34, v22, v33

    const/16 v33, 0x1

    const/16 v34, 0x1

    aget-object v34, v17, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    aput v34, v22, v33

    const-string v33, "Launcher.Utilities"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "checkMaxGridsizefromItems() maxGridIndex "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "  newGridXY "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x0

    aget v35, v22, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "x"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x1

    aget v35, v22, v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static checkOMCFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Launcher.Utilities"

    const-string v2, "checkOMCFilePath => omcFile exists, omc file path will return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    :cond_0
    const-string v1, "Launcher.Utilities"

    const-string v2, "checkOMCFilePath => omcFile is not exists, csc file path will return."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    goto :goto_0
.end method

.method private static checkValidGridSize(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v8, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    if-nez v8, :cond_0

    const v8, 0x7f0c000c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    sput-boolean v8, Lcom/android/launcher2/Utilities;->mSupportFlexibleGrid:Z

    const v8, 0x7f0f0007

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    :cond_0
    sget-boolean v8, Lcom/android/launcher2/Utilities;->mSupportFlexibleGrid:Z

    if-nez v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz p3, :cond_3

    const-string v8, ""

    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    move v5, v7

    :goto_1
    if-eqz p4, :cond_4

    const-string v8, ""

    invoke-virtual {p4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    move v6, v7

    :goto_2
    add-int/lit8 v8, v5, -0x1

    add-int/2addr p1, v8

    add-int/lit8 v8, v6, -0x1

    add-int/2addr p2, v8

    const/4 v1, 0x0

    :goto_3
    sget-object v8, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_1

    sget-object v8, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v8, v8, v1

    if-eqz v8, :cond_7

    sget-object v8, Lcom/android/launcher2/Utilities;->mSupportGridSizeArray:[Ljava/lang/String;

    aget-object v8, v8, v1

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v8, v0

    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    const/4 v8, 0x0

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-le v2, p1, :cond_7

    if-le v3, p2, :cond_7

    sget-object v8, Lcom/android/launcher2/Utilities;->mUsedGridSizeIdx:[Z

    aput-boolean v7, v8, v1

    goto :goto_0

    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    :cond_6
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public static createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    const-string v4, ", "

    invoke-static {v4, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v6, p1, :cond_0

    if-eq v5, p2, :cond_1

    :cond_0
    int-to-float v7, p1

    int-to-float v8, v6

    div-float/2addr v7, v8

    int-to-float v8, p2

    int-to-float v9, v5

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v7, v6

    mul-float/2addr v7, v4

    float-to-int v6, v7

    int-to-float v7, v5

    mul-float/2addr v7, v4

    float-to-int v5, v7

    :cond_1
    sub-int v1, p1, v6

    sub-int v2, p2, v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_2

    if-gtz v1, :cond_2

    if-lez v2, :cond_3

    :cond_2
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v7, Lcom/android/launcher2/Utilities;->mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

    invoke-virtual {v7}, Lcom/android/launcher2/Utilities$CanvasPool;->get()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v7, v1

    mul-float/2addr v7, v12

    int-to-float v8, v2

    mul-float/2addr v8, v12

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v0, p0, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object p0, v3

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v7, Lcom/android/launcher2/Utilities;->mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

    invoke-virtual {v7, v0}, Lcom/android/launcher2/Utilities$CanvasPool;->recycle(Landroid/graphics/Canvas;)V

    :cond_3
    return-object p0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;IIZ)Landroid/graphics/Bitmap;
    .locals 20

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_0
    if-nez v8, :cond_1

    move-object/from16 v8, p0

    :cond_1
    instance-of v0, v8, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object v13, v8

    check-cast v13, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_2
    :goto_0
    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    if-lez v16, :cond_3

    if-gtz v15, :cond_6

    :cond_3
    move/from16 v16, p2

    move/from16 v15, p3

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    sub-int v9, p2, v16

    sub-int v10, p3, v15

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v17, Lcom/android/launcher2/Utilities;->mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Utilities$CanvasPool;->get()Landroid/graphics/Canvas;

    move-result-object v6

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    int-to-float v0, v9

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v17, v17, v18

    int-to-float v0, v10

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v6, v14, v14}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz p4, :cond_4

    new-instance v7, Landroid/graphics/ColorMatrix;

    invoke-direct {v7}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance v11, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v11, v7}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_4
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v8, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v17, Lcom/android/launcher2/Utilities;->mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/launcher2/Utilities$CanvasPool;->recycle(Landroid/graphics/Canvas;)V

    return-object v4

    :cond_5
    instance-of v0, v8, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object v5, v8

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    :cond_6
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(FF)F

    move-result v14

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    int-to-float v0, v15

    move/from16 v17, v0

    mul-float v17, v17, v14

    move/from16 v0, v17

    float-to-int v15, v0

    goto/16 :goto_1
.end method

.method public static createTransparentBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v3, Lcom/android/launcher2/Utilities;->mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

    invoke-virtual {v3}, Lcom/android/launcher2/Utilities$CanvasPool;->get()Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/android/launcher2/Utilities;->mCanvasPool:Lcom/android/launcher2/Utilities$CanvasPool;

    invoke-virtual {v3, v1}, Lcom/android/launcher2/Utilities$CanvasPool;->recycle(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "Launcher.Utilities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dir fileList.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v3, v2, v4

    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delete failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v7, p1

    mul-float/2addr v7, v10

    int-to-float v8, v4

    div-float/2addr v7, v8

    int-to-float v8, p2

    mul-float/2addr v8, v10

    int-to-float v9, v3

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    cmpl-float v7, v5, v10

    if-lez v7, :cond_0

    move v6, v4

    :goto_0
    cmpl-float v7, v5, v10

    if-lez v7, :cond_1

    move v2, v3

    :goto_1
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    invoke-virtual {p0, v11, v11, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_0
    int-to-float v7, v4

    mul-float/2addr v7, v5

    float-to-int v6, v7

    goto :goto_0

    :cond_1
    int-to-float v7, v3

    mul-float/2addr v7, v5

    float-to-int v2, v7

    goto :goto_1
.end method

.method private static declared-synchronized ensureBlackPaint()V
    .locals 3

    const-class v1, Lcom/android/launcher2/Utilities;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Utilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/android/launcher2/Utilities;->mBgPaint:Landroid/util/SparseArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 28

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    mul-int v25, v9, v22

    div-int v25, v25, p1

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    const/16 v19, 0x1

    :cond_0
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v11, v0, [F

    const/16 v25, 0x168

    move/from16 v0, v25

    new-array v13, v0, [F

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v7, -0x1

    const/16 v24, 0x0

    :goto_0
    move/from16 v0, v24

    if-ge v0, v9, :cond_4

    const/16 v23, 0x0

    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    shr-int/lit8 v25, v5, 0x18

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0xff

    const/16 v25, 0x80

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    :cond_1
    :goto_2
    add-int v23, v23, v19

    goto :goto_1

    :cond_2
    const/high16 v25, -0x1000000

    or-int v16, v5, v25

    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    if-ltz v12, :cond_1

    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    const/16 v25, 0x1

    aget v25, v11, v25

    const/16 v26, 0x2

    aget v26, v11, v26

    mul-float v20, v25, v26

    aget v25, v13, v12

    add-float v25, v25, v20

    aput v25, v13, v12

    aget v25, v13, v12

    cmpl-float v25, v25, v10

    if-lez v25, :cond_1

    aget v10, v13, v12

    move v7, v12

    goto :goto_2

    :cond_3
    add-int v24, v24, v19

    goto :goto_0

    :cond_4
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    const/high16 v6, -0x1000000

    const/high16 v10, -0x40800000    # -1.0f

    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v0, v9, :cond_8

    const/16 v23, 0x0

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v25

    const/high16 v26, -0x1000000

    or-int v16, v25, v26

    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    if-ne v12, v7, :cond_5

    const/16 v25, 0x1

    aget v18, v11, v25

    const/16 v25, 0x2

    aget v21, v11, v25

    const/high16 v25, 0x42c80000    # 100.0f

    mul-float v25, v25, v18

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const v26, 0x461c4000    # 10000.0f

    mul-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v8, v25, v26

    mul-float v20, v18, v21

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    if-nez v15, :cond_6

    move/from16 v14, v20

    :goto_5
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    cmpl-float v25, v14, v10

    if-lez v25, :cond_5

    move v10, v14

    move/from16 v6, v16

    :cond_5
    add-int v23, v23, v19

    goto :goto_4

    :cond_6
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    add-float v14, v25, v20

    goto :goto_5

    :cond_7
    add-int v24, v24, v19

    goto :goto_3

    :cond_8
    return v6
.end method

.method static findSystemApk(Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to find resources for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "Launcher.Utilities"

    const-string v4, "Could not write bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v3, "Launcher.Utilities"

    const-string v4, "getAppVersion NameNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getApplyScreenGridApps(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string v1, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Apps.applyScreenGrid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v0, p1

    int-to-float v3, v4

    div-float v7, v0, v3

    int-to-float v0, p2

    int-to-float v3, v5

    div-float v8, v0, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmapFromResId(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, p2, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    instance-of v2, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    :cond_2
    const v5, 0x1ffffff

    if-eq p2, v5, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v4

    goto :goto_0
.end method

.method public static getBitmapWithColor(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    if-nez p0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/launcher2/Utilities;->getBitmapFromResId(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    const v4, 0x1ffffff

    if-eq p2, v4, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4, v7, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v3

    goto :goto_0
.end method

.method public static getBitmapWithSizeForTheme(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 11

    if-nez p0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v8, p1

    int-to-float v9, v7

    div-float v4, v8, v9

    int-to-float v8, p2

    int-to-float v9, v6

    div-float v5, v8, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-le v7, v6, :cond_3

    const/4 v8, 0x0

    int-to-float v9, p2

    int-to-float v10, v6

    mul-float/2addr v10, v3

    sub-float/2addr v9, v10

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_2
    :goto_1
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    if-le v6, v7, :cond_2

    int-to-float v8, p1

    int-to-float v9, v7

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method public static getBitmapWithStroke(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v5, -0x1000000

    invoke-static {p0, p1, v5, p3}, Lcom/android/launcher2/Utilities;->getBitmapWithColor(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/Utilities;->getBitmapWithColor(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const v7, 0x3f7eb852    # 0.995f

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4, v10, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    int-to-float v9, v2

    div-float/2addr v9, v11

    int-to-float v10, v1

    div-float/2addr v10, v11

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v3, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v9, v2

    int-to-float v9, v9

    div-float/2addr v9, v11

    neg-int v10, v1

    int-to-float v10, v10

    div-float/2addr v10, v11

    invoke-virtual {v3, v8, v9, v10, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    return-object v0
.end method

.method public static getDrawableForIconTray(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/launcher2/Launcher;->mIconTrayEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    sget-object v2, Lcom/android/launcher2/Utilities;->sGetDrawableForIconTrayMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_2

    const-string v2, "android.content.pm.PackageManager"

    const-string v3, "getDrawableForIconTray"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/drawable/Drawable;

    aput-object v5, v4, v7

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Utilities;->sGetDrawableForIconTrayMethod:Ljava/lang/reflect/Method;

    :cond_2
    sget-object v2, Lcom/android/launcher2/Utilities;->sCheckComponentMetadataForIconTray:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    const-string v2, "android.content.pm.PackageManager"

    const-string v3, "checkComponentMetadataForIconTray"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4, v6}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Utilities;->sCheckComponentMetadataForIconTray:Ljava/lang/reflect/Method;

    :cond_3
    sget-object v2, Lcom/android/launcher2/Utilities;->sShouldPackIntoIconTray:Ljava/lang/reflect/Method;

    if-nez v2, :cond_4

    const-string v2, "android.content.pm.PackageManager"

    const-string v3, "shouldPackIntoIconTray"

    new-array v4, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4, v6}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/Utilities;->sShouldPackIntoIconTray:Ljava/lang/reflect/Method;

    :cond_4
    sget-object v2, Lcom/android/launcher2/Utilities;->sGetDrawableForIconTrayMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/launcher2/Utilities;->sCheckComponentMetadataForIconTray:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/launcher2/Utilities;->sShouldPackIntoIconTray:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    :cond_5
    const-string v2, "Launcher.Utilities"

    const-string v3, "getDrawableForIconTray, failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Utilities;->sCheckComponentMetadataForIconTray:Ljava/lang/reflect/Method;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->getDrawableForIconTrayLocal(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Utilities;->sShouldPackIntoIconTray:Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->getDrawableForIconTrayLocal(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->getDrawableForIconTrayLocal(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private static getDrawableForIconTrayLocal(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/Utilities;->sGetDrawableForIconTrayMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEditTextMaxLengthFilter(Landroid/content/Context;ILandroid/widget/EditText;)[Landroid/text/InputFilter;
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher2/Utilities$1;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher2/Utilities$1;-><init>(ILandroid/content/Context;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getFlipFontValue(Landroid/content/res/Configuration;)I
    .locals 4

    :try_start_0
    const-class v2, Landroid/content/res/Configuration;

    const-string v3, "FlipFont"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v2, "FlipFont"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "FlipFont"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getGhostMatrixColorFilter()Landroid/graphics/ColorMatrixColorFilter;
    .locals 8

    const/4 v7, 0x0

    const/16 v0, 0x82

    const/16 v4, 0x7d

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v2, v4, v5

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    const/16 v4, 0x14

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v7, v4, v5

    const/4 v5, 0x2

    aput v7, v4, v5

    const/4 v5, 0x3

    aput v7, v4, v5

    const/4 v5, 0x4

    int-to-float v6, v0

    aput v6, v4, v5

    const/4 v5, 0x5

    aput v7, v4, v5

    const/4 v5, 0x6

    aput v2, v4, v5

    const/4 v5, 0x7

    aput v7, v4, v5

    const/16 v5, 0x8

    aput v7, v4, v5

    const/16 v5, 0x9

    int-to-float v6, v0

    aput v6, v4, v5

    const/16 v5, 0xa

    aput v7, v4, v5

    const/16 v5, 0xb

    aput v7, v4, v5

    const/16 v5, 0xc

    aput v2, v4, v5

    const/16 v5, 0xd

    aput v7, v4, v5

    const/16 v5, 0xe

    int-to-float v6, v0

    aput v6, v4, v5

    const/16 v5, 0xf

    aput v7, v4, v5

    const/16 v5, 0x10

    aput v7, v4, v5

    const/16 v5, 0x11

    aput v7, v4, v5

    const/16 v5, 0x12

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/16 v5, 0x13

    aput v7, v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v1, v7}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    invoke-virtual {v1, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    return-object v4
.end method

.method public static getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V
    .locals 9

    const/4 v5, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "location must be an array of two integers"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-array v1, v5, [F

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v6

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v1, v7

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    :goto_0
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_3

    if-eq v3, p1, :cond_3

    move-object v2, v3

    check-cast v2, Landroid/view/View;

    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v6

    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    aput v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_2
    aget v4, v1, v6

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v6

    aget v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    aput v4, v1, v7

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_0

    :cond_3
    aget v4, v1, v6

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v6

    aget v4, v1, v7

    add-float/2addr v4, v8

    float-to-int v4, v4

    aput v4, p0, v7

    return-void
.end method

.method public static getRandomColor(III)I
    .locals 4

    sget-object v3, Lcom/android/launcher2/Utilities;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v2, v3, p1

    sget-object v3, Lcom/android/launcher2/Utilities;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v1, v3, p1

    sget-object v3, Lcom/android/launcher2/Utilities;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, p1

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static getResizedDrawable(Landroid/content/Context;III)Landroid/graphics/drawable/Drawable;
    .locals 4

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_0
    return-object v1
.end method

.method public static getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static getRotationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v3, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static getSampleSize(IIII)I
    .locals 4

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v2, p0

    int-to-float v3, p2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p1, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v1

    const-string v4, "Launcher.Utilities"

    const-string v5, "ThemesAndWallpapers is not installed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static hasPermissionForActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/launcher2/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-nez v4, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isChineseAsLocaleDefault()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN_#Hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmoji(I)Z
    .locals 1

    const v0, 0x1f300

    if-gt v0, p0, :cond_0

    const v0, 0x1f6ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnclosedAlphanumSuppplement(I)Z
    .locals 1

    const v0, 0x1f100

    if-gt v0, p0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExistSdCard(Landroid/content/Context;)Z
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageVolume;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object v5

    const-string v7, "sd"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    const/4 v1, 0x1

    :cond_1
    :goto_0
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isExistSdCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isExistSdCard e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isLayoutRtl()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLmpOrAbove()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileKeyboardMode()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNfcHwKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v4, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v4, v2, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string v3, "Launcher.Utilities"

    const-string v4, "PackageManager is null in isPackageExist() "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSamsungMembersEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.voc"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/launcher2/Utilities;->packageEnabled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, v2}, Lcom/android/launcher2/Utilities;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const v4, 0xa220268

    if-lt v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportCHNFeature(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const/high16 v6, 0x10000

    invoke-virtual {v4, p1, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_1

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    :goto_1
    return v5

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v4, "Launcher.Utilities"

    const-string v5, "PackageManager is null in isPackageExist() "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadBitmapToDesiredDimension(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;
    .locals 16

    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez p1, :cond_0

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    :cond_0
    const/4 v3, 0x0

    move v4, v3

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    iget v15, v13, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eq v14, v15, :cond_6

    const/4 v6, 0x1

    :goto_0
    if-eqz v6, :cond_1

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-eqz v14, :cond_1

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-eqz v14, :cond_1

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    int-to-float v14, v14

    iget v15, v13, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    int-to-float v15, v15

    div-float v7, v14, v15

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v14, v14

    mul-float/2addr v14, v7

    float-to-int v4, v14

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v14, v14

    mul-float/2addr v14, v7

    float-to-int v3, v14

    :cond_1
    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v15, v13, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ne v14, v15, :cond_7

    const/4 v9, 0x1

    :goto_1
    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v15, v13, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-le v14, v15, :cond_8

    const/4 v10, 0x1

    :goto_2
    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    iget v15, v13, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-ge v14, v15, :cond_9

    const/4 v11, 0x1

    :goto_3
    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v0, p3

    if-gt v14, v0, :cond_2

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p4

    if-le v14, v0, :cond_a

    :cond_2
    const/4 v12, 0x1

    :goto_4
    move/from16 v0, p3

    if-gt v4, v0, :cond_3

    move/from16 v0, p4

    if-le v3, v0, :cond_b

    :cond_3
    const/4 v8, 0x1

    :goto_5
    if-eqz v10, :cond_c

    if-eqz v8, :cond_c

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v4, v3, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v14

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_4
    :goto_6
    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v14, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    if-nez p1, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_5
    :goto_7
    if-eqz v5, :cond_10

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    invoke-virtual {v5, v14}, Landroid/graphics/Bitmap;->setDensity(I)V

    :goto_8
    return-object v5

    :cond_6
    const/4 v6, 0x0

    goto :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    :cond_a
    const/4 v12, 0x0

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    goto :goto_5

    :cond_c
    if-eqz v11, :cond_d

    if-eqz v12, :cond_d

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v14, v15, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v14

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    :cond_d
    if-eqz v11, :cond_e

    if-eqz v8, :cond_e

    const/4 v14, 0x0

    iput-boolean v14, v13, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    goto :goto_6

    :cond_e
    if-eqz v9, :cond_4

    if-eqz v12, :cond_4

    iget v14, v13, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v15, v13, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v14, v15, v0, v1}, Lcom/android/launcher2/Utilities;->getSampleSize(IIII)I

    move-result v14

    iput v14, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_6

    :cond_f
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Utilities;->drawableToBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_7

    :cond_10
    const-string v14, "Launcher.Utilities"

    const-string v15, "loadBitmapToDesiredDimension() failed to decode image stream"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8
.end method

.method public static loadCurentGridSize(Landroid/content/Context;[I)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[IZ)V

    return-void
.end method

.method public static loadCurentGridSize(Landroid/content/Context;[IZ)V
    .locals 28

    const-string v23, "com.sec.android.app.launcher.prefs"

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    if-eqz p2, :cond_7

    const/16 v23, 0x0

    const-string v24, "Workspace.HomeOnly.CellX"

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    aput v24, p1, v23

    const/16 v23, 0x1

    const-string v24, "Workspace.HomeOnly.CellY"

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    aput v24, p1, v23

    :goto_0
    const/16 v23, 0x0

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v23, 0x1

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const-string v23, "Launcher.Utilities"

    const-string v24, "loadCurentGridSize :  cellX,Y value is -1."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/4 v14, 0x0

    const-string v6, "favorites"

    const-string v7, "home"

    const-string v4, "/system/csc/default_workspace.xml"

    const-string v5, "/system/csc/default_workspace_homeonly.xml"

    const/4 v12, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_8

    new-instance v8, Ljava/io/File;

    const-string v23, "/system/csc/default_workspace_homeonly.xml"

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v23, v24, v26

    if-lez v23, :cond_9

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v14, 0x1

    move-object v12, v13

    :goto_2
    if-eqz v21, :cond_0

    :try_start_2
    const-string v23, "favorites"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    move-object/from16 v17, v21

    :cond_0
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v16, v0

    :cond_1
    :goto_3
    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    move/from16 v0, v23

    if-le v0, v9, :cond_f

    :cond_2
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_f

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v23, "home"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1, v14}, Lcom/android/launcher2/Utilities;->checkMaxGridsizefromItems(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Z)[I

    move-result-object v16

    const/16 v23, 0x0

    const/16 v24, 0x0

    aget v24, v16, v24

    aput v24, p1, v23

    const/16 v23, 0x1

    const/16 v24, 0x1

    aget v24, v16, v24

    aput v24, p1, v23

    const-string v23, "Launcher.Utilities"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "loadCurentGridSize() : MaxGridsize from default workspace :  xy[0] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, p1, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " xy[1] "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, p1, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v10

    :goto_4
    :try_start_3
    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_3

    const-string v23, "Launcher.Utilities"

    const-string v24, "Got exception parsing favorites."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    if-eqz v12, :cond_4

    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_5
    const/16 v23, 0x0

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    const/16 v23, 0x1

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_5
    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0003

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0004

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    :cond_6
    :goto_6
    return-void

    :cond_7
    const/16 v23, 0x0

    const-string v24, "Workspace.CellX"

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    aput v24, p1, v23

    const/16 v23, 0x1

    const-string v24, "Workspace.CellY"

    const/16 v25, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    aput v24, p1, v23

    goto/16 :goto_0

    :cond_8
    :try_start_5
    new-instance v8, Ljava/io/File;

    const-string v23, "/system/csc/default_workspace.xml"

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/16 v20, 0x0

    if-eqz p2, :cond_a

    const v20, 0x7f060013

    :goto_7
    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v21

    goto/16 :goto_2

    :cond_a
    const v20, 0x7f060010

    goto :goto_7

    :cond_b
    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_1

    const-string v23, "Launcher.Utilities"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Invalid tag <"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "> detected while parsing favorites at line "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v17 .. v17}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    :catch_1
    move-exception v10

    :goto_8
    :try_start_6
    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_c

    const-string v23, "Launcher.Utilities"

    const-string v24, "Got exception parsing favorites."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    if-eqz v12, :cond_d

    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_d
    :goto_9
    const/16 v23, 0x0

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_e

    const/16 v23, 0x1

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_e
    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0003

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0004

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    goto/16 :goto_6

    :cond_f
    if-eqz v12, :cond_10

    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :cond_10
    :goto_a
    const/16 v23, 0x0

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_11

    const/16 v23, 0x1

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_11
    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0003

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0004

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    goto/16 :goto_6

    :catch_2
    move-exception v10

    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_10

    const-string v23, "Launcher.Utilities"

    const-string v24, "Got exception parsing favorites."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_3
    move-exception v10

    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_4

    const-string v23, "Launcher.Utilities"

    const-string v24, "Got exception parsing favorites."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    :catch_4
    move-exception v10

    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_d

    const-string v23, "Launcher.Utilities"

    const-string v24, "Got exception parsing favorites."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :catch_5
    move-exception v10

    :goto_b
    :try_start_9
    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_12

    const-string v23, "Launcher.Utilities"

    const-string v24, "Got exception parsing favorites."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_12
    if-eqz v12, :cond_13

    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_13
    :goto_c
    const/16 v23, 0x0

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_14

    const/16 v23, 0x1

    aget v23, p1, v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    :cond_14
    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0003

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0b0004

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    aput v24, p1, v23

    goto/16 :goto_6

    :catch_6
    move-exception v10

    sget-boolean v23, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v23, :cond_13

    const-string v23, "Launcher.Utilities"

    const-string v24, "Got exception parsing favorites."

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catchall_0
    move-exception v23

    :goto_d
    if-eqz v12, :cond_15

    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_15
    :goto_e
    const/16 v24, 0x0

    aget v24, p1, v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_16

    const/16 v24, 0x1

    aget v24, p1, v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_17

    :cond_16
    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0003

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    aput v25, p1, v24

    const/16 v24, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0b0004

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    aput v25, p1, v24

    :cond_17
    throw v23

    :catch_7
    move-exception v10

    sget-boolean v24, Lcom/android/launcher2/Utilities;->DEBUGGABLE:Z

    if-eqz v24, :cond_15

    const-string v24, "Launcher.Utilities"

    const-string v25, "Got exception parsing favorites."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    :catchall_1
    move-exception v23

    move-object v12, v13

    goto :goto_d

    :catch_8
    move-exception v10

    move-object v12, v13

    goto/16 :goto_b

    :catch_9
    move-exception v10

    move-object v12, v13

    goto/16 :goto_8

    :catch_a
    move-exception v10

    move-object v12, v13

    goto/16 :goto_4
.end method

.method public static loadWidgetPreview(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;IIII[I)Landroid/graphics/Bitmap;
    .locals 36

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v35

    if-eqz v35, :cond_7

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v30

    const/4 v6, 0x0

    move-object/from16 v0, v30

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v0, v6, v1, v2, v3}, Lcom/android/launcher2/Utilities;->loadBitmapToDesiredDimension(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_6

    const/4 v6, 0x0

    aget v18, p6, v6

    const/4 v6, 0x1

    aget v19, p6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v6, 0x7f090005

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const v6, 0x7f090141

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    const v6, 0x7f090140

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v6, v7, :cond_1

    const v6, 0x7f0901c7

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    move/from16 v17, v0

    :cond_1
    move/from16 v16, v17

    mul-int v33, v26, v18

    mul-int v32, v25, v19

    move/from16 v8, v33

    move/from16 v9, v32

    move/from16 v0, v16

    int-to-float v6, v0

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float/2addr v6, v7

    float-to-int v0, v6

    move/from16 v27, v0

    const/high16 v24, 0x3f800000    # 1.0f

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/4 v6, 0x1

    move/from16 v0, v18

    if-gt v0, v6, :cond_8

    mul-int/lit8 v6, v27, 0x2

    add-int v9, v16, v6

    move v8, v9

    :goto_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_2

    const/4 v6, 0x1

    move/from16 v0, v19

    if-eq v0, v6, :cond_3

    :cond_2
    const v6, 0x7f020011

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    :cond_3
    const/4 v10, 0x0

    :try_start_1
    div-int/lit8 v6, v8, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v24

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v12, v6

    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    move/from16 v0, v16

    int-to-float v7, v0

    mul-float v7, v7, v24

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    sub-float/2addr v6, v7

    float-to-int v13, v6

    if-eqz v28, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v34

    if-lez p3, :cond_b

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v6, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_4
    :goto_2
    if-nez v10, :cond_5

    const v6, 0x7f02007b

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_5
    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v24

    float-to-int v14, v6

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, v24

    float-to-int v15, v6

    move-object v11, v5

    invoke-static/range {v10 .. v15}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_3
    return-object v5

    :cond_7
    :try_start_2
    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadWidgetPreview() : Unable to find package "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v22

    const-string v6, "Launcher.Utilities"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadWidgetPreview() : Unable to find package"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "Launcher.Utilities"

    const-string v7, "try to get preview from AppWidgetManagerCompat"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p0 .. p0}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/AppWidgetManagerCompat;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v6, v0, v1, v2, v3}, Lcom/android/launcher2/Utilities;->loadBitmapToDesiredDimension(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;III)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_0

    :cond_8
    mul-int/lit8 v6, v27, 0x4

    add-int v9, v16, v6

    move v8, v9

    goto/16 :goto_1

    :cond_9
    move/from16 v0, v33

    move/from16 v1, v32

    if-le v0, v1, :cond_a

    move/from16 v0, v33

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v0, v32

    int-to-float v6, v0

    int-to-float v7, v8

    move/from16 v0, v33

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v9, v6

    int-to-float v6, v9

    mul-int/lit8 v7, v27, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v24

    goto/16 :goto_1

    :cond_a
    move/from16 v0, v32

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move/from16 v0, v33

    int-to-float v6, v0

    int-to-float v7, v9

    move/from16 v0, v32

    int-to-float v11, v0

    div-float/2addr v7, v11

    mul-float/2addr v6, v7

    float-to-int v8, v6

    int-to-float v6, v8

    mul-int/lit8 v7, v27, 0x2

    add-int v7, v7, v16

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v24

    goto/16 :goto_1

    :cond_b
    :try_start_3
    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v6

    if-eqz v6, :cond_c

    const/16 v23, 0x0

    :goto_4
    :try_start_4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v29

    move-object/from16 v0, v29

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v10

    goto/16 :goto_2

    :cond_c
    const/16 v23, 0x2000

    goto :goto_4

    :catch_1
    move-exception v22

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v22

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Launcher.Utilities"

    const-string v7, "Got exception Resources.NotFoundException"

    move-object/from16 v0, v22

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_3
    move-exception v22

    :try_start_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2
.end method

.method public static loadWidgetThemePreview(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;IIII[I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportChinaPreloadTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/ThemeLoader;->loadWidgetPreviewBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lcom/android/launcher2/Utilities;->scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public static onDestroy()V
    .locals 1

    sget-object v0, Lcom/android/launcher2/Utilities;->mBgPaint:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 13

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {p0}, Lcom/android/launcher2/Utilities;->ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;

    move-result-object v5

    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v10

    int-to-float v3, v0

    add-int v0, v12, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/android/launcher2/Utilities;->ensureBlackPaint()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sget-object v1, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float v8, v0, v1

    sget-object v0, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v0, v11

    int-to-float v1, v10

    sub-float/2addr v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int v1, v12, v7

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sget-object v2, Lcom/android/launcher2/Utilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static packageEnabled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Launcher.Utilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public static resampleIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_1

    :cond_0
    invoke-static {p0, p2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static scaleBitmapToDesiredDimension(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v1

    int-to-float v9, p1

    div-float v7, v8, v9

    int-to-float v8, v0

    int-to-float v9, p2

    div-float v5, v8, v9

    cmpl-float v8, v5, v7

    if-lez v8, :cond_2

    move v6, v5

    :goto_1
    const/4 v2, 0x0

    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-eqz v8, :cond_3

    int-to-float v8, v1

    div-float/2addr v8, v6

    float-to-int v4, v8

    int-to-float v8, v0

    div-float/2addr v8, v6

    float-to-int v3, v8

    const/4 v8, 0x0

    invoke-static {p0, v4, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    move-object v2, p0

    goto :goto_0
.end method

.method public static scaleDrawableSize(Landroid/content/Context;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/drawable/Drawable;
    .locals 6

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static setApplyScreenGridApps(Landroid/content/Context;Z)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Apps.applyScreenGrid"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 5

    const v4, 0x7f080073

    const/4 v1, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher2/Utilities;->mToast:Landroid/widget/Toast;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static spanSearchView(Landroid/content/res/Resources;Landroid/widget/SearchView;Lcom/android/launcher2/MenuView;Lcom/android/launcher2/HomeView;)V
    .locals 22

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-class v17, Landroid/widget/SearchView;

    const-string v18, "mVoiceButton"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/widget/ImageView;

    move-object v15, v0

    const-class v17, Landroid/widget/SearchView;

    const-string v18, "mSearchButton"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/widget/ImageView;

    move-object v10, v0

    const-class v17, Landroid/widget/SearchView;

    const-string v18, "mSearchSrcTextView"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v13, Landroid/text/SpannableStringBuilder;

    const-string v17, "  "

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v17

    if-nez v17, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v17

    if-eqz v17, :cond_2

    :cond_0
    const v17, 0x7f0800c2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v5}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff4000000000000L    # 1.25

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-int v14, v0

    const/16 v17, 0x1

    const/16 v18, -0xf

    add-int/lit8 v19, v14, 0x1

    add-int/lit8 v20, v14, -0xf

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-boolean v17, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v17, :cond_3

    const v7, 0x7f0d002e

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    new-instance v9, Landroid/graphics/LightingColorFilter;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v6, v0}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    new-instance v17, Landroid/text/style/ImageSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x21

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v5, v13}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v17

    if-eqz v17, :cond_1

    const v17, 0x7f0800c3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    :cond_3
    const v7, 0x7f0d0013

    goto :goto_2
.end method

.method public static startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V
    .locals 6

    const/high16 v5, 0x7f080000

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0, p2, p3}, Lcom/android/launcher2/LauncherApplication;->putActivityCallbacks(ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    :cond_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    const-string v2, "Launcher.Utilities"

    const-string v3, "startActivityForResultSafely activity is null!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, "Launcher.Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher does not have the permission to launch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "or use the exported attribute for this activity."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static startVoiceRecognitionActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "calling_package"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.speech.extra.PROMPT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, "free_form"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "TAG"

    const-string v3, "start voice recognition activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Lcom/android/launcher2/Launcher;

    const/16 v2, 0x72

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/android/launcher2/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;ILcom/android/launcher2/Launcher$ActivityResultCallback;)V

    return-void
.end method

.method public static storeGridLayoutPreference(Landroid/content/Context;II)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher2/Utilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static storeGridLayoutPreference(Landroid/content/Context;IIZ)V
    .locals 7

    const-string v4, "com.sec.android.app.launcher.prefs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_1

    const-string v4, "Workspace.HomeOnly.CellX"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "Workspace.HomeOnly.CellY"

    invoke-interface {v2, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "launcher_current_screen_grid"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string v4, "Workspace.CellX"

    invoke-interface {v2, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "Workspace.CellY"

    invoke-interface {v2, v4, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Launcher.Utilities"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storeGridLayoutPreference Settings.System.putString error e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/launcher2/Utilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
