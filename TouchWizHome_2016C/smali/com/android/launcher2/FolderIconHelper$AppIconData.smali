.class Lcom/android/launcher2/FolderIconHelper$AppIconData;
.super Ljava/lang/Object;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/FolderIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconData"
.end annotation


# instance fields
.field private EMPTY_BITMAP:Landroid/graphics/Bitmap;

.field private mFolderIconRect:Landroid/graphics/Rect;

.field private mMiniCellInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenFolderBitmapMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mMiniCellInfoMap:Ljava/util/HashMap;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mFolderIconRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    const v3, 0x7f090004

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    # setter for: Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I
    invoke-static {v3}, Lcom/android/launcher2/FolderIconHelper;->access$302(I)I

    # getter for: Lcom/android/launcher2/FolderIconHelper;->mAppIconSize:I
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->access$300()I

    move-result v0

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v4}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v4

    invoke-virtual {v4, v6, v0, v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v4

    invoke-virtual {v4, v5, v0, v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v4

    invoke-virtual {v4, v7, v0, v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v4

    invoke-virtual {v4, v8, v0, v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/launcher2/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;

    move-result-object v4

    invoke-virtual {v4, v9, v0, v0}, Lcom/android/launcher2/theme/OpenThemeManager$FolderStyle;->getCloseFolderBackground(III)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    invoke-direct {p0, v6}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mFolderIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    const v4, 0x7f02005f

    invoke-static {p1, v4, v0}, Lcom/android/launcher2/Utilities;->getBitmapFromResId(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    const v4, 0x7f02005e

    invoke-static {p1, v4, v0}, Lcom/android/launcher2/Utilities;->getBitmapFromResId(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    const v4, 0x7f020060

    invoke-static {p1, v4, v0}, Lcom/android/launcher2/Utilities;->getBitmapFromResId(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    const v4, 0x7f020061

    invoke-static {p1, v4, v0}, Lcom/android/launcher2/Utilities;->getBitmapFromResId(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    const v4, 0x7f020062

    invoke-static {p1, v4, v0}, Lcom/android/launcher2/Utilities;->getBitmapFromResId(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderIconHelper$AppIconData;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->EMPTY_BITMAP:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIconHelper$AppIconData;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconHelper$AppIconData;->getOpenHighlightFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getOpenFolderBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getOpenHighlightFolderBitmap(I)Landroid/graphics/Bitmap;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mOpenFolderBitmapMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public getAppIconXYCord(II)[F
    .locals 15

    iget-object v12, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mMiniCellInfoMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;

    if-nez v7, :cond_0

    new-instance v7, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;

    move/from16 v0, p2

    invoke-direct {v7, v0}, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;-><init>(I)V

    iget-object v12, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mMiniCellInfoMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v9, v7, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconWidth:I

    iget v5, v7, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconGapWidth:I

    iget v6, v7, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconHeight:I

    iget v4, v7, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconGapHeight:I

    iget v3, v7, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->colCount:I

    rem-int v1, p1, v3

    div-int v8, p1, v3

    sget-boolean v12, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v12, :cond_1

    add-int/lit8 v12, v3, -0x1

    sub-int v2, v12, v1

    :goto_0
    add-int v12, v9, v5

    mul-int v10, v12, v2

    add-int v12, v6, v4

    mul-int v11, v12, v8

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    int-to-float v14, v10

    aput v14, v12, v13

    const/4 v13, 0x1

    int-to-float v14, v11

    aput v14, v12, v13

    return-object v12

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public getMiniIconWidth(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mMiniCellInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;-><init>(I)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mMiniCellInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconWidth:I

    int-to-float v1, v1

    const v2, 0x3f5eb852    # 0.87f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    :goto_0
    return v1

    :cond_1
    iget v1, v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->miniIconWidth:I

    goto :goto_0
.end method

.method public getOffset(I)[I
    .locals 4

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mMiniCellInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;-><init>(I)V

    iget-object v1, p0, Lcom/android/launcher2/FolderIconHelper$AppIconData;->mMiniCellInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->offsetX:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Lcom/android/launcher2/FolderIconHelper$MiniCellInfo;->offsetY:I

    aput v3, v1, v2

    return-object v1
.end method
