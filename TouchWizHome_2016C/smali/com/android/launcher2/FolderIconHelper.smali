.class public Lcom/android/launcher2/FolderIconHelper;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;,
        Lcom/android/launcher2/FolderIconHelper$AppIconData;,
        Lcom/android/launcher2/FolderIconHelper$LocFolder;
    }
.end annotation


# static fields
.field private static final ALPHA_SCAN_AREA:I = 0x14

.field private static final CELL_2x2:I = 0x0

.field private static final CELL_3x3:I = 0x1

.field public static final DEBUG:Z = false

.field private static final FLAG_SUPPORT_FOLDER_IMG_SET:Z = true

.field private static FOLDER_ANIMATION_SCALE:I = 0x0

.field private static final FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

.field private static final FOLDER_ICON_PAINT:Landroid/graphics/Paint;

.field public static final FOLDER_SCALE:F = 0.6f

.field public static final FOLDER_SCALE_VI:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "Launcher.FolderIconHelper"

.field private static mAppIconSize:I

.field private static mEnabled2x2Layout:Z

.field private static sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

.field private static sDebugColors:[I

.field private static sDirections_land:[[[I

.field private static sDirections_port:[[[I

.field private static sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private static sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

.field private static sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/high16 v0, -0x80000000

    sput v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    sput v6, Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDebugColors:[I

    const/4 v0, 0x7

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_10

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_11

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_12

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_14

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_15

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_16

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_17

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_18

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_19

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_1a

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_1b

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_1c

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDirections_port:[[[I

    const/4 v0, 0x7

    new-array v0, v0, [[[I

    new-array v1, v7, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1d

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_1e

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_1f

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_20

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_21

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_22

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v9, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_23

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_24

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_25

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_26

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v5, [I

    fill-array-data v2, :array_27

    aput-object v2, v1, v6

    new-array v2, v5, [I

    fill-array-data v2, :array_28

    aput-object v2, v1, v7

    new-array v2, v5, [I

    fill-array-data v2, :array_29

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_2a

    aput-object v2, v1, v8

    new-array v2, v5, [I

    fill-array-data v2, :array_2b

    aput-object v2, v1, v9

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_2c

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_2d

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_2e

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_2f

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_30

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_31

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [[I

    new-array v3, v5, [I

    fill-array-data v3, :array_32

    aput-object v3, v2, v6

    new-array v3, v5, [I

    fill-array-data v3, :array_33

    aput-object v3, v2, v7

    new-array v3, v5, [I

    fill-array-data v3, :array_34

    aput-object v3, v2, v5

    new-array v3, v5, [I

    fill-array-data v3, :array_35

    aput-object v3, v2, v8

    new-array v3, v5, [I

    fill-array-data v3, :array_36

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v5, [I

    fill-array-data v4, :array_37

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v5, [I

    fill-array-data v4, :array_38

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sDirections_land:[[[I

    return-void

    :array_0
    .array-data 4
        -0xffff01
        -0xffff01
        -0xffff01
        -0xffff01
        -0xffff01
        -0xffff01
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_2
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_4
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_9
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_d
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x3
        -0x3
    .end array-data

    :array_f
    .array-data 4
        -0x3
        -0x3
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_12
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x3
        -0x3
    .end array-data

    :array_14
    .array-data 4
        -0x3
        -0x3
    .end array-data

    :array_15
    .array-data 4
        0x0
        -0x6
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_18
    .array-data 4
        -0x2
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x5
        -0x3
    .end array-data

    :array_1a
    .array-data 4
        -0x5
        -0x3
    .end array-data

    :array_1b
    .array-data 4
        0x3
        -0x6
    .end array-data

    :array_1c
    .array-data 4
        -0x3
        -0x6
    .end array-data

    :array_1d
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_1e
    .array-data 4
        -0x3
        0x0
    .end array-data

    :array_1f
    .array-data 4
        0x3
        0x0
    .end array-data

    :array_20
    .array-data 4
        -0x4
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x4
        0x0
    .end array-data

    :array_22
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_24
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_25
    .array-data 4
        -0x4
        -0x1
    .end array-data

    :array_26
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x4
        -0x1
    .end array-data

    :array_29
    .array-data 4
        -0x4
        -0x1
    .end array-data

    :array_2a
    .array-data 4
        0x3
        -0x2
    .end array-data

    :array_2b
    .array-data 4
        -0x3
        -0x2
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_2d
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_2e
    .array-data 4
        -0x3
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_30
    .array-data 4
        -0x9
        0x0
    .end array-data

    :array_31
    .array-data 4
        0x0
        -0x2
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x2
    .end array-data

    :array_33
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_34
    .array-data 4
        -0x3
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_36
    .array-data 4
        -0x9
        0x0
    .end array-data

    :array_37
    .array-data 4
        0x3
        -0x2
    .end array-data

    :array_38
    .array-data 4
        -0x3
        -0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0

    sput p0, Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I

    return p0
.end method

.method private static createFolderIconNoPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static createFolderIconNoPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->sort()V

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0, v0, v2}, Lcom/android/launcher2/FolderIconHelper;->createLockedFolderIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    if-eqz p3, :cond_3

    iget-object v3, p3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # getter for: Lcom/android/launcher2/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$000(Lcom/android/launcher2/FolderIconHelper$AppIconData;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-static {p0, p2, v1, p3, v4}, Lcom/android/launcher2/FolderIconHelper;->drawIcons(Landroid/content/Context;Lcom/android/launcher2/FolderItem;ILcom/android/launcher2/BaseItem;I)V

    if-eqz v3, :cond_0

    iput-object v3, p3, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method static createFolderIconWithPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v4

    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v4, v2, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFolderLock()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->enableFolderLock()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->isLockedFolder()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Lcom/android/launcher2/FolderItem;->haveOpenOnceOrNot()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p0, v0, v2}, Lcom/android/launcher2/FolderIconHelper;->createLockedFolderIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/android/launcher2/FolderIconHelper;->needMaskedIcon(Landroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    sget-object v5, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v4, v1, v7, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method static createLockedFolderIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private static drawIcons(Landroid/content/Context;Lcom/android/launcher2/FolderItem;ILcom/android/launcher2/BaseItem;I)V
    .locals 22

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/16 v17, 0x9

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    const/16 p2, 0x9

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/FolderIconHelper;->getIconScaleFactor(Lcom/android/launcher2/FolderItem;)F

    move-result v9

    invoke-static/range {p2 .. p2}, Lcom/android/launcher2/FolderIconHelper;->getCellType(I)I

    move-result v5

    const/4 v10, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    sget-boolean v17, Lcom/android/launcher2/FolderIconHelper;->mEnabled2x2Layout:Z

    if-eqz v17, :cond_3

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v10, v0, :cond_0

    :cond_3
    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v5}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getAppIconXYCord(II)[F

    move-result-object v6

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOffset(I)[I

    move-result-object v13

    const/16 v17, 0x0

    aget v18, v6, v17

    const/16 v19, 0x0

    aget v19, v13, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    aput v18, v6, v17

    const/16 v17, 0x1

    aget v18, v6, v17

    const/16 v19, 0x1

    aget v19, v13, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    aput v18, v6, v17

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/16 v18, 0x0

    aget v18, v6, v18

    const/16 v19, 0x1

    aget v19, v6, v19

    invoke-virtual/range {v17 .. v19}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v9}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p3

    if-ne v12, v0, :cond_5

    :cond_4
    add-int/lit8 v10, v10, 0x1

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    sget-object v17, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-virtual {v12}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v17

    if-nez v17, :cond_6

    const/4 v11, 0x1

    :cond_6
    if-nez v11, :cond_f

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_7
    instance-of v0, v12, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v17, v0

    if-nez v17, :cond_8

    instance-of v0, v12, Lcom/android/launcher2/AppItem;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    :cond_8
    invoke-virtual {v12}, Lcom/android/launcher2/BaseItem;->isPromise()Z

    move-result v17

    if-eqz v17, :cond_a

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    if-nez v17, :cond_9

    invoke-static {}, Lcom/android/launcher2/Utilities;->getGhostMatrixColorFilter()Landroid/graphics/ColorMatrixColorFilter;

    move-result-object v17

    sput-object v17, Lcom/android/launcher2/FolderIconHelper;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    :cond_9
    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    sget-object v18, Lcom/android/launcher2/FolderIconHelper;->sGhostColorFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_a
    new-instance v15, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v19, Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I

    sget v20, Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    sget-object v19, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v15, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_1
    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v17, p2, -0x1

    move/from16 v0, v17

    if-le v0, v14, :cond_0

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_b
    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    iget-object v0, v12, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget-object v21, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_c
    const/16 v16, 0x0

    instance-of v0, v12, Lcom/android/launcher2/AppItem;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    invoke-virtual {v12}, Lcom/android/launcher2/BaseItem;->getLoadingState()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v16, 0x1

    :cond_d
    if-eqz v16, :cond_e

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v17

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v18

    sget-object v19, Lcom/android/launcher2/IconConfig$TYPE;->MENU:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/Utilities;->createTransparentBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v8

    :goto_2
    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_e
    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_2

    :cond_f
    invoke-virtual {v12}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/utils/LiveIconUtils;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v17, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_CANVAS:Landroid/graphics/Canvas;

    const/16 v18, 0x0

    const/16 v19, 0x0

    sget-object v20, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ICON_PAINT:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public static getAppIconScaleFactor(Lcom/android/launcher2/FolderItem;)F
    .locals 5

    const/high16 v3, 0x3f800000    # 1.0f

    instance-of v4, p0, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    invoke-interface {p0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v1

    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper;->getCellType(I)I

    move-result v0

    sget-object v4, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v4, v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getMiniIconWidth(I)I

    move-result v2

    int-to-float v4, v2

    mul-float/2addr v3, v4

    sget v4, Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    :cond_0
    return v3
.end method

.method public static getAppIconXYCord(II)[F
    .locals 2

    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->getCellType(I)I

    move-result v0

    sget-object v1, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getAppIconXYCord(II)[F

    move-result-object v1

    return-object v1
.end method

.method private static getCellType(I)I
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/FolderIconHelper;->mEnabled2x2Layout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const v2, 0x7f0b0031

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sDirections_port:[[[I

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-object v1, v2, p1

    :goto_0
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_1

    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x12

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    :goto_1
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/launcher2/FolderIconHelper;->sDirections_land:[[[I

    add-int/lit8 v3, p2, -0x1

    aget-object v2, v2, v3

    aget-object v1, v2, p1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    if-ne p3, v2, :cond_2

    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x12

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_1

    :cond_2
    new-array v0, v6, [I

    aget v2, v1, v5

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v5

    aget v2, v1, v4

    sget v3, Lcom/android/launcher2/FolderIconHelper;->FOLDER_ANIMATION_SCALE:I

    mul-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_1
.end method

.method public static getIconScaleFactor(Lcom/android/launcher2/FolderItem;)F
    .locals 1

    invoke-static {p0}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor(Lcom/android/launcher2/FolderItem;)F

    move-result v0

    return v0
.end method

.method public static getOpenFolderBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # invokes: Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;
    invoke-static {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$100(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenFolderHighlightBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    # invokes: Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenHighlightFolderBitmap(I)Landroid/graphics/Bitmap;
    invoke-static {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->access$200(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOpenFolderScaledBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    check-cast p0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {p0}, Lcom/android/launcher2/BaseItem;->getTargetIconSize()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getOpenFolderScaledBitmap(Lcom/android/launcher2/FolderItem;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static initFolderResources(Landroid/content/res/Resources;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/FolderIconHelper;->mEnabled2x2Layout:Z

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    :cond_1
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sPortAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$AppIconData;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconHelper$AppIconData;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    :cond_3
    sget-object v0, Lcom/android/launcher2/FolderIconHelper;->sLandAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    sput-object v0, Lcom/android/launcher2/FolderIconHelper;->sCurrentAppIconData:Lcom/android/launcher2/FolderIconHelper$AppIconData;

    goto :goto_0
.end method

.method public static final needMaskedIcon(Landroid/graphics/Bitmap;)Z
    .locals 9

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v8}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x14

    div-int/lit8 v2, v7, 0x2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x14

    div-int/lit8 v3, v7, 0x2

    move v4, v2

    add-int/lit8 v0, v2, 0x14

    :goto_1
    if-ge v4, v0, :cond_3

    move v5, v3

    add-int/lit8 v1, v3, 0x14

    :goto_2
    if-ge v5, v1, :cond_2

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-ne v7, v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method
