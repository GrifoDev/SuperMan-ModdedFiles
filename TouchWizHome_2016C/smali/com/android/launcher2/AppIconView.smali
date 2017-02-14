.class public Lcom/android/launcher2/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"


# static fields
.field protected static final FOLDERITEM:I = 0x3

.field protected static final FOLDERMOVEPANEL:I = 0x4

.field protected static final HOME:I = 0x0

.field protected static final HOTSEAT:I = 0x1

.field protected static final MENU:I = 0x2

.field protected static final MOVEAPPS:I = 0x5

.field private static final PRESS_ALPHA:F = 0.4f

.field private static final TAG:Ljava/lang/String; = "AppIconView"

.field private static mBadgeClearViewHeight:I

.field private static mBadgeClearViewWidth:I

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field static sIsDragState:Z


# instance fields
.field private badgeTextColor:I

.field private mBadgeClearView:Landroid/view/View;

.field private mBadgeCountText:I

.field private mBadgePopupWindow:Landroid/widget/PopupWindow;

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mCustomTextSize:F

.field private mDimAmount:F

.field protected mDrawIcon:Z

.field protected mDrawShadow:Z

.field protected mGlobalVisibleRect:Landroid/graphics/Rect;

.field private mHotseatIconSize:I

.field protected mIconBitmap:Landroid/graphics/Bitmap;

.field protected mIconDestination:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field protected mIconScaleChanging:Z

.field protected mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mIconSize:I

.field private mIsDimmed:Z

.field protected mIsFolderListPanel:Z

.field private final mLastTouch:[I

.field private final mMaxLine:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

.field private mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mNeverDrawShadow:Z

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field protected mPrevIconSize:I

.field protected mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

.field protected mTextVisible:Z

.field private mUseScaleAnimation:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field sMovieIconSize:I

.field sMovieIconSizeHeight:I

.field sMovieLeftX:I

.field sMovieLeftY:I

.field sMovieRightX:I

.field sMovieRightY:I

.field sThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher2/AppIconView;->mBadgeClearViewWidth:I

    sput v0, Lcom/android/launcher2/AppIconView;->mBadgeClearViewHeight:I

    sput-boolean v0, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-array v6, v11, [I

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    iput-object v8, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    iput-boolean v10, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    iput v11, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const v6, 0x3f0ccccd    # 0.55f

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    iput-boolean v9, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    iput-boolean v9, p0, Lcom/android/launcher2/AppIconView;->mUseScaleAnimation:Z

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mCustomTextSize:F

    iput-boolean v9, p0, Lcom/android/launcher2/AppIconView;->mIsFolderListPanel:Z

    iput-object v8, p0, Lcom/android/launcher2/AppIconView;->mBadgeClearView:Landroid/view/View;

    iput-object v8, p0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    iput-boolean v10, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    iput-boolean v9, p0, Lcom/android/launcher2/AppIconView;->mNeverDrawShadow:Z

    iput-boolean v10, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    sget-object v6, Lcom/sec/android/app/launcher/R$styleable;->AppIconView:[I

    invoke-virtual {p1, p2, v6, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getMaxLines()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mMaxLine:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v6, v7, :cond_0

    new-instance v6, Ljava/util/MissingResourceException;

    const-string v7, "AppIconView must have the attribute launcher : destination set to either \'home\' \'hotseat\' or \'menu\' set"

    const-string v8, "launcher:destination"

    const-string v9, "value of either \'home\' \'hotseat\' or \'menu\'"

    invoke-direct {v6, v7, v8, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->initMovieIconValue()V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher2/IconConfig;->mIconWidth:I

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    const v6, 0x7f020055

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sput-object v6, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportIconShadow()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->isEnableShadow()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    const v6, 0x7f090005

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    const v6, 0x7f090006

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sput v6, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    const v6, -0x50506

    iput v6, p0, Lcom/android/launcher2/AppIconView;->badgeTextColor:I

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getBadgeTextColor()I

    move-result v4

    const v6, 0x1ffffff

    if-eq v4, v6, :cond_3

    iput v4, p0, Lcom/android/launcher2/AppIconView;->badgeTextColor:I

    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRemoveBadge()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000b

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mBadgeClearView:Landroid/view/View;

    sget v6, Lcom/android/launcher2/AppIconView;->mBadgeClearViewWidth:I

    if-eqz v6, :cond_4

    sget v6, Lcom/android/launcher2/AppIconView;->mBadgeClearViewHeight:I

    if-nez v6, :cond_5

    :cond_4
    const-string v6, "AppIconView"

    const-string v7, "Once measured in the constructor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mBadgeClearView:Landroid/view/View;

    invoke-virtual {v6, v9, v9}, Landroid/view/View;->measure(II)V

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mBadgeClearView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sput v6, Lcom/android/launcher2/AppIconView;->mBadgeClearViewWidth:I

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mBadgeClearView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sput v6, Lcom/android/launcher2/AppIconView;->mBadgeClearViewHeight:I

    :cond_5
    const v6, 0x7f090327

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v6, Lcom/android/launcher2/AppIconView;->mBadgeClearViewHeight:I

    if-le v6, v2, :cond_6

    sput v2, Lcom/android/launcher2/AppIconView;->mBadgeClearViewHeight:I

    :cond_6
    new-instance v6, Landroid/widget/PopupWindow;

    iget-object v7, p0, Lcom/android/launcher2/AppIconView;->mBadgeClearView:Landroid/view/View;

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8, v2, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mBadgeClearView:Landroid/view/View;

    new-instance v7, Lcom/android/launcher2/AppIconView$1;

    invoke-direct {v7, p0}, Lcom/android/launcher2/AppIconView$1;-><init>(Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mMinimumVelocity:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AppIconView;->mMaximumVelocity:I

    :cond_7
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v7, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/launcher2/AppIconView;->badgeTextColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-static {}, Lcom/android/launcher2/framework/HoverPopupWindow;->TYPE_NONE()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AppIconView;->semSetHoverPopupType(I)V

    invoke-virtual {p0, v9}, Lcom/android/launcher2/AppIconView;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AppIconView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/AppIconView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/AppIconView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private applyStyle(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-static {v2, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mCustomTextSize:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/AppIconView;->mCustomTextSize:F

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method static createDarkenColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p0

    float-to-int v0, v2

    rsub-int v0, v0, 0xff

    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2
.end method

.method public static getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    const v0, 0x7f03001d

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03001e

    goto :goto_0
.end method

.method private getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_0
.end method

.method public static getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ShadowStyleable;->View:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private selectBadgeDrawable()V
    .locals 4

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020055

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v2, :cond_5

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHotseatScaleFactor()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setCompoundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    invoke-static {v1}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {p0, v2, p1, v2, v2}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->destroyDrawingCache()V

    return-void
.end method

.method private setContentDescriptionForBadge()I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    instance-of v5, v4, Lcom/android/launcher2/BaseItem;

    if-nez v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    instance-of v5, v4, Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_1

    move-object v3, v4

    check-cast v3, Lcom/android/launcher2/BaseItem;

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget v0, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    const/4 v2, 0x0

    iget-object v5, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v6, :cond_3

    iget-object v5, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v5, v6, :cond_3

    iget-object v5, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_1

    :cond_3
    if-le v0, v8, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080083

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_4

    invoke-static {v3}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0800ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    if-ne v0, v8, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080082

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    iget-object v2, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method static setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V
    .locals 1

    invoke-static {p0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method private setIcon(Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;ILcom/android/launcher2/PreloadIconDrawable;)V

    return-void
.end method

.method private declared-synchronized setIcon(Landroid/graphics/Bitmap;ILcom/android/launcher2/PreloadIconDrawable;)V
    .locals 8

    const/4 v6, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget v5, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iput v5, p0, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    :cond_0
    instance-of v5, p0, Lcom/android/launcher2/AllappsIcon;

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v5

    sget-object v6, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    :cond_1
    :goto_0
    if-lez p2, :cond_2

    iput p2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    :cond_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportIconFitMode()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->getCreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iget v7, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-direct {v2, v5, v6, v7}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mUseScaleAnimation:Z

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    if-eq v5, v6, :cond_a

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspaceLoading()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIconScaleChanging:Z

    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_c

    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    iget v7, p0, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    invoke-direct {v1, v5, v6, v7}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    const/4 v5, 0x2

    :try_start_2
    new-array v5, v5, [F

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    int-to-float v7, v7

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    int-to-float v7, v7

    aput v7, v5, v6

    invoke-static {p0, v5}, Lcom/android/launcher2/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Lcom/android/launcher2/AppIconView$3;

    invoke-direct {v5, p0}, Lcom/android/launcher2/AppIconView$3;-><init>(Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/android/launcher2/AppIconView$4;

    invoke-direct {v5, p0}, Lcom/android/launcher2/AppIconView$4;-><init>(Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_3
    invoke-direct {p0, v1}, Lcom/android/launcher2/AppIconView;->setCompoundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIsFolderListPanel:Z

    if-nez v5, :cond_1

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getTargetIconSize()I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit p0

    throw v5

    :cond_7
    :try_start_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    if-eqz p3, :cond_9

    move-object v1, p3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iget v7, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-static {v1, v5, v6, v7}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    move-object v2, v1

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    :try_start_5
    iput-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIconScaleChanging:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_b
    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :cond_c
    move-object v1, v2

    goto :goto_2
.end method


# virtual methods
.method public IsIconScaleChanging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIconScaleChanging:Z

    return v0
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method protected applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;IZ)V

    return-void
.end method

.method protected applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;IZ)V
    .locals 7

    const v6, 0x7f080043

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/launcher2/BaseItem;->setIconView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getFlexibleGridStyle()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_a

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eqz v3, :cond_a

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eq v3, v5, :cond_a

    const v3, 0x7f0e001c

    invoke-direct {p0, v3}, Lcom/android/launcher2/AppIconView;->applyStyle(I)V

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/launcher2/AppIconView;->mCustomTextSize:F

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getMaxLines()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/AppIconView;->mMaxLine:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mMaxLine:I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->setMaxLines(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getMaxLines()I

    move-result v3

    if-le v3, v5, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_3

    new-instance v3, Lcom/android/launcher2/AppIconView$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/AppIconView$2;-><init>(Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_b

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getTextColor()I

    move-result v2

    const v3, 0x1ffffff

    if-eq v2, v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_4

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    :cond_4
    invoke-direct {p0, p2, p3}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;I)V

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/launcher2/BaseItem;->getActionIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher2/AppIconView;->setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGoogleBackupRestore()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportPAI()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    instance-of v3, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v3, :cond_7

    instance-of v3, p1, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_9

    :cond_7
    if-nez p4, :cond_8

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->isPromise()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    invoke-virtual {p0, p4}, Lcom/android/launcher2/AppIconView;->applyState(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setTextColorAllIcons()V

    return-void

    :cond_a
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mCustomTextSize:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(I)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_c

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->setContentDescriptionForBadge()I

    goto/16 :goto_1
.end method

.method public applyState(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/AppItem;

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/launcher2/BaseItem;->hasStatusFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getInstallProgress()I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Lcom/android/launcher2/PreloadIconDrawable;

    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/android/launcher2/PreloadIconDrawable;

    :goto_1
    const-string v4, "AppIconView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyState(), setLevel progressLevel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/PreloadIconDrawable;->setLevel(I)Z

    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v3, 0x64

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/android/launcher2/PreloadIconDrawable;

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4}, Lcom/android/launcher2/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, v4, v5, v2}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;ILcom/android/launcher2/PreloadIconDrawable;)V

    goto :goto_1
.end method

.method public applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 2

    invoke-static {p1, p0}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    invoke-static {p2, p0}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_1

    iget-object v0, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconMovie(Landroid/graphics/Movie;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setTextSizeAllIcons()V

    :cond_1
    return-void
.end method

.method public createAndShowQuickOptionsPopup()V
    .locals 3

    const-string v0, "AppIconView"

    const-string v1, "createAndShowQuickOptionsPopup: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/QuickOptionsPopup;->isValidState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-static {v0}, Lcom/android/launcher2/QuickOptionsPopup;->isValidType(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v1, Lcom/android/launcher2/QuickOptionsPopup;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/launcher2/QuickOptionsPopup;-><init>(Landroid/content/Context;Lcom/android/launcher2/AppIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickOptionsPopup;->show()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AppIconView"

    const-string v1, "Show Quick Options"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->setCurrentQuickoptionsPopup(Lcom/android/launcher2/QuickOptionsPopup;)V

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    new-instance v1, Lcom/android/launcher2/AppIconView$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/AppIconView$5;-><init>(Lcom/android/launcher2/AppIconView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/QuickOptionsPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->startBounceAnimation()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v0}, Lcom/android/launcher2/QuickOptionsPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const-string v0, "AppIconView"

    const-string v1, "No Quick Options are valid!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_2

    sput-boolean v3, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/utils/LiveIconUtils;->checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/utils/LiveIconUtils;->clearLiveIconBitmap(Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    sput-boolean v1, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportIconShadow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->isEnableShadow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawShadow(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawBadge(Landroid/graphics/Canvas;Z)V
    .locals 31

    sget-object v15, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    move/from16 v27, v0

    if-eqz v27, :cond_b

    if-eqz v15, :cond_b

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    move/from16 v27, v0

    if-nez v27, :cond_0

    if-eqz p2, :cond_b

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->badgeDynamicDrawable()Z

    move-result v27

    if-eqz v27, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->selectBadgeDrawable()V

    sget-object v15, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    move/from16 v27, v0

    const/16 v28, 0x3e8

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    sget v28, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getDrawableState()[I

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v27, v0

    add-int v22, v20, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    add-int v19, v21, v27

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v27

    sub-int v10, v27, v22

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v27

    sub-int v9, v27, v19

    const-string v27, "%d"

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v29

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    move/from16 v27, v0

    const/16 v28, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f090007

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    add-int v8, v27, v28

    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-ge v8, v10, :cond_4

    move v8, v10

    :cond_4
    if-ge v7, v9, :cond_5

    sub-int v27, v9, v7

    div-int/lit8 v27, v27, 0x2

    add-int v21, v21, v27

    move v7, v9

    :cond_5
    add-int v17, v8, v22

    add-int v16, v7, v19

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v27

    sget-object v28, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->BADGE:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v28 .. v28}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getBadgeBg()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/launcher2/theme/OpenThemeManager;->mThemeStyle:Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getUseImageForBadge()Z

    move-result v27

    if-eqz v27, :cond_d

    if-eqz v23, :cond_d

    move-object/from16 v15, v23

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v27

    move/from16 v0, v16

    move/from16 v1, v27

    if-eq v0, v1, :cond_6

    sub-int v16, v16, v18

    sub-int v17, v17, v22

    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    move/from16 v27, v0

    sub-int v27, v26, v27

    div-int/lit8 v14, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    move/from16 v27, v0

    add-int v27, v27, v14

    mul-int/lit8 v28, v17, 0x3

    div-int/lit8 v28, v28, 0x4

    sub-int v13, v27, v28

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v27

    div-int/lit8 v28, v16, 0x4

    sub-int v25, v27, v28

    add-int v27, v13, v17

    move/from16 v0, v27

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    add-int v27, v13, v17

    sub-int v27, v27, v26

    sub-int v13, v13, v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v27

    add-int v28, v13, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    move/from16 v29, v0

    add-int v29, v29, v14

    sub-int v28, v28, v29

    sub-int v25, v27, v28

    :cond_7
    if-gez v25, :cond_8

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    move/from16 v27, v0

    add-int v27, v27, v14

    sub-int v27, v27, v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v28

    add-int v13, v27, v28

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v27

    add-int v13, v13, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const v28, 0x3fcccccd    # 1.6f

    mul-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v4, v0

    sub-int v27, v26, v4

    div-int/lit8 v11, v27, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f19999a    # 0.6f

    mul-float v28, v28, v29

    const/high16 v29, 0x40000000    # 2.0f

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    sub-int v12, v27, v28

    if-eqz p2, :cond_9

    sub-int/2addr v13, v11

    sub-int v25, v25, v12

    add-int v27, v13, v17

    move/from16 v0, v27

    if-le v0, v4, :cond_9

    add-int v27, v13, v17

    sub-int v27, v27, v4

    sub-int v13, v13, v27

    :cond_9
    sget-boolean v27, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v27, :cond_a

    add-int v27, v13, v17

    sub-int v13, v26, v27

    :cond_a
    add-int v27, v13, v17

    add-int v28, v25, v16

    move/from16 v0, v25

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v15, v13, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-int/lit8 v27, v17, 0x2

    add-int v27, v27, v13

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-int v28, v25, v21

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    return-void

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->badgeDynamicDrawable()Z

    move-result v27

    if-nez v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    sget v28, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    :cond_d
    if-eqz v23, :cond_6

    move-object/from16 v15, v23

    goto/16 :goto_1
.end method

.method public drawIconOrText(Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppIconView;->drawIconOrText(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public drawIconOrText(Landroid/graphics/Canvas;Z)V
    .locals 21

    const-string v19, "drawIconOrText"

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherFeature;->beginSystrace(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v0, v14, Lcom/android/launcher2/HomeItem;

    move/from16 v19, v0

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/AllappsIcon;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    :cond_0
    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    if-eqz v19, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_8

    move-object v8, v14

    check-cast v8, Lcom/android/launcher2/BaseItem;

    const/16 v16, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/launcher2/BaseItem;->getTextBg()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    :cond_1
    :goto_0
    if-eqz v16, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0902c0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0902dc

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09023d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v19

    add-int v17, v19, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getLineCount()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getLineHeight()I

    move-result v20

    mul-int v19, v19, v20

    add-int v19, v19, v17

    add-int v3, v19, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    if-le v3, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090363

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getLineCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v7, v0, :cond_6

    invoke-virtual {v9, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    invoke-virtual {v15, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    move/from16 v11, v18

    :cond_4
    move v12, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/android/launcher2/AllappsIcon;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->getAppTitleBg()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    goto/16 :goto_0

    :cond_6
    add-int v18, v11, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v18

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v19

    sub-int v19, v19, v18

    div-int/lit8 v10, v19, 0x2

    add-int v19, v10, v18

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    if-nez p2, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v19

    if-nez v19, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    :cond_9
    :goto_2
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppIconView;->drawBadge(Landroid/graphics/Canvas;Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->endSystrace()V

    return-void

    :cond_a
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected drawShadow(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v3, v5, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mNeverDrawShadow:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeStyle()Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeStyle;->isEnableShadow()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09012f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eq v3, v5, :cond_4

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v1, v3, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090248

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v3, v5, :cond_1

    sget-object v3, Lcom/android/launcher2/AppIconView$6;->$SwitchMap$com$android$launcher2$LauncherApplication$HomeGridSize:[I

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090251

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090252

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    sget-object v0, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public getAnimGroup()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected getCreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-static {p1, v0, v1, v2}, Lcom/android/launcher2/Utilities;->CreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getHotseatScaleFactor()F
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    invoke-static {}, Lcom/android/launcher2/IconConfig;->get()Lcom/android/launcher2/IconConfig;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/IconConfig$TYPE;->HOTSEAT:Lcom/android/launcher2/IconConfig$TYPE;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/IconConfig;->getIconSize(Lcom/android/launcher2/IconConfig$TYPE;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    :cond_0
    return v1
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->getCreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconDestination()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    return v0
.end method

.method public getIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    return v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getMovieDrawable()Lcom/android/launcher2/MovieDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    return-object v0
.end method

.method public getPrevIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    return v0
.end method

.method public getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    return-object v0
.end method

.method public getTextVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    return v0
.end method

.method public hasBadge()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideBadge()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setBadgeText(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected initMovieIconValue()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    return-void
.end method

.method public isDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    return v0
.end method

.method protected isFolderIconSmall()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHotseatScaleFactor()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public onDrop()V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    instance-of v1, v0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRemoveBadge()Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    const/16 v21, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v8, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v22, v22, v23

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    sub-int v19, v21, v22

    if-lez v19, :cond_a

    mul-int/lit8 v21, v17, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mMinimumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    if-eqz v15, :cond_a

    instance-of v0, v15, Lcom/android/launcher2/BaseItem;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    move/from16 v21, v0

    if-eqz v21, :cond_a

    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    :cond_0
    instance-of v0, v15, Lcom/android/launcher2/HomeItem;

    move/from16 v21, v0

    if-eqz v21, :cond_a

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x7f04000c

    invoke-static/range {v21 .. v22}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v22

    add-int v21, v21, v22

    sget v22, Lcom/android/launcher2/AppIconView;->mBadgeClearViewHeight:I

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0902bd

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    sub-int v20, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v21

    sget v22, Lcom/android/launcher2/AppIconView;->mBadgeClearViewWidth:I

    sub-int v21, v21, v22

    div-int/lit8 v18, v21, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher2/AppIconView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v21

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    move/from16 v22, v0

    add-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f090328

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    add-int v20, v21, v22

    :cond_3
    if-eqz v9, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0902be

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    if-gez v13, :cond_4

    move/from16 v18, v13

    :cond_4
    :goto_1
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x11

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :cond_5
    const/4 v14, 0x1

    :cond_6
    :goto_2
    return v14

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    const/4 v11, 0x1

    :cond_7
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getLeft()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getRight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v23

    sub-int v21, v21, v23

    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_2

    const/4 v10, 0x1

    goto/16 :goto_0

    :pswitch_2
    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/MenuAppIconView;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuAppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    check-cast v15, Lcom/android/launcher2/AppItem;

    iget v0, v15, Lcom/android/launcher2/AppItem;->mCell:I

    move/from16 v21, v0

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_2

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz v10, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0902bf

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    if-lez v7, :cond_4

    sget v21, Lcom/android/launcher2/AppIconView;->mBadgeClearViewWidth:I

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v22

    add-int v21, v21, v22

    add-int v18, v21, v7

    goto/16 :goto_1

    :cond_a
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRemoveBadge()Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-nez v21, :cond_b

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AppIconView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    packed-switch v21, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    aput v23, v21, v22

    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-nez v21, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    if-eqz v21, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->stopCaptureByItemClick()V

    :cond_d
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    const v21, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_e
    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_10

    :cond_f
    const v21, 0x3ecccccd    # 0.4f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    if-eqz v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v21

    if-eqz v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v21

    check-cast v21, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher2/HomeView;->stopCapture()V

    goto/16 :goto_2

    :pswitch_4
    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-eqz v21, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->UNKNOWN:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    :cond_11
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_12
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    goto/16 :goto_2

    :pswitch_5
    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-eqz v21, :cond_13

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_2

    :cond_13
    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setDrawShadow(Z)V

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    instance-of v0, v15, Lcom/android/launcher2/AppItem;

    move/from16 v21, v0

    if-eqz v21, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v21

    sget-object v22, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/high16 v21, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/AppIconView;->mIconScaleChanging:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/launcher2/utils/LiveIconUtils;->LIVE_ICON_PACKAGES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->getMenuAppsGridState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/BaseItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_1
    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mBadgePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mGlobalVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->createAndShowQuickOptionsPopup()V

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public refreshBadge()V
    .locals 8

    const-wide/16 v6, -0x65

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-static {v0}, Lcom/android/launcher2/HomeItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher2/HomeView;->setMainHomeScreenshot(Z)V

    :cond_1
    invoke-static {v0}, Lcom/android/launcher2/HomeItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v0, Lcom/android/launcher2/HomeItem;->mScreen:I

    sget v3, Lcom/android/launcher2/Launcher;->NEXT_INDEX_OF_ZEROPAGE:I

    if-eq v2, v3, :cond_2

    iget-wide v2, v0, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher2/HomeView;->setTakescreenshot(Z)V

    :cond_3
    return-void
.end method

.method public removeBadge(Lcom/android/launcher2/BaseItem;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "badge_count_package_name"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "badge_count_class_name"

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "badge_count"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    iput v3, p1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->setBadgeText(I)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "AppIconView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeBadge():Can\'t send the broadcast >>> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeFolderBadge()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    instance-of v3, v2, Lcom/android/launcher2/FolderItem;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/FolderItem;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AppIconView;->removeBadge(Lcom/android/launcher2/BaseItem;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setBadgeDrawableFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public setBadgeText(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher2/AppIconView;->mBadgeCountText:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setCustomTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/AppIconView;->mCustomTextSize:F

    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 6

    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher2/AppIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_5

    aget-object v5, v1, v3

    if-eqz v5, :cond_3

    instance-of v5, p0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    if-nez v5, :cond_3

    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher2/AppIconView;->setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    goto :goto_0
.end method

.method public setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/launcher2/AppIconView;->setBadgeDrawableFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setBadgeText(I)V

    return-void

    :cond_2
    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget v0, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    goto :goto_0
.end method

.method setDrawShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    return-void
.end method

.method public setHotseatText(Lcom/android/launcher2/HomeItem;)V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppIconView"

    const-string v1, "setTextVisible to false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public setIconMovie(Landroid/graphics/Movie;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/android/launcher2/MovieDrawable;

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    invoke-direct {v1, p1, v2, v3}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0, v5, v5}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v1, v2, v4}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    iget v5, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v4, v1, v4, v4}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/android/launcher2/MovieDrawable;

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    invoke-direct {v2, p1, v3, v4}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0, v6, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    add-int/lit8 v3, v3, 0x3

    invoke-static {p2, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2, v3, v5}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v7

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    iget v5, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    iget v6, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v5, v2, v5, v5}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setLastTouchPoint(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public setNeverDrawShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mNeverDrawShadow:Z

    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextColorAllIcons()V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCurrentTextColor()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowColor()I

    move-result v3

    if-eqz v4, :cond_0

    instance-of v6, v4, Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_0

    move-object v0, v4

    check-cast v0, Lcom/android/launcher2/BaseItem;

    :cond_0
    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d002e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/high16 v7, 0x40400000    # 3.0f

    const v8, -0x33000001    # -1.3421772E8f

    invoke-virtual {v6, v7, v10, v10, v8}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    return-void

    :cond_2
    instance-of v6, v4, Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/launcher2/theme/OpenThemeManager;->getInstance()Lcom/android/launcher2/theme/OpenThemeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/theme/OpenThemeManager;->getThemeLoader()Lcom/android/launcher2/theme/OpenThemeLoader;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->HOME:Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;

    invoke-virtual {v7}, Lcom/android/launcher2/theme/OpenThemeManager$ThemeType;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/theme/OpenThemeLoader;->getIsTheme(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v0, v4

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v6, v7, :cond_3

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v7, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v6, v7, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowRadius()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowDy()F

    move-result v8

    invoke-virtual {v6, v7, v10, v8, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getShadowColor()I

    move-result v6

    const v7, 0x1ffffff

    if-eq v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowRadius()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowDy()F

    move-result v8

    invoke-virtual {v0}, Lcom/android/launcher2/BaseItem;->getShadowColor()I

    move-result v9

    invoke-virtual {v6, v7, v10, v8, v9}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    const/high16 v7, 0x33000000

    invoke-virtual {v6, v10, v10, v10, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowRadius()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowDy()F

    move-result v8

    invoke-virtual {v6, v7, v10, v8, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public setTextSizeAllIcons()V
    .locals 9

    const v8, 0x7f0901e8

    const v7, 0x7f0901d6

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-eq v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    :cond_1
    :goto_1
    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getReduceHotseatTextSize()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHotseatTextSize()I

    move-result v3

    int-to-float v2, v3

    invoke-virtual {p0, v5, v2}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    :cond_2
    return-void

    :cond_3
    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v3, :cond_5

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v3, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher2/AppIconView;->setTextSize(IF)V

    goto :goto_1
.end method

.method public setTextVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-nez v1, :cond_0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    goto :goto_0
.end method

.method public setUseScaleAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mUseScaleAnimation:Z

    return-void
.end method

.method public showBadge()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->setContentDescriptionForBadge()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setBadgeText(I)V

    return-void
.end method

.method public startBounceAnimation()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mQuickOptionsPopup:Lcom/android/launcher2/QuickOptionsPopup;

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public startFadeShadow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    return-void
.end method

.method public updateMovieValues()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    const v1, 0x7f090112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    const v1, 0x7f09010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    const v1, 0x7f09010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    const v1, 0x7f090110

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    const v1, 0x7f090111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    return-void
.end method
