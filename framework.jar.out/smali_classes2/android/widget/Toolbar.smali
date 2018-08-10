.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$1;,
        Landroid/widget/Toolbar$2;,
        Landroid/widget/Toolbar$3;,
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$OnMenuItemClickListener;,
        Landroid/widget/Toolbar$SavedState;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mBackgroundResourceId:I

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseHandler:Landroid/os/Handler;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Landroid/widget/RtlSpacingHelper;

.field private mDownPositionX:F

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCustomNavIcon:Z

.field private mIsSetOpenTheme:Z

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMaxFontScale:F

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonStyle:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mNavIconResourceId:I

.field private mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mPerformToCollapse:Ljava/lang/Runnable;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static synthetic -get0(Landroid/widget/Toolbar;)I
    .locals 1

    iget v0, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    return v0
.end method

.method static synthetic -get1(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/Toolbar;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mCollapseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/Toolbar;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic -get4(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/Toolbar;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mPerformToCollapse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10102eb

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/widget/Toolbar;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 28

    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mNavIconResourceId:I

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    const v24, 0x800013

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mTempMargins:[I

    new-instance v24, Landroid/widget/Toolbar$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    new-instance v24, Landroid/widget/Toolbar$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    const v24, 0x3fa66666    # 1.3f

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mMaxFontScale:F

    new-instance v24, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseHandler:Landroid/os/Handler;

    new-instance v24, Landroid/widget/Toolbar$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mPerformToCollapse:Ljava/lang/Runnable;

    new-instance v18, Landroid/util/TypedValue;

    invoke-direct/range {v18 .. v18}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v24

    const v25, 0x1110082

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v18

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v24, v0

    if-eqz v24, :cond_12

    const/16 v24, 0x1

    :goto_0
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "current_sec_active_themepackage"

    invoke-static/range {v24 .. v25}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    if-eqz v21, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/AssetManager;->getOpenThemeOverlays()Ljava/util/ArrayList;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_13

    const/16 v24, 0x1

    :goto_1
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    sget-object v24, Lcom/android/internal/R$styleable;->Toolbar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    const/16 v24, 0x4

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    const/16 v24, 0x5

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    const/16 v24, 0x1b

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mNavButtonStyle:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mGravity:I

    const/16 v24, 0x17

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mButtonGravity:I

    const/16 v24, 0x11

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mTitleMarginStart:I

    const/16 v24, 0x12

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    if-ltz v14, :cond_0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    :cond_0
    const/16 v24, 0x13

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    if-ltz v13, :cond_1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    :cond_1
    const/16 v24, 0x14

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    if-ltz v15, :cond_2

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    :cond_2
    const/16 v24, 0x15

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    if-ltz v12, :cond_3

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    :cond_3
    const/16 v24, 0x16

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    const/16 v24, 0x6

    const/high16 v25, -0x80000000

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    const/16 v24, 0x7

    const/high16 v25, -0x80000000

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    const/16 v24, 0x8

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    const/16 v24, 0x9

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    const/high16 v24, -0x80000000

    move/from16 v0, v24

    if-ne v9, v0, :cond_4

    const/high16 v24, -0x80000000

    move/from16 v0, v24

    if-eq v6, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9, v6}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    :cond_5
    const/16 v24, 0x19

    const/high16 v25, -0x80000000

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/16 v24, 0x1a

    const/high16 v25, -0x80000000

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    const/16 v24, 0x18

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    check-cast v24, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    :cond_6
    const/16 v24, 0xd

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_7
    const/16 v24, 0x3

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    const/16 v24, 0xa

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setPopupTheme(I)V

    const/16 v24, 0xb

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    const/16 v24, 0xc

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_a
    const/16 v24, 0x2

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    const/16 v24, 0x10

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    :cond_c
    const/16 v24, 0xe

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_d

    const/16 v24, 0xe

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setTitleTextColor(I)V

    :cond_d
    const/16 v24, 0xf

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_e

    const/16 v24, 0xf

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitleTextColor(I)V

    :cond_e
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v24

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v25, v0

    const v26, 0x101030b

    const/16 v27, 0x0

    aput v26, v25, v27

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v20

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mNavIconResourceId:I

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    move/from16 v24, v0

    const v25, 0x1080a72

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    sget-object v24, Lcom/android/internal/R$styleable;->View:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v24

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v23

    const/16 v24, 0xd

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    move/from16 v24, v0

    const v25, 0x108079e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_15

    const v24, 0x1080a2a

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v24, 0x1080a2a

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    :cond_10
    :goto_2
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/TypedArray;->recycle()V

    :cond_11
    return-void

    :cond_12
    const/16 v24, 0x0

    goto/16 :goto_0

    :cond_13
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    move/from16 v24, v0

    const v25, 0x108079f

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    const v24, 0x1080a2b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v24, 0x1080a2b

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    goto :goto_2
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v6

    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v4, :cond_2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, Landroid/widget/Toolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-eqz p2, :cond_2

    iget-object v2, p0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureCollapseButtonView()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104007e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v6, v5, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v3, p0, Landroid/widget/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v1

    iget v2, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    const v3, 0x800003

    or-int/2addr v2, v3

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v2, 0x2

    iput v2, v1, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v3, Landroid/widget/Toolbar$4;

    invoke-direct {v3, p0}, Landroid/widget/Toolbar$4;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/RtlSpacingHelper;

    invoke-direct {v0}, Landroid/widget/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    :cond_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ActionMenuView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget-object v2, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800005

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/widget/Toolbar;->mNavButtonStyle:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v5, v4, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    iget v1, p0, Landroid/widget/Toolbar;->mButtonGravity:I

    and-int/lit8 v1, v1, 0x70

    const v2, 0x800003

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v2

    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    return v3

    :pswitch_1
    return v1

    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-lez p2, :cond_1

    sub-int v9, v1, p2

    div-int/lit8 v0, v9, 0x2

    :goto_0
    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v9}, Landroid/widget/Toolbar;->getChildVerticalGravity(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v2

    sub-int v9, v2, v5

    sub-int v6, v9, v4

    sub-int v9, v6, v1

    div-int/lit8 v7, v9, 0x2

    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v7, v9, :cond_2

    iget v7, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    :cond_0
    :goto_1
    add-int v9, v5, v7

    return v9

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    return v9

    :sswitch_2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    return v9

    :cond_2
    sub-int v9, v2, v4

    sub-int/2addr v9, v1

    sub-int/2addr v9, v7

    sub-int v8, v9, v5

    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v8, v9, :cond_0

    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v8

    sub-int v9, v7, v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x70

    sparse-switch v0, :sswitch_data_0

    iget v1, p0, Landroid/widget/Toolbar;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    return v1

    :sswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 v12, 0x0

    aget v0, p2, v12

    const/4 v11, 0x1

    aget v1, p2, v11

    const/4 v10, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v10
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    invoke-direct {p0, p1, p4}, Landroid/widget/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v2, v4, v7

    neg-int v8, v3

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x0

    aput v8, p6, v9

    neg-int v8, v6

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    const/4 v9, 0x1

    aput v8, p6, v9

    iget v8, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v9, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    iget v8, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v9, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, p0, Landroid/widget/Toolbar;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/Toolbar;->mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v2

    iget v5, p0, Landroid/widget/Toolbar;->mPaddingTop:I

    iget v6, p0, Landroid/widget/Toolbar;->mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    move v4, p6

    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    if-nez v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    :cond_0
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    return-object v0

    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStart()I
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    iget v3, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_1
    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    goto :goto_1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    iget v0, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    return v0
.end method

.method public getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .locals 2

    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_1

    return v4

    :cond_1
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isKeyboardNavigationCluster()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->setKeyboardNavigationCluster(Z)V

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTouchscreenBlocksFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->setTouchscreenBlocksFocus(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    const v10, 0x10104aa

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v5, p0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Landroid/widget/Toolbar;->ATTRS:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->Toolbar:[I

    invoke-virtual {v5, v8, v6, v10, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v5, 0x16

    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_0

    iput v0, p0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {v5, v8, v6, v10, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v5, 0x25

    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setMinimumHeight(I)V

    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10502b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v5, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setMinimumWidth(I)V

    :cond_2
    iget-boolean v5, p0, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    if-nez v5, :cond_3

    iget v5, p0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    if-lez v5, :cond_3

    iget-object v5, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v5, p0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    if-eqz v5, :cond_5

    instance-of v5, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_5

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    :cond_3
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    if-eqz v5, :cond_4

    iget v5, p0, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iget v6, p0, Landroid/widget/Toolbar;->mBackgroundResourceId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/Toolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void

    :cond_5
    if-eqz v1, :cond_3

    iget-object v5, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v5, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 51

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_c

    const/16 v18, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v48

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v26

    move/from16 v22, v27

    sub-int v32, v48, v28

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    const/16 v49, 0x0

    const/16 v50, 0x1

    aput v49, v12, v50

    const/16 v49, 0x0

    const/16 v50, 0x0

    aput v49, v12, v50

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    move-result v25

    if-ltz v25, :cond_d

    sub-int v49, p5, p3

    move/from16 v0, v25

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_1

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_2

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetLeft()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetRight()I

    move-result v14

    sub-int v49, v13, v22

    const/16 v50, 0x0

    move/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    const/16 v50, 0x0

    aput v49, v12, v50

    sub-int v49, v48, v28

    sub-int v49, v49, v32

    sub-int v49, v14, v49

    const/16 v50, 0x0

    move/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    const/16 v50, 0x1

    aput v49, v12, v50

    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v22

    sub-int v49, v48, v28

    sub-int v49, v49, v14

    move/from16 v0, v32

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_3

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_4

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v19

    const/16 v42, 0x0

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v50

    add-int v49, v49, v50

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v50, v0

    add-int v49, v49, v50

    add-int/lit8 v42, v49, 0x0

    :cond_5
    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v50

    add-int v49, v49, v50

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v50, v0

    add-int v49, v49, v50

    add-int v42, v42, v49

    :cond_6
    if-nez v20, :cond_7

    if-eqz v19, :cond_b

    :cond_7
    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    :goto_7
    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    :goto_8
    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v47

    check-cast v47, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    if-lez v49, :cond_15

    const/16 v41, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mGravity:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, 0x70

    sparse-switch v49, :sswitch_data_0

    :sswitch_0
    sub-int v49, v16, v29

    sub-int v34, v49, v26

    sub-int v49, v34, v42

    div-int/lit8 v35, v49, 0x2

    move-object/from16 v0, v47

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v50, v0

    add-int v49, v49, v50

    move/from16 v0, v35

    move/from16 v1, v49

    if-ge v0, v1, :cond_17

    move-object/from16 v0, v47

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v50, v0

    add-int v35, v49, v50

    :cond_8
    :goto_a
    add-int v45, v29, v35

    :goto_b
    if-eqz v18, :cond_19

    if-eqz v41, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v49, v0

    :goto_c
    const/16 v50, 0x1

    aget v50, v12, v50

    sub-int v31, v49, v50

    const/16 v49, 0x0

    move/from16 v0, v49

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    sub-int v32, v32, v49

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    const/16 v50, 0x1

    aput v49, v12, v50

    move/from16 v44, v32

    move/from16 v39, v32

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    sub-int v43, v32, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v40, v45, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v43

    move/from16 v2, v45

    move/from16 v3, v32

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    sub-int v44, v43, v49

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v40, v49

    :cond_9
    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    add-int v45, v45, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    sub-int v38, v32, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v37, v45, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v38

    move/from16 v2, v45

    move/from16 v3, v32

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    sub-int v39, v32, v49

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v37, v49

    :cond_a
    if-eqz v41, :cond_b

    move/from16 v0, v44

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    :cond_b
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v17, 0x0

    :goto_e
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    goto/16 :goto_7

    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_8

    :cond_15
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    if-lez v49, :cond_16

    const/16 v41, 0x1

    goto/16 :goto_9

    :cond_16
    const/16 v41, 0x0

    goto/16 :goto_9

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v49

    move-object/from16 v0, v47

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v50, v0

    add-int v49, v49, v50

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move/from16 v50, v0

    add-int v45, v49, v50

    goto/16 :goto_b

    :cond_17
    sub-int v49, v16, v26

    sub-int v49, v49, v42

    sub-int v49, v49, v35

    sub-int v36, v49, v29

    move-object/from16 v0, v47

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v50, v0

    add-int v49, v49, v50

    move/from16 v0, v36

    move/from16 v1, v49

    if-ge v0, v1, :cond_8

    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v50, v0

    add-int v49, v49, v50

    sub-int v49, v49, v36

    sub-int v49, v35, v49

    const/16 v50, 0x0

    move/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    goto/16 :goto_a

    :sswitch_2
    sub-int v49, v16, v26

    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v50, v0

    sub-int v49, v49, v50

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    move/from16 v50, v0

    sub-int v49, v49, v50

    sub-int v45, v49, v42

    goto/16 :goto_b

    :cond_18
    const/16 v49, 0x0

    goto/16 :goto_c

    :cond_19
    if-eqz v41, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    move/from16 v49, v0

    :goto_f
    const/16 v50, 0x0

    aget v50, v12, v50

    sub-int v21, v49, v50

    const/16 v49, 0x0

    move/from16 v0, v49

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    add-int v22, v22, v49

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v50

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    const/16 v50, 0x0

    aput v49, v12, v50

    move/from16 v43, v22

    move/from16 v38, v22

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    add-int v44, v22, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v40, v45, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v22

    move/from16 v2, v45

    move/from16 v3, v44

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    add-int v43, v44, v49

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v40, v49

    :cond_1a
    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Landroid/widget/Toolbar$LayoutParams;

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    add-int v45, v45, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    add-int v39, v22, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v37, v45, v49

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v22

    move/from16 v2, v45

    move/from16 v3, v39

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    add-int v38, v39, v49

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v37, v49

    :cond_1b
    if-eqz v41, :cond_b

    move/from16 v0, v43

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_d

    :cond_1c
    const/16 v49, 0x0

    goto/16 :goto_f

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v33

    const/16 v17, 0x0

    :goto_10
    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Landroid/widget/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    add-int/lit8 v17, v17, 0x1

    goto :goto_10

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Landroid/widget/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1, v12}, Landroid/widget/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    sub-int v49, v48, v27

    sub-int v49, v49, v28

    div-int/lit8 v49, v49, 0x2

    add-int v30, v27, v49

    div-int/lit8 v15, v11, 0x2

    sub-int v8, v30, v15

    add-int v9, v8, v11

    move/from16 v0, v22

    if-ge v8, v0, :cond_20

    move/from16 v8, v22

    :cond_1f
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v17, 0x0

    :goto_12
    move/from16 v0, v17

    if-ge v0, v10, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1, v8, v12, v5}, Landroid/widget/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    add-int/lit8 v17, v17, 0x1

    goto :goto_12

    :cond_20
    move/from16 v0, v32

    if-le v9, v0, :cond_1f

    sub-int v49, v9, v32

    sub-int v8, v8, v49

    goto :goto_11

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Toolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->clear()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 41

    const/4 v6, 0x0

    const/16 v27, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Toolbar;->mTempMargins:[I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v31, 0x1

    const/16 v30, 0x0

    :goto_0
    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetStart()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v6, v3, 0x0

    sub-int v3, v25, v35

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v31

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/Toolbar;->mMaxButtonHeight:I

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getCurrentContentInsetEnd()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    sub-int v3, v24, v34

    const/4 v5, 0x0

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v30

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v22

    const/16 v28, 0x0

    :goto_1
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/Toolbar$LayoutParams;

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    :cond_5
    :goto_2
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    :cond_6
    const/16 v31, 0x0

    const/16 v30, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    goto :goto_2

    :cond_8
    const/16 v39, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    add-int v12, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    add-int v38, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v21

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v40

    move-object/from16 v0, v40

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v36

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/Toolbar;->mMaxFontScale:F

    cmpl-float v3, v26, v3

    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Toolbar;->mMaxFontScale:F

    move/from16 v26, v0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    mul-float v5, v36, v26

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v38

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v39

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v39, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v37, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/widget/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v38

    add-int v19, v37, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Landroid/widget/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v39

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v37, v37, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v23

    :cond_c
    add-int v6, v6, v39

    move/from16 v0, v27

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v27, v27, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v23

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v33

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v23, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v32

    invoke-direct/range {p0 .. p0}, Landroid/widget/Toolbar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v32, 0x0

    :cond_d
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    return-void

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    move/from16 v0, v36

    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    move-object v2, p1

    check-cast v2, Landroid/widget/Toolbar$SavedState;

    invoke-virtual {v2}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    :goto_0
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_0
    iget-boolean v3, v2, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/widget/Toolbar;->postShowOverflowMenu()V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    iget-object v1, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    :cond_0
    iget-boolean v2, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v0, :cond_1

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iput-boolean v3, p0, Landroid/widget/Toolbar;->mEatingTouch:Z

    :cond_3
    return v4
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    iget v4, v3, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, v4}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->removeViewAt(I)V

    iget-object v4, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Toolbar;->mCollapsible:Z

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetEndWithActions:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/widget/Toolbar;->mContentInsetStartWithNavigation:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureContentInsets()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureLogoView()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenuView()V

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_2
    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    iget v2, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    iput-object p2, p0, Landroid/widget/Toolbar;->mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v3}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {p2, v4}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v4}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/Toolbar;->mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iput-object p2, p0, Landroid/widget/Toolbar;->mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    :cond_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 3

    const v2, 0x1080a72

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/Toolbar;->mNavIconResourceId:I

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    iput-boolean v1, p0, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Toolbar;->mIsCustomNavIcon:Z

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Landroid/widget/Toolbar;->mIsSetOpenTheme:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureNavButtonView()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/Toolbar;->ensureMenu()V

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/Toolbar;->mPopupTheme:I

    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/widget/Toolbar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/widget/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Landroid/widget/Toolbar;->mSubtitleTextAppearance:I

    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    iput p1, p0, Landroid/widget/Toolbar;->mSubtitleTextColor:I

    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    iget v1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/widget/Toolbar;->addSystemView(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iput-object p1, p0, Landroid/widget/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Landroid/widget/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleMargin(IIII)V
    .locals 0

    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    iput p2, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    iput p3, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    iput p4, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginEnd:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginStart:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/Toolbar;->mTitleMarginTop:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    iput p2, p0, Landroid/widget/Toolbar;->mTitleTextAppearance:I

    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    iput p1, p0, Landroid/widget/Toolbar;->mTitleTextColor:I

    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Toolbar;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
