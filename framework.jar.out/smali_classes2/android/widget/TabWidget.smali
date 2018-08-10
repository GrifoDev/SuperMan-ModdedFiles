.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private mBackgroundResourceId:I

.field private final mBounds:Landroid/graphics/Rect;

.field private mDefaultTextSize:F

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mIsSetOpenTheme:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mMaxFontScale:F

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method static synthetic -get0(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 17

    invoke-direct/range {p0 .. p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    const/high16 v12, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    const v12, 0x3fa66666    # 1.3f

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mMaxFontScale:F

    sget-object v12, Lcom/android/internal/R$styleable;->TabWidget:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    const/4 v13, 0x3

    invoke-virtual {v4, v13, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v13, 0x4

    if-gt v12, v13, :cond_3

    const/4 v7, 0x1

    :goto_0
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    :goto_1
    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, 0x1110082

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v8, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v12, v8, Landroid/util/TypedValue;->data:I

    if-eqz v12, :cond_8

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "current_sec_active_themepackage"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v12, :cond_a

    if-eqz v10, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getOpenThemeOverlays()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/TabWidget;->mIsSetOpenTheme:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/TabWidget;->mIsSetOpenTheme:Z

    if-eqz v12, :cond_1

    sget-object v12, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mBackgroundResourceId:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TabWidget;->mBackgroundResourceId:I

    const v13, 0x10807a1

    if-ne v12, v13, :cond_b

    const v12, 0x1080a2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v12, 0x1080a2c

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mBackgroundResourceId:I

    :cond_0
    :goto_5
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    sget-object v13, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v14, v13, v15, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v11

    const/16 v12, 0x8f

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v12

    sget-object v13, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v12, v9, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v8, :cond_2

    iget v12, v8, Landroid/util/TypedValue;->data:I

    invoke-static {v12}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    :cond_2
    return-void

    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v7, :cond_5

    const v12, 0x10809bc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_5
    const v12, 0x10809bb

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_6
    if-eqz v7, :cond_7

    const v12, 0x10809be

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_7
    const v12, 0x10809bd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/TabWidget;->mBackgroundResourceId:I

    const v13, 0x10807a2

    if-ne v12, v13, :cond_0

    const v12, 0x1080a2d

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v12, 0x1080a2d

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/TabWidget;->mBackgroundResourceId:I

    goto/16 :goto_5
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, p0, v2, v4}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$TabClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v10, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-boolean v5, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget v5, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v5, :cond_2

    iget-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v5

    iput v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v2

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v10, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v7

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v3, v5, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-boolean v10, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    return v0

    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    return v0

    :cond_2
    return p2
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLeftStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRightStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 2

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    if-nez v10, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v8

    const/4 v10, -0x1

    iput v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-super {p0, v8, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v10

    sub-int v5, v10, v9

    if-lez v5, :cond_6

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_2

    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-lez v1, :cond_6

    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v10, v10

    if-eq v10, v3, :cond_4

    :cond_3
    new-array v10, v3, [I

    iput-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int v4, v5, v1

    sub-int v10, v2, v4

    const/4 v11, 0x0

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v10, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v7, v10, v6

    sub-int v10, v2, v7

    sub-int/2addr v5, v10

    add-int/lit8 v1, v1, -0x1

    iget v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    goto :goto_3

    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Landroid/widget/TabWidget;->mIsSetOpenTheme:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mBackgroundResourceId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    iget v1, p0, Landroid/widget/TabWidget;->mBackgroundResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    iget-boolean v6, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->fontScale:F

    iget v6, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    cmpl-float v6, v2, v6

    if-lez v6, :cond_0

    iget v2, p0, Landroid/widget/TabWidget;->mMaxFontScale:F

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v6, 0x1020016

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    instance-of v6, v5, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    move-object v4, v5

    check-cast v4, Landroid/widget/TextView;

    iget v6, p0, Landroid/widget/TabWidget;->mDefaultTextSize:F

    mul-float/2addr v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-eq p1, v2, :cond_0

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    iget-boolean v2, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_2

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v4, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    iget-boolean v2, p0, Landroid/widget/TabWidget;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-le v2, v4, :cond_3

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/widget/TextView;

    const-string/jumbo v2, "sec-roboto-condensed"

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_3
    return-void
.end method

.method public setDividerDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-void
.end method
