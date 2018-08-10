.class public Lcom/android/server/wm/SamsungWindowState;
.super Ljava/lang/Object;
.source "SamsungWindowState.java"

# interfaces
.implements Lcom/samsung/android/view/IWindowStateBridge;


# static fields
.field static final TAG:Ljava/lang/String; = "SamsungWindowState"


# instance fields
.field mHideBySViewCover:Z

.field mLastBlurRadius:I

.field mLastSat:I

.field mNavbarIsAlwaysEnabled:Z

.field mNonImmersive:Z

.field mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

.field mReducedScreenSpec:Landroid/view/MagnificationSpec;

.field mReducedSideTouchArea:I

.field mTspDeadzone:Landroid/os/Bundle;

.field private mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    return-void
.end method

.method private dumpHeader(Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "--- Samsung WindowState ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private getLegacyBlurRadius()I
    .locals 4

    const/high16 v1, 0x43b00000    # 352.0f

    const v0, 0x3ecccccd    # 0.4f

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    const/high16 v3, 0x43b00000    # 352.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method private getLegacySaturation()I
    .locals 4

    const/high16 v1, -0x3e600000    # -20.0f

    const v0, 0x3ecccccd    # 0.4f

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    const/high16 v3, -0x3e600000    # -20.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method

.method static synthetic lambda$-com_android_server_wm_SamsungWindowState_4694(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public applyBlurEffect()V
    .locals 14

    const/4 v13, -0x2

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/SamsungWindowState;->getLegacyBlurRadius()I

    move-result v0

    :goto_1
    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/SamsungWindowState;->getLegacySaturation()I

    move-result v6

    :goto_2
    iget v7, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    if-ne v7, v0, :cond_3

    iget v7, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    if-ne v7, v6, :cond_3

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v7, :cond_4

    return-void

    :cond_4
    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v7, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, v7, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    :goto_3
    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    invoke-virtual {v7, v8}, Landroid/view/SurfaceEffects$Effect$Builder;->setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v7, v13, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v13, :cond_6

    :cond_5
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->makeFullscreen()Landroid/view/SurfaceEffects$Effect$Builder;

    :cond_6
    if-lez v0, :cond_8

    sget-object v7, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v7}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v9, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v12, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    int-to-float v10, v0

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v9, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v12, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    int-to-float v10, v6

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    :goto_4
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceEffects$Effect;->getBytes()[I

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowSurfaceController;->startSurfaceAnimation([I)V

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    iput v6, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    return-void

    :cond_7
    const-wide/16 v2, 0xc8

    goto :goto_3

    :cond_8
    sget-object v7, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v7}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v9, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v12, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    int-to-float v10, v0

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v9, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    int-to-float v9, v9

    sget-object v10, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v12, v9, v10}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    const/4 v10, 0x0

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    goto :goto_4
.end method

.method public applyNavbarAlwaysEnabled(I)I
    .locals 0

    return p1
.end method

.method public configureReducedScreenSpec()V
    .locals 0

    return-void
.end method

.method public createSurfaceLocked()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/high16 v0, -0x80000000

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowState;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public disableHideSViewCoverOnce(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/SamsungWindowState;->dumpHeader(Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mHideBySvc="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    return-void
.end method

.method public getCoverMode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x833

    if-ne v1, v2, :cond_1

    const/16 v1, 0xa

    return v1

    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public getCustomAspectRatioFrame(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->hasBounds()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->getBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDefaultTspDeadzone()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getEdgeTspDeadzone()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getDexCompatUiMode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getMainWindowFlags()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public getMainWindowSystemUiVisibility()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v1

    goto :goto_0
.end method

.method public getReducedScreenScaleSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getReducedSideTouchArea()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedSideTouchArea:I

    return v0
.end method

.method public getTspDeadzone()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mTspDeadzone:Landroid/os/Bundle;

    return-object v0
.end method

.method public hasAppTokenBounds()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->hasBounds()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initPackageConfigurations()V
    .locals 0

    return-void
.end method

.method public isChildWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    return v0
.end method

.method public isCustomAspectRatioWindow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceDefaultTheme()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->isDeviceDefaultTheme()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isDexCompatMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFixedOrientation()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isSnapTargetFullscreen()Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_3

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_4

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_1

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v3, v3, 0xc

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public isHideBySViewCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    return v0
.end method

.method public isHomeTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOnScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    return v0
.end method

.method public isShowWhenLockedAppWindow()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->getShowWhenLocked()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSurfaceShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    return v0
.end method

.method public needDelayedExitAnimation()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    new-instance v1, Lcom/android/server/wm/-$Lambda$YdmZMgugVDuVRWlR2_0yb82MJvU;

    invoke-direct {v1}, Lcom/android/server/wm/-$Lambda$YdmZMgugVDuVRWlR2_0yb82MJvU;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/AppWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needForceImmersiveMode()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->inFreeformWorkspace()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersive:Z

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->hasBounds()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->needForceImmersiveMode()Z

    move-result v1

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_5
    return v3

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    return v3

    :cond_6
    :sswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x833 -> :sswitch_1
        0x964 -> :sswitch_1
        0x96c -> :sswitch_1
        0x96e -> :sswitch_1
        0x96f -> :sswitch_1
        0x97e -> :sswitch_1
        0x97f -> :sswitch_1
    .end sparse-switch
.end method

.method public needReverseFrame(Landroid/graphics/Rect;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public needToShowChangeRatioButton()Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SamsungWindowState;->getCustomAspectRatioFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-nez v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method public resetEffects()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    return-void
.end method

.method public reverseFrame(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public reverseFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p3}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p4}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p5}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p6}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p7}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p8}, Lcom/android/server/wm/SamsungWindowState;->reverseFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setHideBySViewCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    return-void
.end method

.method public setNonImmersiveWindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersive:Z

    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SamsungWindowState already has a WindowState."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "owner is not a WindowState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public setTspDeadzone(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowState;->mTspDeadzone:Landroid/os/Bundle;

    return-void
.end method

.method public willBeHideSViewCoverOnce()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->willBeHideSViewCoverOnce:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
