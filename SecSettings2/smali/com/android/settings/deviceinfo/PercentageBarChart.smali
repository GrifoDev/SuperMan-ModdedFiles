.class public Lcom/android/settings/deviceinfo/PercentageBarChart;
.super Landroid/view/View;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;
    }
.end annotation


# instance fields
.field private final mEmptyPaint:Landroid/graphics/Paint;

.field private mEntries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mMinTickWidth:I


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingRight()I

    move-result v3

    sub-int v17, v1, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->getPaddingBottom()I

    move-result v3

    sub-int v11, v1, v3

    sub-int v19, v17, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/PercentageBarChart;->isLayoutRtl()Z

    move-result v15

    if-eqz v15, :cond_3

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    iget v1, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    const/4 v14, 0x0

    :goto_1
    sub-float v2, v4, v14

    move/from16 v0, v16

    int-to-float v1, v0

    cmpg-float v1, v2, v1

    if-gez v1, :cond_1

    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v1, v1

    move/from16 v0, v19

    int-to-float v3, v0

    iget v5, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_1

    :cond_1
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v4, v2

    goto :goto_0

    :cond_2
    move/from16 v0, v16

    int-to-float v6, v0

    move/from16 v0, v18

    int-to-float v7, v0

    int-to-float v9, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_2
    return-void

    :cond_3
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEntries:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    iget v1, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    const/4 v14, 0x0

    :goto_4
    add-float v4, v2, v14

    move/from16 v0, v17

    int-to-float v1, v0

    cmpl-float v1, v4, v1

    if-lez v1, :cond_5

    move/from16 v0, v18

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    int-to-float v9, v11

    iget-object v10, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mMinTickWidth:I

    int-to-float v1, v1

    move/from16 v0, v19

    int-to-float v3, v0

    iget v5, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->percentage:F

    mul-float/2addr v3, v5

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v14

    goto :goto_4

    :cond_5
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v5, v11

    iget-object v6, v12, Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v2, v4

    goto :goto_3

    :cond_6
    move/from16 v0, v18

    int-to-float v7, v0

    move/from16 v0, v17

    int-to-float v8, v0

    int-to-float v9, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    move v6, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PercentageBarChart;->mEmptyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
