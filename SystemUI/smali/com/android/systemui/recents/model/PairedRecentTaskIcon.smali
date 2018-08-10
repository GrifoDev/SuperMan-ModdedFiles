.class public Lcom/android/systemui/recents/model/PairedRecentTaskIcon;
.super Ljava/lang/Object;
.source "PairedRecentTaskIcon.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/model/PairedRecentTaskIcon;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPairedRecentTasksIcon(Lcom/android/systemui/recents/model/Task$TaskKey;)Landroid/graphics/drawable/Drawable;
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/model/PairedRecentTaskIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->docked_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->full_taskkey:Lcom/android/systemui/recents/model/Task$TaskKey;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getAndUpdateActivityIcon(Lcom/android/systemui/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Landroid/content/res/Resources;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v13, :cond_0

    if-nez v19, :cond_1

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    const v2, 0x7f070470

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    const v2, 0x7f07046f

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    invoke-static {v0, v14, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, 0x7f080059

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v21

    invoke-direct {v2, v3, v4, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move/from16 v0, v21

    int-to-float v2, v0

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v17, v0

    int-to-float v2, v14

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    float-to-int v10, v2

    move/from16 v0, v21

    int-to-float v2, v0

    const v3, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v2, v3

    float-to-int v15, v2

    int-to-float v2, v14

    const v3, 0x3ecccccc    # 0.39999998f

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v20, v0

    move/from16 v0, v21

    int-to-float v2, v0

    const v3, 0x3e3851ee    # 0.18000004f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v12

    sub-int v2, v17, v16

    sub-int v3, v10, v16

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v18

    add-int v2, v15, v16

    add-int v3, v20, v16

    sub-int v4, v21, v16

    sub-int v6, v14, v16

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v13, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v13, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/model/PairedRecentTaskIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method
