.class Lcom/android/server/power/ShutdownThread$ExtractColor;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
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

    sput v0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mLimittedColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F
    .locals 25

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v10, v0, [F

    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v11, v0, [F

    const/4 v13, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move/from16 v0, v19

    if-le v0, v8, :cond_1

    int-to-float v0, v8

    move/from16 v22, v0

    const/high16 v23, 0x42c80000    # 100.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    :goto_0
    if-gtz v14, :cond_0

    const/4 v14, 0x1

    :cond_0
    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v9

    :goto_1
    move/from16 v0, v20

    if-ge v0, v12, :cond_3

    move/from16 v21, v18

    :goto_2
    move/from16 v0, v21

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v22

    move/from16 v0, v22

    invoke-static {v0, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v22, 0x0

    aget v22, v10, v22

    add-float v15, v15, v22

    const/16 v22, 0x1

    aget v22, v10, v22

    add-float v16, v16, v22

    const/16 v22, 0x2

    aget v22, v10, v22

    add-float v17, v17, v22

    add-int/lit8 v13, v13, 0x1

    add-int v21, v21, v14

    goto :goto_2

    :cond_1
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x42c80000    # 100.0f

    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v14, v0

    goto :goto_0

    :cond_2
    add-int v20, v20, v14

    goto :goto_1

    :cond_3
    int-to-float v0, v13

    move/from16 v22, v0

    div-float v22, v15, v22

    const/16 v23, 0x0

    aput v22, v11, v23

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v22, v16, v22

    const/16 v23, 0x1

    aput v22, v11, v23

    int-to-float v0, v13

    move/from16 v22, v0

    div-float v22, v17, v22

    const/16 v23, 0x2

    aput v22, v11, v23
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    :catch_0
    move-exception v7

    const-string/jumbo v22, "ShutdownThread"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    return-object v22
.end method

.method public static getDefaultColor()I
    .locals 1

    sget v0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    return v0
.end method

.method public static setDefaultColor(I)V
    .locals 1

    sget v0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    if-eq p0, v0, :cond_0

    sput p0, Lcom/android/server/power/ShutdownThread$ExtractColor;->mDefaultColor:I

    :cond_0
    return-void
.end method
