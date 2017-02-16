.class Lcom/android/systemui/ImageWallpaper$ExtractColor;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExtractColor"
.end annotation


# static fields
.field static mDefaultColor:I

.field static mLimittedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xff

    const/16 v1, 0xc8

    const/16 v0, 0x6e

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mDefaultColor:I

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/systemui/ImageWallpaper$ExtractColor;->mLimittedColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorHSV(Landroid/graphics/Bitmap;[Landroid/graphics/Rect;)[F
    .locals 26

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v11, v0, [F

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v12, v0, [F

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v0, v20

    if-le v0, v8, :cond_1

    int-to-float v0, v8

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v15, v0

    :goto_0
    if-gtz v15, :cond_0

    const/4 v15, 0x1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_4

    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/Rect;->left:I

    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->right:I

    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    aget-object v23, p1, v9

    move-object/from16 v0, v23

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v10

    :goto_2
    move/from16 v0, v21

    if-ge v0, v13, :cond_3

    move/from16 v22, v19

    :goto_3
    move/from16 v0, v22

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v23, 0x0

    aget v23, v11, v23

    add-float v16, v16, v23

    const/16 v23, 0x1

    aget v23, v11, v23

    add-float v17, v17, v23

    const/16 v23, 0x2

    aget v23, v11, v23

    add-float v18, v18, v23

    add-int/lit8 v14, v14, 0x1

    add-int v22, v22, v15

    goto :goto_3

    :cond_1
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v15, v0

    goto :goto_0

    :cond_2
    add-int v21, v21, v15

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    int-to-float v0, v14

    move/from16 v23, v0

    div-float v23, v16, v23

    const/16 v24, 0x0

    aput v23, v12, v24

    int-to-float v0, v14

    move/from16 v23, v0

    div-float v23, v17, v23

    const/16 v24, 0x1

    aput v23, v12, v24

    int-to-float v0, v14

    move/from16 v23, v0

    div-float v23, v18, v23

    const/16 v24, 0x2

    aput v23, v12, v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v12

    :catch_0
    move-exception v7

    const-string/jumbo v23, "ImageWallpaper"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Exception = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    return-object v23
.end method
