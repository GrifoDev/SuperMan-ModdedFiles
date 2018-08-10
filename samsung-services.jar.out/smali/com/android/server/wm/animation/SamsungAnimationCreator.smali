.class public Lcom/android/server/wm/animation/SamsungAnimationCreator;
.super Ljava/lang/Object;
.source "SamsungAnimationCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;
    }
.end annotation


# static fields
.field private static final ANIMATION_FROM_LAUNCHER:I = 0x10

.field private static final ANIMATION_FROM_LAUNCHER_APPS:I = 0x2

.field private static final ANIMATION_FROM_LAUNCHER_HOME:I = 0x1

.field private static final ANIMATION_FROM_RECENTS:I = 0x20

.field private static final CREATOR_CLASS_PREFIX:Ljava/lang/String; = "com.android.server.wm.animation."

.field private static final CREATOR_CLASS_SUFFIX:Ljava/lang/String; = "AnimationParams"

.field private static final TAG:Ljava/lang/String; = "SamsungAnimationCreator"


# instance fields
.field private mAnimationFrom:I

.field private mAnimationFromLauncher:I

.field private mAppWinHeight:I

.field private mAppWinWidth:I

.field private mIsWallpaperEnterAnimationAllowed:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinWidth:I

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinHeight:I

    iput-boolean v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mIsWallpaperEnterAnimationAllowed:Z

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationFrom:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationFromLauncher:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    invoke-direct {p0, p1}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->loadAnimationParams(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/android/server/wm/animation/SamsungAnimationCreator;
    .locals 2

    const-string/jumbo v0, "None"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SamsungAnimationCreator"

    const-string/jumbo v1, "Animation not supported."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p5, p6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, p7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private createAppCloseAppExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25

    const-string/jumbo v7, "SamsungAnimationCreator"

    const-string/jumbo v8, "createAppCloseAppExitAnimation"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v7

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_TO:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinWidth:I

    int-to-float v7, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float v13, v7, v12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinHeight:I

    int-to-float v7, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float v15, v7, v12

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_DURATION:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v20, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v20}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFIFIFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v23

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_START_OFFSET:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v12, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_DURATION:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v14, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v21

    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_TO:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->getAppExitScaleDownPivotX()F

    move-result v13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->getAppExitScaleDownPivotY()F

    move-result v15

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_DURATION:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v20, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v20}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFIFIFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v23

    goto/16 :goto_0
.end method

.method private createAppCloseWallpaperEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 15

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-boolean v1, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_ENABLED:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string/jumbo v1, "SamsungAnimationCreator"

    const-string/jumbo v2, "createAppCloseWallpaperEnterAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mIsWallpaperEnterAnimationAllowed:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "SamsungAnimationCreator"

    const-string/jumbo v2, "skip, wallpaperEnterAnimation is not allowed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mIsWallpaperEnterAnimationAllowed:Z

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationFrom:I

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v2, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_X_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v3, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_X_TO:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v4, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_Y_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v5, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_Y_TO:F

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinWidth:I

    int-to-float v1, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v1, v8

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinHeight:I

    int-to-float v1, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v9, v1, v8

    const-wide/16 v10, 0x0

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v12, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_DURATION:J

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v14, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v14}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFIFIFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator$1;-><init>(Lcom/android/server/wm/animation/SamsungAnimationCreator;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0

    :cond_3
    mul-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v2, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_X_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v3, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_X_TO:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v4, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_Y_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v5, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_Y_TO:F

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v10, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_DURATION:J

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v12, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_WALLPAPER_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    goto :goto_0
.end method

.method private createAppOpenAppEnterAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;
    .locals 33

    const-string/jumbo v7, "SamsungAnimationCreator"

    const-string/jumbo v8, "createAppOpenAppEnterAnimation"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v23

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v12, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v13, v7

    const/16 v31, 0x0

    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_SPLIT_APP_ENTER_SCALE_Y_TO:F

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_DURATION:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v18, v0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v18}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v31

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_ALPHA_FROM:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_ALPHA_TO:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_ALPHA_START_OFFSET:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_ALPHA_DURATION:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v22}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    new-instance v32, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v32

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    if-nez p4, :cond_3

    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v7, :cond_3

    const/16 v30, 0x1

    :goto_1
    if-eqz v30, :cond_1

    new-instance v26, Landroid/graphics/Rect;

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v27, Landroid/graphics/Rect;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, v26

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    move-object/from16 v0, v26

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_0

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    const/4 v8, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p2

    iget v7, v0, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v8, v7

    move/from16 v0, v23

    int-to-double v10, v0

    const-wide v14, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v10, v14

    cmpg-double v7, v8, v10

    if-gez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_CLIP_DURATION_UPPER:J

    move-wide/from16 v28, v0

    :goto_2
    new-instance v25, Landroid/view/animation/ClipRectAnimation;

    invoke-direct/range {v25 .. v27}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v7, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_CLIP_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, v25

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v32

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v32

    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_Y_TO:F

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_DURATION:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v18, v0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v18}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v31

    goto/16 :goto_0

    :cond_3
    const/16 v30, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    int-to-double v8, v7

    move/from16 v0, v23

    int-to-double v10, v0

    const-wide v14, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v10, v14

    cmpg-double v7, v8, v10

    if-gez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_CLIP_DURATION_MIDDLE:J

    move-wide/from16 v28, v0

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_CLIP_DURATION_LOWER:J

    move-wide/from16 v28, v0

    goto/16 :goto_2
.end method

.method private createAppOpenHomeExitAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;
    .locals 27

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-boolean v7, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ENABLED:Z

    if-nez v7, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    const-string/jumbo v7, "SamsungAnimationCreator"

    const-string/jumbo v8, "createAppOpenHomeExitAnimation"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    if-eqz p5, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_FROM:F

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v12, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_DURATION:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v14, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v23

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v26

    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v12, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v13, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_SCALE_Y_TO:F

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_SCALE_DURATION:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v18, v0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v18}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_FROM:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_TO:F

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_DURATION:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v22}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private createAppOpenWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;
    .locals 13

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-boolean v1, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_ENABLED:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string/jumbo v1, "SamsungAnimationCreator"

    const-string/jumbo v2, "createAppOpenWallpaperExitAnimation"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationFromLauncher:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "SamsungAnimationCreator"

    const-string/jumbo v2, "skip AppOpenWallpaperExit animation."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v2, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v3, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_FROM:F

    const-wide/16 v4, 0x0

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v6, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_DURATION:J

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v8, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_HOME_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mIsWallpaperEnterAnimationAllowed:Z

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v2, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_X_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v3, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_X_TO:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v4, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_Y_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v5, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_Y_TO:F

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinWidth:I

    int-to-float v1, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v6, v1, v8

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinHeight:I

    int-to-float v1, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v7, v1, v8

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v10, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_DURATION:J

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v12, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    goto :goto_0

    :cond_3
    mul-int/lit8 v1, p1, -0x1

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v7, v1

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v2, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_X_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v3, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_X_TO:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v4, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_Y_FROM:F

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v5, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_Y_TO:F

    const-wide/16 v8, 0x0

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v10, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_DURATION:J

    iget-object v1, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v12, v1, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_WALLPAPER_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    goto :goto_0
.end method

.method private createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;
    .locals 9

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-wide/from16 v0, p7

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v2
.end method

.method private createScaleAnimation(FFFFIFIFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;
    .locals 11

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-wide/from16 v0, p9

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v2
.end method

.method private createTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25

    const-string/jumbo v7, "SamsungAnimationCreator"

    const-string/jumbo v8, "createTaskCloseAnimation"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_ENTER_ALPHA_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_ENTER_ALPHA_TO:F

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v12, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_SCALE_DURATION:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v14, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v21

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_SCALE_Y_TO:F

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_SCALE_DURATION:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v20, v0

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v20}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFIFIFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_ALPHA_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_ALPHA_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_ALPHA_START_OFFSET:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v12, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_ALPHA_DURATION:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v14, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_CLOSE_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private createTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 25

    const-string/jumbo v7, "SamsungAnimationCreator"

    const-string/jumbo v8, "createTaskOpenAnimation"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_SCALE_Y_TO:F

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_SCALE_DURATION:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v20, v0

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v20}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFIFIFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_ALPHA_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_ALPHA_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_ALPHA_START_OFFSET:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v12, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_ALPHA_DURATION:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v14, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v21

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v24

    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_EXIT_ALPHA_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_EXIT_ALPHA_TO:F

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v12, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_ENTER_SCALE_DURATION:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v14, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->TASK_OPEN_EXIT_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private getAppExitScaleDownPivotX()F
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-boolean v3, v3, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->USE_ACCURATE_SCALE_DOWN:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v4, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v0, v3

    iget v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v4, v4, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_TO:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v1, v0, v3

    move v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v3, v3, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_X_TO:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    :goto_0
    const-string/jumbo v3, "SamsungAnimationCreator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAppExitScaleDownPivotX : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v4, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    goto :goto_0
.end method

.method private getAppExitScaleDownPivotY()F
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-boolean v3, v3, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->USE_ACCURATE_SCALE_DOWN:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v4, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v0, v3

    iget v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v4, v4, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_TO:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float v1, v0, v3

    move v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v3, v3, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_APP_EXIT_SCALE_Y_TO:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-gtz v3, :cond_0

    :goto_0
    const-string/jumbo v3, "SamsungAnimationCreator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getAppExitScaleDownPivotY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget v3, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    iget v4, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v1, v3

    goto :goto_0
.end method

.method private isValidAppTransitionStartValues()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private loadAnimationParams(Ljava/lang/String;)V
    .locals 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v1, "LowEnd"

    :goto_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "com.android.server.wm.animation."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "AnimationParams"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v7, "SamsungAnimationCreator"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loadAnimationParams : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    return-void

    :cond_0
    move-object v1, p1

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v7, "SamsungAnimationCreator"

    const-string/jumbo v8, "Failed to load AnimationParam. create the LowEnd animation."

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Lcom/android/server/wm/animation/LowEndAnimationParams;

    invoke-direct {v4}, Lcom/android/server/wm/animation/LowEndAnimationParams;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public createAppCloseHomeEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 27

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-boolean v7, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_ENABLED:Z

    if-nez v7, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    const-string/jumbo v7, "SamsungAnimationCreator"

    const-string/jumbo v8, "createAppCloseHomeEnterAnimation"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->isValidAppTransitionStartValues()Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_Y_TO:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinWidth:I

    int-to-float v7, v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float v13, v7, v14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinHeight:I

    int-to-float v7, v7

    const/high16 v14, 0x40000000    # 2.0f

    div-float v15, v7, v14

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_DURATION:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v20, v0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v20}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFIFIFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v25

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_FROM:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_TO:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_START_OFFSET:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_DURATION:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v22, v0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v22}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAlphaAnimation(FFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v23

    new-instance v26, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    move-object/from16 v0, v26

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    move-object/from16 v0, v26

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    return-object v26

    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v12, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v13, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v8, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_X_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v9, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_X_TO:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v10, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_Y_FROM:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget v11, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_Y_TO:F

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_DURATION:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-object v0, v7, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_CLOSE_HOME_ENTER_SCALE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    move-object/from16 v18, v0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v18}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createScaleAnimation(FFFFFFJJLandroid/view/animation/PathInterpolator;)Landroid/view/animation/ScaleAnimation;

    move-result-object v25

    goto/16 :goto_0
.end method

.method public createSamsungAnimation(Landroid/graphics/Rect;IZZLandroid/graphics/Rect;Landroid/graphics/Rect;IZZ)Landroid/view/animation/Animation;
    .locals 6

    const/4 v3, 0x0

    const-string/jumbo v0, "SamsungAnimationCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createAnimation type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    invoke-virtual {v2}, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " transit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wallpaperXoffset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " split:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " fixedOri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SamsungAnimationCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createAnimation displayFrame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " frame:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " insets:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAppWinHeight:I

    :cond_0
    sparse-switch p2, :sswitch_data_0

    return-object v3

    :sswitch_0
    if-eqz p4, :cond_1

    move-object v0, p0

    move v1, p3

    move-object v2, p5

    move-object v3, p6

    move v4, p8

    move v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAppOpenAppEnterAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p0

    move v1, p3

    move-object v2, p5

    move-object v3, p6

    move v4, p8

    move v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAppOpenHomeExitAnimation(ZLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_1
    if-eqz p4, :cond_2

    invoke-virtual {p0, p5}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAppCloseHomeEnterAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0, p5}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAppCloseAppExitAnimation(Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_2
    invoke-direct {p0, p7}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAppCloseWallpaperEnterAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_3
    invoke-direct {p0, p7, p9}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createAppOpenWallpaperExitAnimation(IZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_4
    invoke-direct {p0, p4, p5}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createTaskCloseAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_5
    invoke-direct {p0, p4, p5}, Lcom/android/server/wm/animation/SamsungAnimationCreator;->createTaskOpenAnimation(ZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "  SamsungAnimationCreator Information"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    BasicAnimationType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    invoke-virtual {v0}, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " duration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mParams:Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;

    iget-wide v0, v0, Lcom/android/server/wm/animation/SamsungAnimationCreator$AnimationParams;->APP_OPEN_APP_ENTER_SCALE_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public setAnimationFrom(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "recents"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    :goto_0
    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationFrom:I

    const-string/jumbo v1, "SamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnimationFrom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public setAnimationFromLauncher(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "apps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mAnimationFromLauncher:I

    const-string/jumbo v1, "SamsungAnimationCreator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAnimationFromLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public skipWallpaperAnimation(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mIsWallpaperEnterAnimationAllowed:Z

    :cond_0
    return-void
.end method

.method public updateAppTransitionStartValues(Landroid/graphics/Rect;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "SamsungAnimationCreator"

    const-string/jumbo v1, "updateAppTransitionStartValues reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    iput v2, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    return-void

    :cond_0
    const-string/jumbo v0, "SamsungAnimationCreator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppTransitionStartValues frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartX:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartY:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartWidth:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/animation/SamsungAnimationCreator;->mNextAppTransitionStartHeight:I

    return-void
.end method
