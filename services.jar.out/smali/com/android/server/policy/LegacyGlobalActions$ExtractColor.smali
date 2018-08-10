.class Lcom/android/server/policy/LegacyGlobalActions$ExtractColor;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtractColor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColorHSV(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)[F
    .locals 21

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v7, v0, [F

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v8, v0, [F

    const/4 v10, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, v16

    if-le v0, v5, :cond_1

    int-to-float v0, v5

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v11, v0

    :goto_0
    if-gtz v11, :cond_0

    const/4 v11, 0x1

    :cond_0
    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    iget v15, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v6

    :goto_1
    move/from16 v0, v17

    if-ge v0, v9, :cond_3

    move/from16 v18, v15

    :goto_2
    move/from16 v0, v18

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v19, 0x0

    aget v19, v7, v19

    add-float v12, v12, v19

    const/16 v19, 0x1

    aget v19, v7, v19

    add-float v13, v13, v19

    const/16 v19, 0x2

    aget v19, v7, v19

    add-float v14, v14, v19

    add-int/lit8 v10, v10, 0x1

    add-int v18, v18, v11

    goto :goto_2

    :cond_1
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v11, v0

    goto :goto_0

    :cond_2
    add-int v17, v17, v11

    goto :goto_1

    :cond_3
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v19, v12, v19

    const/16 v20, 0x0

    aput v19, v8, v20

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v19, v13, v19

    const/16 v20, 0x1

    aput v19, v8, v20

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v19, v14, v19

    const/16 v20, 0x2

    aput v19, v8, v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    move-exception v4

    const-string/jumbo v19, "LegacyGlobalActions"

    const-string/jumbo v20, "Exception = "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    return-object v19
.end method
