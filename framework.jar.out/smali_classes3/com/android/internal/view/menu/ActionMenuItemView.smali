.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;,
        Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final SUPPORT_DEX_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private isCustomBackgroundSetted:Z

.field private mActivity:Landroid/app/Activity;

.field private mAllowTextWithIcon:Z

.field private mArchivedBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultTextSize:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Landroid/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsChangedRelativePadding:Z

.field private mIsLastItem:Z

.field private mIsMultiWindow:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxFontScale:F

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTooltipText:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsLastItem:Z

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    const v7, 0x3fa66666    # 1.3f

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxFontScale:F

    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isCustomBackgroundSetted:Z

    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsMultiWindow:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    sget-object v7, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x42000000    # 32.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x1110082

    invoke-virtual {v7, v8, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_1

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    iget-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v7, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v5, v9, v7, v6, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v5, 0xbb

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v5, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v3, :cond_0

    iget v5, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v5}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_2

    instance-of v5, p1, Landroid/app/Activity;

    if-eqz v5, :cond_2

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mActivity:Landroid/app/Activity;

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTooltipText:Ljava/lang/CharSequence;

    return-void

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    iput-object v9, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mActivity:Landroid/app/Activity;

    goto :goto_1
.end method

.method private changeButtonBackground()V
    .locals 4

    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isCustomBackgroundSetted:Z

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_button_background"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    const v2, 0x10807ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsLastItem:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    const v2, 0x108084e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mContext:Landroid/content/Context;

    const v2, 0x10807ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mArchivedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 6

    const/16 v5, 0x1e0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ge v2, v5, :cond_0

    const/16 v4, 0x280

    if-lt v2, v4, :cond_1

    if-lt v1, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateTextButtonVisibility()V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v3, v4, 0x1

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    :goto_0
    and-int/2addr v3, v4

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxFontScale:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxFontScale:F

    :cond_0
    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDefaultTextSize:F

    mul-float/2addr v4, v1

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTextSize(IF)V

    :cond_1
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_6

    move-object v4, v6

    :goto_2
    invoke-virtual {p0, v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v3, :cond_8

    :goto_4
    invoke-virtual {p0, v6}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    move-object v4, v6

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTooltipNull(Z)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTooltipOffset()V

    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method hasNavigationbar()Z
    .locals 8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "window"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const v6, 0x1050158

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v4

    iget v7, v3, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_0

    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-ne v6, v4, :cond_1

    :cond_0
    const/4 v6, 0x1

    return v6

    :cond_1
    const/4 v6, 0x0

    return v6
.end method

.method public hasText()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setId(I)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ForwardingListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ForwardingListener;

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Lcom/android/internal/view/menu/ShowableListMenu;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/internal/view/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTooltipNull(Z)V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->View:[I

    const/4 v4, 0x0

    const v5, 0x10102d8

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v2, 0x25

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setMinHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string/jumbo v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTooltipOffset()V

    const/4 v0, 0x0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_0

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    const/high16 v7, -0x80000000

    if-ne v5, v7, :cond_3

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_0
    if-eq v5, v11, :cond_1

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_1

    if-ge v1, v2, :cond_1

    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_1
    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez v7, :cond_2

    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->changeButtonBackground()V

    return-void

    :cond_3
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/widget/ForwardingListener;

    invoke-virtual {v0, p0, p1}, Landroid/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const v0, 0x10807ad

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isCustomBackgroundSetted:Z

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v1

    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez v6, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    div-int/lit8 v2, v4, 0x2

    add-int v6, v2, v5

    invoke-virtual {v0, v2, v8, v6, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v7

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    :cond_0
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v5, v5, p1, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void

    :cond_3
    invoke-virtual {p0, p1, v5, v5, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIsLastItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsLastItem:Z

    return-void
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1

    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIsChangedRelativePadding:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method public setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    return-void
.end method

.method protected setTooltipOffset()V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v24

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/view/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v24

    if-nez v24, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingStart()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingEnd()I

    move-result v12

    const/4 v9, 0x0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationInWindow([I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string/jumbo v24, "window"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/WindowManager;

    invoke-interface/range {v24 .. v24}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v15, Landroid/util/DisplayMetrics;

    invoke-direct {v15}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v6, v15}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v5, 0x0

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    :goto_0
    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/Toolbar;

    move/from16 v24, v0

    if-eqz v24, :cond_2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v24

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2

    const/16 v24, 0x0

    aget v24, v18, v24

    const/16 v25, 0x0

    aget v25, v21, v25

    sub-int v24, v24, v25

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v5, v24, v25

    :cond_2
    const/16 v24, 0x1

    aget v24, v21, v24

    add-int v23, v24, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLayoutDirection()I

    move-result v24

    if-nez v24, :cond_6

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    const/16 v25, 0x0

    aget v25, v21, v25

    add-int v25, v25, v20

    sub-int v24, v24, v25

    sub-int v25, v20, v13

    sub-int v25, v25, v12

    div-int/lit8 v25, v25, 0x2

    add-int v24, v24, v25

    add-int v24, v24, v12

    sub-int v22, v24, v5

    if-nez v9, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasNavigationbar()Z

    move-result v24

    if-eqz v24, :cond_4

    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    const/16 v24, 0x3

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    :cond_3
    const v24, 0x1050158

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    iget v14, v15, Landroid/util/DisplayMetrics;->density:F

    div-float v24, v11, v4

    mul-float v24, v24, v14

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v22, v22, v24

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTooltipPosition(II)V

    return-void

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v24, 0x0

    aget v24, v21, v24

    add-int v24, v24, v20

    sub-int v25, v20, v13

    sub-int v25, v25, v12

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    sub-int v22, v24, v13

    goto :goto_1
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
