.class Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperOffsetInterpolator"
.end annotation


# instance fields
.field mFinalHorizontalWallpaperOffset:F

.field mFinalVerticalWallpaperOffset:F

.field mHorizontalCatchupConstant:F

.field mHorizontalWallpaperOffset:F

.field mIsMovingFast:Z

.field mLastWallpaperOffsetUpdateTime:J

.field mOverrideHorizontalCatchupConstant:Z

.field mVerticalCatchupConstant:F

.field mVerticalWallpaperOffset:F

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;)V
    .locals 4

    const v3, 0x3eb33333    # 0.35f

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput v2, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    iput v3, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    iput v3, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenLarge()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    # getter for: Lcom/android/launcher2/Workspace;->mDisplayWidth:I
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v19, v0

    # getter for: Lcom/android/launcher2/Workspace;->mDisplayHeight:I
    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/4 v10, 0x1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    move-wide/from16 v18, v0

    sub-long v14, v6, v18

    const-wide/16 v18, 0x21

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    const-wide/16 v18, 0x1

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fb1eb851eb851ecL    # 0.07

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mOverrideHorizontalCatchupConstant:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalCatchupConstant:F

    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalCatchupConstant:F

    const/high16 v18, 0x42040000    # 33.0f

    div-float v5, v5, v18

    const/high16 v18, 0x42040000    # 33.0f

    div-float v8, v8, v18

    const v4, 0x3727c5ac    # 1.0E-5f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v19, v0

    sub-float v9, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v19, v0

    sub-float v16, v18, v19

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3727c5ac    # 1.0E-5f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3727c5ac    # 1.0E-5f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mLastWallpaperOffsetUpdateTime:J

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/Workspace;->mSnapState:I

    move/from16 v18, v0

    if-eqz v18, :cond_4

    const v5, 0x3e99999a    # 0.3f

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mIsMovingFast:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    if-eqz v10, :cond_5

    const/high16 v5, 0x3f000000    # 0.5f

    :goto_5
    goto/16 :goto_2

    :cond_5
    const/high16 v5, 0x3f400000    # 0.75f

    goto :goto_5

    :cond_6
    if-eqz v10, :cond_7

    const v5, 0x3e8a3d71    # 0.27f

    :goto_6
    goto/16 :goto_2

    :cond_7
    const/high16 v5, 0x3f000000    # 0.5f

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    goto :goto_3

    :cond_9
    const/high16 v18, 0x3f800000    # 1.0f

    long-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v13

    const/high16 v18, 0x3f800000    # 1.0f

    long-to-float v0, v14

    move/from16 v19, v0

    mul-float v19, v19, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move/from16 v18, v0

    mul-float v19, v12, v9

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    move/from16 v18, v0

    mul-float v19, v13, v16

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    goto :goto_4
.end method

.method public getCurrX()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    return v0
.end method

.method public getCurrY()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    return v0
.end method

.method public jumpToFinal()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mHorizontalWallpaperOffset:F

    iget v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mVerticalWallpaperOffset:F

    return-void
.end method

.method public setFinalX(FLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalHorizontalWallpaperOffset:F

    return-void
.end method

.method public setFinalY(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->mFinalVerticalWallpaperOffset:F

    return-void
.end method
