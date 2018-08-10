.class public Landroid/widget/TextView$MagnifierView;
.super Landroid/view/View;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MagnifierView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$MagnifierView$1;,
        Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;
    }
.end annotation


# instance fields
.field private REGION_SIZE_X:I

.field private REGION_SIZE_Y:I

.field private ROUND_RADIUS:I

.field private final UPDATE_MAGNIFIER:I

.field private final VERTICAL_OFFSET:I

.field private final ZOOM_FACTOR:F

.field builder:Landroid/view/SurfaceEffects$Effect$Builder;

.field private defaultOffsetInOneHandedMode:[I

.field private defaultScaleInOneHandedMode:F

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mIsFirstTouchDown:Z

.field private mMagnifierViewHeight:I

.field private mMagnifierViewWidth:I

.field private mMaxPositionX:F

.field private mMaxPositionY:F

.field private mMaxX:F

.field private mMaxY:F

.field private mMinPositionX:F

.field private mMinPositionY:F

.field private mMinX:F

.field private mMinY:F

.field private mOriginView:Landroid/widget/TextView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPositionInWindow:[I

.field private mPositionOnScreen:[I

.field private mPositionX:F

.field private mPositionY:F

.field private mRawX:I

.field private mRawY:I

.field private mStopDraw:Ljava/lang/Runnable;

.field private mTransitionOffset:[F

.field private mTranslatedPoint:Landroid/graphics/PointF;

.field private mTruncated:[F

.field private mUpdateHandler:Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;

.field private mVerticalOffset:I

.field private mView:Landroid/view/View;

.field private mWindowOffsetOnScreenX:I

.field private mWindowOffsetOnScreenY:I


# direct methods
.method static synthetic -get0(Landroid/widget/TextView$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->REGION_SIZE_X:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/TextView$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->REGION_SIZE_Y:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/TextView$MagnifierView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/TextView$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->mVerticalOffset:I

    return v0
.end method

.method static synthetic -get12(Landroid/widget/TextView$MagnifierView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TextView$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->ROUND_RADIUS:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/TextView$MagnifierView;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->defaultOffsetInOneHandedMode:[I

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/TextView$MagnifierView;)F
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->defaultScaleInOneHandedMode:F

    return v0
.end method

.method static synthetic -get5(Landroid/widget/TextView$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewHeight:I

    return v0
.end method

.method static synthetic -get6(Landroid/widget/TextView$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->mRawX:I

    return v0
.end method

.method static synthetic -get7(Landroid/widget/TextView$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$MagnifierView;->mRawY:I

    return v0
.end method

.method static synthetic -get8(Landroid/widget/TextView$MagnifierView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/TextView$MagnifierView;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mTranslatedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x65

    iput v0, p0, Landroid/widget/TextView$MagnifierView;->UPDATE_MAGNIFIER:I

    const v0, 0x3f2b851f    # 0.67f

    iput v0, p0, Landroid/widget/TextView$MagnifierView;->ZOOM_FACTOR:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mTranslatedPoint:Landroid/graphics/PointF;

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mPositionInWindow:[I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/TextView$MagnifierView;->defaultScaleInOneHandedMode:F

    iput-object v2, p0, Landroid/widget/TextView$MagnifierView;->mUpdateHandler:Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$MagnifierView;->mIsFirstTouchDown:Z

    new-instance v0, Landroid/widget/TextView$MagnifierView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$MagnifierView$1;-><init>(Landroid/widget/TextView$MagnifierView;)V

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mStopDraw:Ljava/lang/Runnable;

    iput-object p2, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    iput-object p1, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    iput-object p0, p0, Landroid/widget/TextView$MagnifierView;->mView:Landroid/view/View;

    new-instance v0, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;

    invoke-direct {v0, p0, v2}, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;-><init>(Landroid/widget/TextView$MagnifierView;Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;)V

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mUpdateHandler:Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/TextView$MagnifierView;->VERTICAL_OFFSET:I

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1080b58

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewWidth:I

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10503e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewHeight:I

    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->initEffect()V

    new-array v0, v3, [F

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    new-array v0, v3, [F

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/TextView$MagnifierView;->defaultOffsetInOneHandedMode:[I

    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->tuneOffset()V

    return-void
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget v1, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private initEffect()V
    .locals 4

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/TextView$MagnifierView;->defaultScaleInOneHandedMode:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/TextView$MagnifierView;->REGION_SIZE_X:I

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/TextView$MagnifierView;->defaultScaleInOneHandedMode:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/TextView$MagnifierView;->REGION_SIZE_Y:I

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0133

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/TextView$MagnifierView;->defaultScaleInOneHandedMode:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/TextView$MagnifierView;->ROUND_RADIUS:I

    iget v2, p0, Landroid/widget/TextView$MagnifierView;->VERTICAL_OFFSET:I

    iput v2, p0, Landroid/widget/TextView$MagnifierView;->mVerticalOffset:I

    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/TextView$MagnifierView;->builder:Landroid/view/SurfaceEffects$Effect$Builder;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView;->builder:Landroid/view/SurfaceEffects$Effect$Builder;

    sget-object v3, Landroid/view/SurfaceEffects$AnimationMode;->STATIC:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/view/SurfaceEffects$EffectTarget;->BEHIND:Landroid/view/SurfaceEffects$EffectTarget;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceEffects$Effect$Builder;->setEffectTarget(Landroid/view/SurfaceEffects$EffectTarget;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v2

    sget-object v3, Landroid/view/SurfaceEffects$PixEffectType;->MAGNIFIER:Landroid/view/SurfaceEffects$PixEffectType;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceEffects$Effect$Builder;->setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;

    return-void
.end method

.method private isOneHandedMode()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "any_screen_running"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private tuneOffset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mTranslatedPoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/widget/TextView$MagnifierView;->mTranslatedPoint:Landroid/graphics/PointF;

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getTranslatedPoint()Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TextView$MagnifierView;->mTranslatedPoint:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method private updatePosition()V
    .locals 5

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/TextView$MagnifierView;->mPositionX:F

    float-to-int v1, v1

    iget v2, p0, Landroid/widget/TextView$MagnifierView;->mPositionY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/TextView$MagnifierView;->mPositionX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/widget/TextView$MagnifierView;->mPositionY:F

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public magnifyScreen(FF)V
    .locals 13

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/widget/TextView;->-get15()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v7

    if-eq v6, v7, :cond_1

    return-void

    :cond_1
    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mStopDraw:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    float-to-int v6, p1

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mRawX:I

    float-to-int v6, p2

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mRawY:I

    iget-boolean v6, p0, Landroid/widget/TextView$MagnifierView;->mIsFirstTouchDown:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->isOneHandedMode()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "reduce_screen_running_info"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    const-string/jumbo v6, ";"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->defaultOffsetInOneHandedMode:[I

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->defaultOffsetInOneHandedMode:[I

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    aput v7, v6, v8

    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->defaultScaleInOneHandedMode:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->initEffect()V

    iput-boolean v9, p0, Landroid/widget/TextView$MagnifierView;->mIsFirstTouchDown:Z

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mPositionInWindow:[I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->getLocationInWindow([I)V

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v9

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mPositionInWindow:[I

    aget v7, v7, v9

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenX:I

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v10

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mPositionInWindow:[I

    aget v7, v7, v10

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenY:I

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v9

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenX:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMinPositionX:F

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v10

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenY:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mVerticalOffset:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMinPositionY:F

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v9

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenX:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMaxPositionX:F

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v10

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenY:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mVerticalOffset:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMaxPositionY:F

    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mMaxPositionY:F

    cmpg-float v6, v6, v11

    if-gez v6, :cond_2

    iput v11, p0, Landroid/widget/TextView$MagnifierView;->mMaxPositionY:F

    :cond_2
    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v9

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMinX:F

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v10

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMinY:F

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v9

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMaxX:F

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionOnScreen:[I

    aget v6, v6, v10

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mMaxY:F

    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->tuneOffset()V

    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mRawX:I

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenX:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float v3, v6, v7

    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mRawY:I

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mWindowOffsetOnScreenY:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mVerticalOffset:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMagnifierViewHeight:I

    sub-int/2addr v6, v7

    int-to-float v4, v6

    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mMinPositionX:F

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMaxPositionX:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionX:F

    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mMinPositionY:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v6, v11}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMaxPositionY:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->mPositionY:F

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mPositionX:F

    sub-float v7, v3, v7

    aput v7, v6, v9

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mPositionY:F

    sub-float/2addr v7, v4

    aput v7, v6, v10

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    aget v7, v7, v9

    mul-float/2addr v7, v12

    aput v7, v6, v9

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    aget v7, v7, v10

    mul-float/2addr v7, v12

    aput v7, v6, v10

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    aget v6, v6, v9

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    aput v11, v6, v9

    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mRawX:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMinX:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMinX:F

    iget v8, p0, Landroid/widget/TextView$MagnifierView;->mRawX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v6, v9

    :cond_4
    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mRawX:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMaxX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMaxX:F

    iget v8, p0, Landroid/widget/TextView$MagnifierView;->mRawX:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v6, v9

    :cond_5
    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTruncated:[F

    aget v6, v6, v10

    cmpl-float v6, v6, v11

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    aput v11, v6, v10

    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mRawY:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMinY:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMinY:F

    iget v8, p0, Landroid/widget/TextView$MagnifierView;->mRawY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, v12

    aput v7, v6, v10

    :cond_6
    iget v6, p0, Landroid/widget/TextView$MagnifierView;->mRawY:I

    int-to-float v6, v6

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMaxY:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mTransitionOffset:[F

    iget v7, p0, Landroid/widget/TextView$MagnifierView;->mMaxY:F

    iget v8, p0, Landroid/widget/TextView$MagnifierView;->mRawY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v7, v12

    aput v7, v6, v10

    :cond_7
    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mStopDraw:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->updatePosition()V

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mUpdateHandler:Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;

    const/16 v7, 0x65

    invoke-virtual {v6, v7}, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->sendEmptyMessage(I)Z

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    iget-object v7, p0, Landroid/widget/TextView$MagnifierView;->mStopDraw:Ljava/lang/Runnable;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v6, "TextView"

    const-string/jumbo v7, "MagnifierView, Exception occured during getting the settings value at the one-handed mode."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->defaultOffsetInOneHandedMode:[I

    aput v9, v6, v9

    iget-object v6, p0, Landroid/widget/TextView$MagnifierView;->defaultOffsetInOneHandedMode:[I

    aput v9, v6, v10

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Landroid/widget/TextView$MagnifierView;->defaultScaleInOneHandedMode:F

    goto/16 :goto_0
.end method

.method public stopMagnifier()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mUpdateHandler:Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/widget/TextView$MagnifierView$UpdateMagnifierHandler;->removeMessages(I)V

    invoke-direct {p0}, Landroid/widget/TextView$MagnifierView;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView$MagnifierView;->mIsFirstTouchDown:Z

    iget-object v0, p0, Landroid/widget/TextView$MagnifierView;->mOriginView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$MagnifierView;->mStopDraw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
