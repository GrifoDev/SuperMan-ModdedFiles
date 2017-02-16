.class Landroid/widget/Editor$MagnifierView;
.super Landroid/view/View;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnifierView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;
    }
.end annotation


# static fields
.field private static final UPDATE_MAGNIFIER:I = 0x65

.field private static final ZOOM_FACTOR:F = 0.5f


# instance fields
.field private REGION_SIZE_X:I

.field private REGION_SIZE_Y:I

.field private ROUND_RADIUS:I

.field builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

.field protected mAction:I

.field mBackground:Landroid/graphics/drawable/Drawable;

.field mBorderBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDrawing:Z

.field private mEffectSizeX:I

.field private mEffectSizeY:I

.field private mExtraVerticalOffset:F

.field private mMagnifierViewHeight:I

.field private mMagnifierViewWidth:I

.field private mPaddingInBackground:Landroid/graphics/Rect;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPositionX:F

.field private mPositionY:F

.field private mRawX:F

.field private mRawY:F

.field mRectDst:Landroid/graphics/RectF;

.field mRectSrc:Landroid/graphics/Rect;

.field private mTransitionOffset:[F

.field private mTruncated:[F

.field private mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

.field private mVerticalOffset:I

.field private mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method static synthetic -get0(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_X:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_Y:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->ROUND_RADIUS:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/Editor$MagnifierView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/Editor$MagnifierView;)I
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    return v0
.end method

.method static synthetic -get5(Landroid/widget/Editor$MagnifierView;)F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    return v0
.end method

.method static synthetic -get6(Landroid/widget/Editor$MagnifierView;)F
    .locals 1

    iget v0, p0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    return v0
.end method

.method static synthetic -get7(Landroid/widget/Editor$MagnifierView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/Editor$MagnifierView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/Editor$MagnifierView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/Editor$MagnifierView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    return p1
.end method

.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 8
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 7415
    iput-object p1, p0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    .line 7416
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7397
    iput v5, p0, Landroid/widget/Editor$MagnifierView;->mExtraVerticalOffset:F

    .line 7398
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mPaddingInBackground:Landroid/graphics/Rect;

    .line 7406
    iput v6, p0, Landroid/widget/Editor$MagnifierView;->mAction:I

    .line 7411
    iput-object v3, p0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    .line 7412
    iput-boolean v6, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    .line 7417
    iput-object p2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    .line 7418
    iput-object p0, p0, Landroid/widget/Editor$MagnifierView;->mView:Landroid/view/View;

    .line 7419
    new-instance v2, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    invoke-direct {v2, p0, v3}, Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;-><init>(Landroid/widget/Editor$MagnifierView;Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;)V

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    .line 7421
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1080acc

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 7422
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7423
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPaddingInBackground:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 7425
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7426
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 7428
    .local v1, "scale":F
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_X:I

    .line 7429
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_Y:I

    .line 7430
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->ROUND_RADIUS:I

    .line 7432
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105029c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    .line 7433
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105029d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    .line 7434
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105029b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    .line 7436
    invoke-direct {p0}, Landroid/widget/Editor$MagnifierView;->getBorderBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    .line 7437
    invoke-direct {p0}, Landroid/widget/Editor$MagnifierView;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 7438
    invoke-direct {p0}, Landroid/widget/Editor$MagnifierView;->initEffect()V

    .line 7439
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mRectSrc:Landroid/graphics/Rect;

    .line 7440
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    .line 7441
    new-array v2, v7, [F

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    .line 7442
    new-array v2, v7, [F

    iput-object v2, p0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    .line 7415
    return-void
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7446
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 7447
    .local v2, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 7448
    const/16 v4, 0x3ed

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 7449
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 7450
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7452
    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7453
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7454
    .local v3, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7456
    .local v1, "height":I
    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7457
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7458
    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7459
    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7461
    return-object v2
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 7586
    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7585
    return-void
.end method

.method private getBorderBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7465
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 7466
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v2, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    iget v3, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7467
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7468
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    iget v4, p0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7469
    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7470
    return-object v0
.end method

.method private initEffect()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 7474
    new-instance v0, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    invoke-direct {v0}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    .line 7476
    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimationMode;->kAnimStatic:Landroid/widget/Editor$SFEffectsAPI$AnimationMode;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->setAnimationMode(Landroid/widget/Editor$SFEffectsAPI$AnimationMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    .line 7477
    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$EffectTarget;->BEHIND:Landroid/widget/Editor$SFEffectsAPI$EffectTarget;

    .line 7476
    invoke-virtual {v0, v1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->setEffectTarget(Landroid/widget/Editor$SFEffectsAPI$EffectTarget;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    .line 7478
    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$PixEffectType;->MAGNIFIER:Landroid/widget/Editor$SFEffectsAPI$PixEffectType;

    .line 7476
    invoke-virtual {v0, v1}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->setPixelEffectType(Landroid/widget/Editor$SFEffectsAPI$PixEffectType;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    .line 7480
    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->builder:Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v2, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_X:I

    int-to-float v2, v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    .line 7481
    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v2, p0, Landroid/widget/Editor$MagnifierView;->REGION_SIZE_Y:I

    int-to-float v2, v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    .line 7480
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    .line 7482
    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionFactorX:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    sget-object v2, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    .line 7480
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    .line 7483
    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionFactorY:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    sget-object v2, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    .line 7480
    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    move-result-object v0

    .line 7484
    sget-object v1, Landroid/widget/Editor$SFEffectsAPI$AnimParam;->kAnimRegionSizeT:Landroid/widget/Editor$SFEffectsAPI$AnimParam;

    iget v2, p0, Landroid/widget/Editor$MagnifierView;->ROUND_RADIUS:I

    int-to-float v2, v2

    sget-object v3, Landroid/widget/Editor$SFEffectsAPI$InterpMode;->kInterpHold:Landroid/widget/Editor$SFEffectsAPI$InterpMode;

    .line 7480
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;->addPixAnimation(Landroid/widget/Editor$SFEffectsAPI$AnimParam;IFLandroid/widget/Editor$SFEffectsAPI$InterpMode;)Landroid/widget/Editor$SFEffectsAPI$Effect$Builder;

    .line 7473
    return-void
.end method

.method private updatePosition()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7572
    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7573
    return-void

    .line 7575
    :cond_0
    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7576
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7577
    .local v2, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7579
    .local v1, "height":I
    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7580
    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7581
    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v4, p0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7571
    return-void
.end method


# virtual methods
.method public getMagnifierScreen()V
    .locals 1

    .prologue
    .line 7590
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    .line 7591
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7589
    return-void
.end method

.method public handleTouchEvent(IFF)V
    .locals 22
    .param p1, "action"    # I
    .param p2, "rawX"    # F
    .param p3, "rawY"    # F

    .prologue
    .line 7492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->-get3(Landroid/widget/Editor;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 7493
    return-void

    .line 7496
    :cond_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mAction:I

    .line 7498
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mRawX:F

    .line 7499
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mRawY:F

    .line 7501
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mAction:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    .line 7491
    :goto_0
    return-void

    .line 7504
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 7505
    return-void

    .line 7508
    :cond_1
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v13, v0, [I

    .line 7509
    .local v13, "positionOnScreen":[I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v12, v0, [I

    .line 7510
    .local v12, "positionInWindow":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 7511
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7513
    const/16 v16, 0x0

    aget v16, v13, v16

    const/16 v17, 0x0

    aget v17, v12, v17

    sub-int v10, v16, v17

    .line 7514
    .local v10, "offsetX":I
    const/16 v16, 0x1

    aget v16, v13, v16

    const/16 v17, 0x1

    aget v17, v12, v17

    sub-int v11, v16, v17

    .line 7516
    .local v11, "offsetY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v16, v0

    int-to-float v0, v10

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v14, v16, v17

    .line 7517
    .local v14, "positionX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v16, v0

    int-to-float v0, v11

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v15, v16, v17

    .line 7519
    .local v15, "positionY":F
    const/16 v16, 0x0

    aget v16, v13, v16

    sub-int v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v6, v0

    .line 7520
    .local v6, "minPositionX":F
    const/16 v16, 0x1

    aget v16, v13, v16

    sub-int v16, v16, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v7, v0

    .line 7521
    .local v7, "minPositionY":F
    const/16 v16, 0x0

    aget v16, v13, v16

    sub-int v16, v16, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v2, v0

    .line 7522
    .local v2, "maxPositionX":F
    const/16 v16, 0x1

    aget v16, v13, v16

    sub-int v16, v16, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mVerticalOffset:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v3, v0

    .line 7524
    .local v3, "maxPositionY":F
    invoke-static {v14, v6}, Ljava/lang/Math;->max(FF)F

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    .line 7525
    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(FF)F

    move-result v16

    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    .line 7527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    move/from16 v17, v0

    sub-float v17, v14, v17

    const/16 v18, 0x0

    aput v17, v16, v18

    .line 7528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    move/from16 v17, v0

    sub-float v17, v17, v15

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 7530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v17, v17, v18

    const/high16 v18, -0x40800000    # -1.0f

    mul-float v17, v17, v18

    const/16 v18, 0x0

    aput v17, v16, v18

    .line 7531
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    const/high16 v18, -0x40800000    # -1.0f

    mul-float v17, v17, v18

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 7533
    const/16 v16, 0x0

    aget v16, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v8, v0

    .line 7534
    .local v8, "minX":F
    const/16 v16, 0x1

    aget v16, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v9, v0

    .line 7536
    .local v9, "minY":F
    const/16 v16, 0x0

    aget v16, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v4, v0

    .line 7537
    .local v4, "maxX":F
    const/16 v16, 0x1

    aget v16, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->this$0:Landroid/widget/Editor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/widget/Editor;->-get13(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v5, v0

    .line 7539
    .local v5, "maxY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_3

    .line 7540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v16, v18

    .line 7541
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v16, v0

    cmpg-float v16, v16, v8

    if-gez v16, :cond_2

    .line 7542
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v17, v0

    sub-float v17, v8, v17

    const/16 v18, 0x0

    aput v17, v16, v18

    .line 7544
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v16, v0

    cmpl-float v16, v16, v4

    if-lez v16, :cond_3

    .line 7545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawX:F

    move/from16 v17, v0

    sub-float v17, v4, v17

    const/16 v18, 0x0

    aput v17, v16, v18

    .line 7549
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTruncated:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-eqz v16, :cond_5

    .line 7550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 7551
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v16, v0

    cmpg-float v16, v16, v9

    if-gez v16, :cond_4

    .line 7552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v17, v0

    sub-float v17, v9, v17

    const/high16 v18, -0x40800000    # -1.0f

    mul-float v17, v17, v18

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 7554
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v16, v0

    cmpl-float v16, v16, v5

    if-lez v16, :cond_5

    .line 7555
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mTransitionOffset:[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mRawY:F

    move/from16 v17, v0

    sub-float v17, v5, v17

    const/high16 v18, -0x40800000    # -1.0f

    mul-float v17, v17, v18

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 7559
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mPositionY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$MagnifierView;->mMagnifierViewHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-virtual/range {v16 .. v20}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7560
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->getMagnifierScreen()V

    .line 7561
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->updatePosition()V

    goto/16 :goto_0

    .line 7564
    .end local v2    # "maxPositionX":F
    .end local v3    # "maxPositionY":F
    .end local v4    # "maxX":F
    .end local v5    # "maxY":F
    .end local v6    # "minPositionX":F
    .end local v7    # "minPositionY":F
    .end local v8    # "minX":F
    .end local v9    # "minY":F
    .end local v10    # "offsetX":I
    .end local v11    # "offsetY":I
    .end local v12    # "positionInWindow":[I
    .end local v13    # "positionOnScreen":[I
    .end local v14    # "positionX":F
    .end local v15    # "positionY":F
    :pswitch_1
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    .line 7565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x65

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->removeMessages(I)V

    .line 7566
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$MagnifierView;->dismiss()V

    goto/16 :goto_0

    .line 7501
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 7604
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7605
    iget-boolean v0, p0, Landroid/widget/Editor$MagnifierView;->mDrawing:Z

    if-eqz v0, :cond_0

    .line 7606
    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/widget/Editor$MagnifierView;->mRectSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/widget/Editor$MagnifierView;->mRectDst:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 7607
    iget-object v0, p0, Landroid/widget/Editor$MagnifierView;->mUpdateHandler:Landroid/widget/Editor$MagnifierView$UpdateMagnifierHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7603
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 7596
    iget-object v3, p0, Landroid/widget/Editor$MagnifierView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 7597
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7598
    .local v2, "width":I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 7599
    .local v1, "height":I
    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 7595
    return-void
.end method

.method public setExtraVerticalOffset(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 7488
    const v0, 0x3fa66666    # 1.3f

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/widget/Editor$MagnifierView;->mExtraVerticalOffset:F

    .line 7487
    return-void
.end method
