.class public final Lcom/android/launcher2/FolderPagedView;
.super Lcom/android/launcher2/SmoothPagedView;
.source "FolderPagedView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderPagedView"

.field private static final TRANSITION_BOUNCE_MIN_SCALE:F = 0.98f

.field private static final TRANSITION_PIVOT:F = 0.5f

.field public static mBackgroundAnimDuration:J

.field private static mSineIO70Interpolator:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mCurrentOrientation:I

.field private mDarkenColorFilter:Landroid/graphics/LightingColorFilter;

.field private mDeletedItemPos:I

.field private mEditTranslationViewFactor:F

.field private mFolder:Lcom/android/launcher2/Folder;

.field private mIsInRealtimeReorder:Z

.field private mIsInReorderForDrag:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPageCacheSize:I

.field private mRequestedOrientation:I

.field private mScrollZone:I

.field private mShrinkTranslateY:F

.field private mXDown:F

.field private mYDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/FolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v7, p0, Lcom/android/launcher2/FolderPagedView;->mScrollZone:I

    iput-boolean v7, p0, Lcom/android/launcher2/FolderPagedView;->mIsInRealtimeReorder:Z

    iput-boolean v7, p0, Lcom/android/launcher2/FolderPagedView;->mIsInReorderForDrag:Z

    iput v9, p0, Lcom/android/launcher2/FolderPagedView;->mShrinkTranslateY:F

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/launcher2/FolderPagedView;->mDeletedItemPos:I

    iput v8, p0, Lcom/android/launcher2/FolderPagedView;->mPageCacheSize:I

    const-string v3, "FolderPagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher2/FolderPagedView;->getGridValues()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v9, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v3, Lcom/android/launcher2/FolderPagedView;->mSineIO70Interpolator:Landroid/view/animation/PathInterpolator;

    sget-object v3, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v3, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v8}, Lcom/android/launcher2/FolderPagedView;->setSaveEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/launcher2/FolderPagedView;->mRequestedOrientation:I

    iput v3, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a038b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/android/launcher2/FolderPagedView;->mShrinkTranslateY:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    const v3, 0x7f0a016b

    invoke-virtual {v1, v3, v2, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Lcom/android/launcher2/FolderPagedView;->mEditTranslationViewFactor:F

    const v3, 0x7f0c0036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    sput-wide v4, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    new-instance v3, Landroid/graphics/LightingColorFilter;

    const v4, 0x7f0e002f

    invoke-direct {v3, v4, v7}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v3, p0, Lcom/android/launcher2/FolderPagedView;->mDarkenColorFilter:Landroid/graphics/LightingColorFilter;

    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/FolderPagedView;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher2/FolderPagedView;->mDeletedItemPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/FolderPagedView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private addAppItem(Lcom/android/launcher2/BaseItem;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderPagedView;->getOrCreatePageForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setPageType(I)V

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method

.method private changeOrientationIfRequired(Landroid/content/res/Configuration;)V
    .locals 10

    const v9, 0x7f0a01fc

    sget-boolean v6, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    iget v7, p0, Lcom/android/launcher2/FolderPagedView;->mRequestedOrientation:I

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/android/launcher2/FolderPagedView;->mRequestedOrientation:I

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->isShown()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "FolderPagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ChangeMobileKeyboard:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCurrentOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mRequestedOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/launcher2/FolderPagedView;->mRequestedOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " newConfig.orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isShown:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->isShown()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v6, "FolderPagedView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged MobileKeyboardChanged : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/launcher2/Launcher;->mChangeMobileKeyboard:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/launcher2/FolderPagedView;->mRequestedOrientation:I

    iput v6, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->handleScrollOnOrientationChange()V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a01f5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v6, 0x7f0a018e

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v6, 0x7f0a018d

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v3, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    invoke-direct {p0}, Lcom/android/launcher2/FolderPagedView;->getGridValues()V

    const v6, 0x7f0a018b

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/FolderPagedView;->mCellGapX:I

    const v6, 0x7f0a018c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/FolderPagedView;->mCellGapY:I

    const v6, 0x7f0a01fe

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/FolderPagedView;->mPageSpacingHint:I

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    const v6, 0x7f0a016b

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v5}, Landroid/util/TypedValue;->getFloat()F

    move-result v6

    iput v6, p0, Lcom/android/launcher2/FolderPagedView;->mEditTranslationViewFactor:F

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/FolderPagedView;->updateIndicator(II)V

    const/4 v6, 0x0

    invoke-direct {p0, v2, v1, v0, v6}, Lcom/android/launcher2/FolderPagedView;->updateGridSize(IIIZ)V

    invoke-direct {p0, v3}, Lcom/android/launcher2/FolderPagedView;->updatePageLayout(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->requestLayout()V

    goto/16 :goto_0
.end method

.method private createPage()Lcom/android/launcher2/CellLayoutFolder;
    .locals 5

    iget-object v2, p0, Lcom/android/launcher2/FolderPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutFolder;

    iget v2, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    iget v3, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutFolder;->setGridSize(II)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutFolder;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutFolder;->setCrosshairsVisibility(F)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutFolder;->setFolder(Lcom/android/launcher2/Folder;)V

    iget-object v2, p0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v2, v2, Lcom/android/launcher2/Folder;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutFolder;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FolderPagedView;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private getGridValues()V
    .locals 12

    const v11, 0x7f0c0018

    const v10, 0x7f0c0017

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/launcher2/Utilities;->getRotationContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountY:I

    :goto_0
    return-void

    :cond_0
    const-string v8, "FolderPagedView"

    const-string v9, "getGridValues() : rotationContext is null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountY:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountY:I

    goto :goto_0
.end method

.method private getOrCreatePageForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/CellLayoutNoGap;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v1

    iget v4, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget v5, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    iget v6, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountY:I

    mul-int/2addr v5, v6

    div-int v2, v4, v5

    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayoutNoGap;

    :cond_0
    if-eqz v3, :cond_2

    :goto_0
    return-object v3

    :cond_1
    move v0, v1

    :goto_1
    if-gt v0, v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/FolderPagedView;->createPage()Lcom/android/launcher2/CellLayoutFolder;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/FolderPagedView;->createPage()Lcom/android/launcher2/CellLayoutFolder;

    move-result-object v3

    goto :goto_0
.end method

.method private isInPageVisibleRange(I)Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCacheSize()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCacheSize()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private moveToCurrentPage(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderPagedView;->setCurrentPageIfNotSnapping(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v1

    if-le v1, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_1

    if-eqz v3, :cond_1

    const-string v4, "(?i).*talkback.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eq v2, p1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    const/high16 v4, 0x10000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setImportantForAccessibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private normalTransform(Landroid/view/View;F)V
    .locals 23

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->invalidate()V

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0073

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->isLoopingEnabled()Z

    move-result v19

    if-nez v19, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_3

    sub-int v19, v12, v6

    add-int/lit8 v5, v19, -0x1

    :goto_1
    if-nez v5, :cond_4

    const/16 v19, 0x0

    cmpg-float v19, p2, v19

    if-gez v19, :cond_4

    const/4 v9, 0x1

    :goto_2
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_5

    const/16 v19, 0x0

    cmpl-float v19, p2, v19

    if-lez v19, :cond_5

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v19

    if-eqz v19, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v19

    if-nez v19, :cond_a

    if-nez v9, :cond_2

    if-eqz v10, :cond_6

    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/FolderPagedView;->updatePageTransformZoomEffect(Landroid/view/View;F)V

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mPageZoom:F

    move/from16 v16, v0

    const v11, 0x3ee66666    # 0.45f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const v11, 0x3e19999a    # 0.15f

    :cond_7
    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v16

    mul-float v19, v19, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v20, v20, v11

    mul-float v17, v19, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mShrinkTranslateY:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/FolderPagedView;->mPageZoom:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setScaleY(F)V

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mPageTranslationFactor:F

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mEditTranslationViewFactor:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v19, v19, v20

    mul-float v19, v19, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    add-float v17, v17, v19

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v12

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v6

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_f

    sub-int v19, v12, v6

    add-int/lit8 v5, v19, -0x1

    :goto_5
    const/16 v19, 0x0

    cmpl-float v19, p2, v19

    if-lez v19, :cond_10

    move/from16 v2, p2

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getComingPage()I

    move-result v19

    move/from16 v0, v19

    if-ne v5, v0, :cond_11

    const/4 v7, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0d001d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_12

    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v21

    sub-float v20, v20, v21

    const v21, 0x3e4ccccd    # 0.2f

    add-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_a
    if-nez v9, :cond_b

    if-eqz v10, :cond_c

    :cond_b
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/FolderPagedView;->updatePageTransformZoomEffect(Landroid/view/View;F)V

    goto/16 :goto_0

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    const/high16 v19, 0x3f000000    # 0.5f

    int-to-float v0, v14

    move/from16 v20, v0

    mul-float v19, v19, v20

    const/high16 v20, 0x3f000000    # 0.5f

    int-to-float v0, v14

    move/from16 v21, v0

    mul-float v20, v20, v21

    int-to-float v0, v5

    move/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v19 .. v21}, Lcom/android/launcher2/FolderPagedView;->mix(FFF)F

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    int-to-float v0, v13

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    if-nez v5, :cond_d

    const/16 v19, 0x0

    cmpg-float v19, p2, v19

    if-gez v19, :cond_d

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->maxOverScroll()F

    move-result v20

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getScrollX()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_d
    add-int/lit8 v19, v12, -0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_e

    const/16 v19, 0x0

    cmpl-float v19, p2, v19

    if-lez v19, :cond_e

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->maxOverScroll()F

    move-result v20

    div-float v19, v19, v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getScrollX()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mMaxScrollX:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v17, v0

    const/4 v4, 0x1

    goto/16 :goto_4

    :cond_e
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_4

    :cond_f
    move v5, v6

    goto/16 :goto_5

    :cond_10
    const/high16 v19, -0x40800000    # -1.0f

    mul-float v2, p2, v19

    goto/16 :goto_6

    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_7

    :cond_12
    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0
.end method

.method private setFolderAccessibilityEnabled(Z)V
    .locals 6

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    const-string v3, "(?i).*talkback.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getComingPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayout;->setAccessibilityEnabled(Z)V

    if-nez p1, :cond_0

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/CellLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayout;->setImportantForAccessibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateGridSize(IIIZ)V
    .locals 15

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v6

    const v13, 0x7f0f000d

    invoke-static {v7, v13}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v2

    const v13, 0x7f0f000d

    invoke-static {v7, v13}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_3

    invoke-virtual {p0, v9}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v13, v5, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v13, :cond_2

    move-object v4, v5

    check-cast v4, Lcom/android/launcher2/CellLayoutNoGap;

    iget v13, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    iget v14, p0, Lcom/android/launcher2/FolderPagedView;->mCellCountY:I

    invoke-virtual {v4, v13, v14}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setCellSize(II)V

    iget v13, p0, Lcom/android/launcher2/FolderPagedView;->mCellGapX:I

    iget v14, p0, Lcom/android/launcher2/FolderPagedView;->mCellGapY:I

    invoke-virtual {v4, v13, v14}, Lcom/android/launcher2/CellLayoutNoGap;->setGaps(II)V

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutNoGap;->refreshCellDimension()V

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutNoGap;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, p1

    iput v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v4, v11}, Lcom/android/launcher2/CellLayoutNoGap;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v10, 0x0

    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher2/CellLayoutNoGap;->getPageChildCount()I

    move-result v13

    if-ge v10, v13, :cond_2

    invoke-virtual {v4, v10}, Lcom/android/launcher2/CellLayoutNoGap;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v13, v8, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v13, :cond_1

    check-cast v8, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v12

    instance-of v13, v12, Lcom/android/launcher2/AppIconView;

    if-eqz v13, :cond_0

    move-object v13, v12

    check-cast v13, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v12}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v13, v14}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;)V

    invoke-static {v3, v12}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    check-cast v12, Landroid/widget/TextView;

    invoke-static {v2, v12}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    instance-of v13, v8, Lcom/android/launcher2/AppIconView;

    if-eqz v13, :cond_0

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private updatePageLayout(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, p1}, Lcom/android/launcher2/CellLayoutNoGap;->updateViewToCellLayout(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePageTransformZoomEffect(Landroid/view/View;F)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v4, p2, v8

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mPageZoom:F

    const v5, 0x3dcccccd    # 0.1f

    sget-object v6, Lcom/android/launcher2/FolderPagedView;->mSineIO70Interpolator:Landroid/view/animation/PathInterpolator;

    const v7, 0x3fe66666    # 1.8f

    div-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->maxOverScroll()F

    move-result v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    const v4, 0x3f7ae148    # 0.98f

    iget v5, p0, Lcom/android/launcher2/FolderPagedView;->mPageZoom:F

    sub-float v5, v8, v5

    sub-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/FolderPagedView;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_4

    cmpg-float v4, p2, v9

    if-gez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getScrollX()I

    move-result v4

    int-to-float v3, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v8, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v4, v2, v8

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->isFastScrolling()Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mShrinkTranslateY:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getScrollX()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/FolderPagedView;->mMaxScrollX:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_2
.end method


# virtual methods
.method public addItemToValidPage(Lcom/android/launcher2/BaseItem;)Z
    .locals 5

    const-string v2, "FolderPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addItemToValidPage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderPagedView;->getOrCreatePageForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v2, "FolderPagedView"

    const-string v3, "addItemToValidPage : can\'t find valid page"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addNewPage()Lcom/android/launcher2/CellLayoutFolder;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/FolderPagedView;->createPage()Lcom/android/launcher2/CellLayoutFolder;

    move-result-object v0

    return-object v0
.end method

.method public animatePageBackground(III)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    const v5, 0x7f110120

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    const v5, 0x7f110121

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    mul-int/lit16 v5, p3, 0xff

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    :cond_2
    sget-boolean v5, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/FolderPagedView;->mDarkenColorFilter:Landroid/graphics/LightingColorFilter;

    :goto_1
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v2

    const/4 v5, 0x2

    new-array v5, v5, [F

    int-to-float v6, p2

    aput v6, v5, v7

    const/4 v6, 0x1

    int-to-float v7, p3

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget-wide v6, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimDuration:J

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher2/FolderPagedView$3;

    invoke-direct {v6, p0, v2, p1}, Lcom/android/launcher2/FolderPagedView$3;-><init>(Lcom/android/launcher2/FolderPagedView;II)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v6, Lcom/android/launcher2/FolderPagedView$4;

    invoke-direct {v6, p0, v2, p1, p3}, Lcom/android/launcher2/FolderPagedView$4;-><init>(Lcom/android/launcher2/FolderPagedView;III)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public animatePageBackgroundForCurrentPage(II)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentPage:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher2/FolderPagedView;->animatePageBackground(III)V

    return-void
.end method

.method public bind(Lcom/android/launcher2/Folder;)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->setDataIsReady()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FolderPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearLayout(Lcom/android/launcher2/Page;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getHiddenItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/MenuAppIconView;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getAppIcon()Lcom/android/launcher2/AppIconView;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/FolderIconView;

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5}, Lcom/android/launcher2/MenuAppIconView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/AppItem;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppItem;->setLoadingListener(Lcom/android/launcher2/BaseItem$LoadingListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/AppIconView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/AppItem;

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AppItem;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/AppItem;->setLoadingListener(Lcom/android/launcher2/BaseItem$LoadingListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mXDown:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mYDown:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v4, v1

    float-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    double-to-float v2, v4

    iget v3, p0, Lcom/android/launcher2/FolderPagedView;->mMaxSwipeAngle:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/FolderPagedView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    const-string v3, "FolderPagedView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theta is over MAX_SWIPE_ANGLE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deltaY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected getPageMeasuredWidth()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "FolderPagedView"

    const-string v1, "getPageAt(0) is null, returns getMeasuredWidth()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected getScrollZoneLeftWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mScrollZone:I

    return v0
.end method

.method protected getScrollZoneRightWidth()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mScrollZone:I

    return v0
.end method

.method public initCellLayoutVisibleRange(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->initVisibleRange(II)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v2, v3, v3}, Lcom/android/launcher2/CellLayoutNoGap;->updateVisibleRange(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected invalidatePageData()V
    .locals 8

    const/4 v4, -0x1

    iget v3, p0, Lcom/android/launcher2/FolderPagedView;->mDeletedItemPos:I

    if-eq v3, v4, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getCurrentPage()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mDeletedItemPos:I

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorderOnItemDeleted(II)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mDeletedItemPos:I

    sub-int v2, v3, v4

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher2/FolderPagedView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/FolderPagedView$1;-><init>(Lcom/android/launcher2/FolderPagedView;)V

    mul-int/lit8 v5, v2, 0x21

    add-int/lit16 v5, v5, 0x14a

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/android/launcher2/FolderPagedView;->mDeletedItemPos:I

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData()V

    goto :goto_0
.end method

.method protected invalidatePageData(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->invalidatePageData(IZ)V

    return-void
.end method

.method public isInReorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FolderPagedView;->mIsInRealtimeReorder:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/FolderPagedView;->mIsInReorderForDrag:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/FolderPagedView;->mRequestedOrientation:I

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderPagedView;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FolderPagedView;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/FolderPagedView;->mYDown:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/FolderPagedView;->mIsDataReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v17, p4, p2

    sub-int v15, p5, p3

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v4

    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_3

    add-int/lit8 v18, v4, -0x1

    :goto_1
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_4

    const/4 v10, -0x1

    :goto_2
    sget-boolean v19, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v19, :cond_5

    const/4 v9, -0x1

    :goto_3
    move/from16 v13, v18

    :goto_4
    if-eq v13, v10, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v12, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v12, v0, :cond_1

    const/16 v12, 0x31

    :cond_1
    and-int/lit8 v19, v12, 0x7

    packed-switch v19, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingLeft()I

    move-result v19

    sub-int v19, v17, v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v2, v19, v20

    sub-int v11, v2, v8

    move/from16 v0, v18

    if-ne v13, v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingLeft()I

    move-result v19

    add-int v19, v19, v16

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    div-int/lit8 v20, v11, 0x2

    add-int v6, v19, v20

    :goto_5
    and-int/lit8 v19, v12, 0x70

    sparse-switch v19, :sswitch_data_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingTop()I

    move-result v20

    sub-int v20, v15, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingBottom()I

    move-result v21

    sub-int v20, v20, v21

    sub-int v20, v20, v5

    div-int/lit8 v20, v20, 0x2

    add-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    :goto_6
    add-int v19, v6, v8

    add-int v20, v7, v5

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v3, v6, v7, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int v19, v6, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mPageSpacing:I

    move/from16 v20, v0

    add-int v16, v19, v20

    :cond_2
    add-int/2addr v13, v9

    goto/16 :goto_4

    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4
    move v10, v4

    goto/16 :goto_2

    :cond_5
    const/4 v9, 0x1

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingLeft()I

    move-result v19

    add-int v19, v19, v16

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v19, v20

    goto :goto_5

    :pswitch_2
    add-int v19, v16, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingRight()I

    move-result v20

    sub-int v19, v19, v20

    sub-int v19, v19, v8

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v20, v0

    sub-int v6, v19, v20

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingLeft()I

    move-result v19

    add-int v19, v19, v16

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v20, v0

    add-int v6, v19, v20

    goto :goto_5

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingTop()I

    move-result v19

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v20, v0

    add-int v19, v19, v20

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    sub-int v7, v19, v20

    goto :goto_6

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPaddingBottom()I

    move-result v19

    sub-int v19, v15, v19

    sub-int v19, v19, v5

    iget v0, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v20, v0

    sub-int v7, v19, v20

    goto :goto_6

    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/FolderPagedView;->setDirtyFlagOnLayout(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderPagedView;->changeOrientationIfRequired(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public requestToScrollToLeft()V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mScrollZone:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FolderPagedView;->scrollToLeft(II)Z

    return-void
.end method

.method public requestToScrollToRight()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/FolderPagedView;->mScrollZone:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/FolderPagedView;->scrollToRight(II)Z

    return-void
.end method

.method public scrollLeft(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft(I)V

    sget v0, Lcom/android/launcher2/PanelBgDrawer;->MODE_DRAG:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/FolderPagedView;->animatePageBackground(III)V

    :cond_0
    return-void
.end method

.method public scrollRight(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->scrollRight(I)V

    sget v0, Lcom/android/launcher2/PanelBgDrawer;->MODE_DRAG:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/FolderPagedView;->animatePageBackground(III)V

    :cond_0
    return-void
.end method

.method protected setAccessibilityFocusChange(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderPagedView;->setFolderAccessibilityEnabled(Z)V

    return-void
.end method

.method public setRealtimeReordering(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/FolderPagedView;->mIsInRealtimeReorder:Z

    return-void
.end method

.method public setReorderingForDrag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/FolderPagedView;->mIsInReorderForDrag:Z

    return-void
.end method

.method protected setScrollZoneLeftRight(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/FolderPagedView;->mScrollZone:I

    return-void
.end method

.method public syncItemViewOnRemoveItem()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    const-string v17, "FolderPagedView"

    const-string v18, "syncItemViewOnRemoveItem : mFolder is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/android/launcher2/FolderItem;->normalize()V

    const/4 v12, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutFolder;

    if-eqz v11, :cond_2

    const-string v17, "FolderPagedView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "syncItemViewForPage hidden : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v11, Lcom/android/launcher2/CellLayoutFolder;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutChildren;->getItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, v11, Lcom/android/launcher2/CellLayoutFolder;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_4

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_5
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/BaseItem;

    if-eqz v8, :cond_5

    iget v0, v8, Lcom/android/launcher2/BaseItem;->mScreen:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mCellCountX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mCellCountY:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    div-int v18, v18, v19

    move/from16 v0, v18

    if-eq v0, v12, :cond_6

    const-string v18, "FolderPagedView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "syncItemViewForPage : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is at wrong page"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutFolder;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher2/CellLayoutFolder;->getPositionByPage(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v8, v0, v12}, Lcom/android/launcher2/CellLayoutFolder;->updateItemToNewPosition(Lcom/android/launcher2/BaseItem;II)V

    goto :goto_1

    :cond_7
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/BaseItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/FolderPagedView;->getOrCreatePageForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/CellLayoutNoGap;

    move-result-object v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/launcher2/FolderPagedView;->isInPageVisibleRange(I)Z

    move-result v4

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v4}, Lcom/android/launcher2/CellLayoutChildren;->addItem(Lcom/android/launcher2/BaseItem;Z)Z

    move-result v14

    invoke-virtual {v15}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_8

    const/16 v18, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v18, Lcom/android/launcher2/FolderPagedView$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/FolderPagedView$2;-><init>(Lcom/android/launcher2/FolderPagedView;Landroid/view/View;)V

    const-wide/16 v20, 0x14a

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    const-string v18, "FolderPagedView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "syncItemViewForPage : insert "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    const-string v18, "FolderPagedView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "syncItemViewForPage : can\'t find valid page - "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v17

    add-int/lit8 v12, v17, -0x1

    :goto_3
    if-ltz v12, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v11, :cond_d

    invoke-virtual {v11}, Lcom/android/launcher2/CellLayoutNoGap;->getPageItemCount()I

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v12, v0, :cond_b

    if-lez v12, :cond_b

    add-int/lit8 v17, v12, -0x1

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/FolderPagedView;->animatePageBackground(III)V

    add-int/lit8 v17, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderPagedView;->snapToPage(I)V

    add-int/lit8 v17, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderPagedView;->setCurrentPage(I)V

    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/launcher2/FolderPagedView;->removeView(Landroid/view/View;)V

    sget-boolean v17, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderPagedView;->mCurrentPage:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderPagedView;->snapToPage(I)V

    :cond_c
    const-string v17, "FolderPagedView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "syncItemViewForPage : remove blank page "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " to make "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " (index)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_3
.end method

.method public syncPageItems(IZ)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayoutNoGap;->setAlpha(F)V

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->buildViews()V

    return-void
.end method

.method public syncPages()V
    .locals 5

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Page;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FolderPagedView;->clearLayout(Lcom/android/launcher2/Page;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->removeAllViews()V

    iget v3, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher2/FolderPagedView;->mCurrentOrientation:I

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/FolderPagedView;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v3}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher2/FolderPagedView;->addAppItem(Lcom/android/launcher2/BaseItem;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "FolderPagedView"

    const-string v4, "FolderInfo is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getComingPage()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderPagedView;->moveToCurrentPage(I)V

    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderPagedView;->normalTransform(Landroid/view/View;F)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderPagedView;->updatePageTransformZoomEffect(Landroid/view/View;F)V

    goto :goto_0
.end method

.method protected updatePageTransformZoomEffect(Lcom/android/launcher2/CellLayout;F)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-float v4, p2, v8

    if-gtz v4, :cond_0

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, p2, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mPageZoom:F

    const v5, 0x3dcccccd    # 0.1f

    sget-object v6, Lcom/android/launcher2/FolderPagedView;->mSineIO70Interpolator:Landroid/view/animation/PathInterpolator;

    const v7, 0x3fe66666    # 1.8f

    div-float v7, p2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->maxOverScroll()F

    move-result v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    const v4, 0x3f7ae148    # 0.98f

    iget v5, p0, Lcom/android/launcher2/FolderPagedView;->mPageZoom:F

    sub-float v5, v8, v5

    sub-float/2addr v4, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/FolderPagedView;->indexToPage(I)I

    move-result v4

    if-ne v4, v1, :cond_3

    cmpg-float v4, p2, v9

    if-gez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getScrollX()I

    move-result v4

    neg-int v4, v4

    int-to-float v3, v4

    :goto_2
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {p1, v4}, Lcom/android/launcher2/CellLayout;->setPivotX(F)V

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v10

    invoke-virtual {p1, v4}, Lcom/android/launcher2/CellLayout;->setPivotY(F)V

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v8, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v0

    cmpg-float v4, v2, v8

    if-gez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->isFastScrolling()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mShrinkTranslateY:F

    cmpl-float v4, v4, v9

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget v4, p0, Lcom/android/launcher2/FolderPagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/FolderPagedView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    goto :goto_2
.end method

.method protected updateVisiblePages()I
    .locals 1

    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->updateVisiblePagesForDragMode()I

    move-result v0

    return v0
.end method
