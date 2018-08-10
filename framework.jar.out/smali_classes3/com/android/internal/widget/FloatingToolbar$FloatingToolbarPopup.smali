.class final Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarPopup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
    }
.end annotation


# static fields
.field private static final ENABLE_SURVEY_MODE:Z

.field private static final MAX_OVERFLOW_SIZE:I = 0x4

.field private static final MIN_OVERFLOW_SIZE:I = 0x1

.field private static final SURVERY_PERMISSION:Ljava/lang/String; = "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"


# instance fields
.field private final NEED_CHANGE_DIRECTION_ALL:I

.field private final NEED_CHANGE_DIRECTION_HORIZONTAL:I

.field private final NEED_CHANGE_DIRECTION_VERTICAL:I

.field private final NEED_NOT_CHANGE_DIRECTION:I

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mArrow:Landroid/graphics/drawable/Drawable;

.field private final mCloseButton:Landroid/widget/ImageButton;

.field private final mCloseDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCloseDrawableBackground:Landroid/graphics/drawable/Drawable;

.field private final mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mCompensatePositionY:I

.field private final mContentContainer:Landroid/view/ViewGroup;

.field private mContentContainerSize:Landroid/util/Size;

.field private final mContext:Landroid/content/Context;

.field private final mCoordsOnWindow:Landroid/graphics/Point;

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mDismissAnimation:Landroid/animation/AnimatorSet;

.field private mDismissed:Z

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mExpandAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHidden:Z

.field private final mHideAnimation:Landroid/animation/AnimatorSet;

.field private final mIconTextSpacing:I

.field private final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field private mIsClosedOpposites:Z

.field private mIsExpandable:Z

.field private mIsExpanded:Z

.field private mIsExpandedUpwards:Z

.field private mIsMovingFirstTime:Z

.field private mIsNotEnoughArea:Z

.field private mIsOverflowOpen:Z

.field private mLastTouchDownX:F

.field private mLastTouchDownY:F

.field private final mLineHeight:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mMainPanel:Landroid/view/ViewGroup;

.field private mMainPanelSize:Landroid/util/Size;

.field private mMarginHorizontal:I

.field private mMarginVertical:I

.field private mMenuButtonIconSize:I

.field private mMenuButtonSize:Landroid/util/Size;

.field private final mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

.field private final mMoreButton:Landroid/widget/Button;

.field private mMoreButtonParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mMoreButtonSize:Landroid/util/Size;

.field private final mMoreDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

.field private mOpenOverflowUpwards:Z

.field private final mOverflow:Landroid/graphics/drawable/Drawable;

.field private final mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mOverflowButton:Landroid/widget/ImageButton;

.field private final mOverflowButtonSize:Landroid/util/Size;

.field private final mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

.field private mOverflowPanelSize:Landroid/util/Size;

.field private final mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

.field private mPaddingInBackground:Landroid/graphics/Rect;

.field private final mParent:Landroid/view/View;

.field private final mParentRoot:Landroid/view/View;

.field private mPopupSideMargin:I

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private final mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

.field private mPrevTouchX:F

.field private mPrevTouchY:F

.field private mScrollView:Landroid/widget/ScrollView;

.field private final mShowAnimation:Landroid/animation/AnimatorSet;

.field private mSubPanelList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpCoords:[I

.field private final mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mToolbarHiddenArea:[I

.field private mToolbarVisibleRect:Landroid/graphics/Rect;

.field private mTotalToolbarHeight:I

.field private mTouchSlop:I

.field private final mTouchableRegion:Landroid/graphics/Region;

.field private mTransitionDurationScale:I

.field private mVerticalLinearLayout:Landroid/widget/LinearLayout;

.field private final mViewPortOnScreen:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsMovingFirstTime:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsNotEnoughArea:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLastTouchDownX:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLastTouchDownY:F

    return v0
.end method

.method static synthetic -get14(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPrevTouchX:F

    return v0
.end method

.method static synthetic -get27(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPrevTouchY:F

    return v0
.end method

.method static synthetic -get28(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchSlop:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDeltaX:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDeltaY:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDeltaX:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDeltaY:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsMovingFirstTime:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLastTouchDownX:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLastTouchDownY:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPrevTouchX:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;F)F
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPrevTouchY:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getContentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FF)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInsideOfViewPortRect(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isOverflowAnimating()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateCoords(II)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->positionContentYCoordinatesIfOpeningOverflowUpwards()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    return-void
.end method

.method static synthetic -wrap7(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    return-void
.end method

.method static synthetic -wrap9(Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setWidth(Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 13

    const v12, 0x105033c

    const/4 v11, -0x2

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    new-array v4, v10, [I

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4}, Landroid/graphics/Region;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    new-array v4, v10, [I

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    new-instance v4, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$3;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$3;-><init>(Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    new-instance v4, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v4, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$2;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    iput-boolean v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    new-instance v4, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$3;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    iput-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    iput-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    iput-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpanded:Z

    iput-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    iput-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsNotEnoughArea:Z

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    iput-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsMovingFirstTime:Z

    iput v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->NEED_NOT_CHANGE_DIRECTION:I

    iput v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->NEED_CHANGE_DIRECTION_VERTICAL:I

    iput v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->NEED_CHANGE_DIRECTION_HORIZONTAL:I

    const/4 v4, 0x3

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->NEED_CHANGE_DIRECTION_ALL:I

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/widget/FloatingToolbar;->-wrap2(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar;->-wrap5(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105009e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105009d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    new-instance v4, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v5, 0x10c000d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v5, 0x10c000e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v5, 0x10c000f

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080354

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080352

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080353

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080355

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAutoMirrored(Z)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowButton()Landroid/widget/ImageButton;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createMainPanel()Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowPanel()Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar;->-wrap0(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v10, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v8

    const/4 v7, 0x0

    aput v7, v6, v9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$1;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$4;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$5;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-static {v4, v8, v5}, Lcom/android/internal/widget/FloatingToolbar;->-wrap1(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/util/Size;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050344

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    new-instance v4, Landroid/util/Size;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050341

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105033d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonIconSize:I

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080a67

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080a60

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080a6f

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseDrawableBackground:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080a70

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDividerWidth:I

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createMoreButton()Landroid/widget/Button;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButton:Landroid/widget/Button;

    new-instance v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseDrawableBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonIconSize:I

    iget v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonIconSize:I

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v6, 0x10401d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050345

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupSideMargin:I

    new-instance v4, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$6;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVerticalScrollBarEnabled(Z)V

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getContentContainer()Landroid/view/ViewGroup;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    check-cast v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1080a5d

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iput v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    iput v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchSlop:I

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v5, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;

    invoke-direct {v5, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$7;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParentRoot:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParentRoot:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private calculateCoords(II)V
    .locals 13

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v11, 0x0

    aget v3, v10, v11

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v11, 0x1

    aget v5, v10, v11

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v11, 0x0

    aget v4, v10, v11

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    const/4 v11, 0x1

    aget v6, v10, v11

    sub-int v8, v3, v4

    sub-int v9, v5, v6

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v10, v8

    invoke-static {v10, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v10, p2}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v10, v1

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    add-int/2addr v10, v7

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getViewPortVisibleHeight()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v10, v2, v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    add-int/2addr v10, v11

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sub-int v10, v0, v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    invoke-virtual {v10, v1, v7}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private calculateOverflowHeight(I)I
    .locals 4

    const/4 v2, 0x1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    mul-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    return v2
.end method

.method private cancelDismissAndHideAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method

.method private cancelOverflowAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method

.method private clearPanels()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    iput-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    iput-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->removeAllViews()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getContentContainer()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpanded:Z

    return-void
.end method

.method private closeOverflow()V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isNeedToChangeDirection()I

    move-result v10

    const/4 v3, 0x2

    if-ne v10, v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v3, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getX()F

    move-result v16

    add-float v3, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v3, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v3, v3, v16

    if-lez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->shiftPopup()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v6, v7, v3

    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$18;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$18;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v8, v3, v16

    new-instance v9, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$19;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v15, v14, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$19;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    move-result v12

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    if-eqz v3, :cond_2

    int-to-float v3, v5

    sub-float v3, v12, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageButton;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v13, v3, v16

    :goto_1
    new-instance v11, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$20;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12, v13, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$20;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0xfa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0xfa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0xfa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->shiftPopup()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    goto/16 :goto_0

    :cond_2
    int-to-float v3, v5

    add-float/2addr v3, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageButton;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v13, v3, v16

    goto/16 :goto_1
.end method

.method private createButton(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const v4, 0x1090140

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setFitsSystemWindows(Z)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonIconSize:I

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonIconSize:I

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v6, v0, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v1
.end method

.method private createMainPanel()Landroid/view/ViewGroup;
    .locals 4

    const/4 v3, -0x2

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$22;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$22;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;)V

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-object v0
.end method

.method private createMoreButton()Landroid/widget/Button;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const v4, 0x1090140

    invoke-virtual {v2, v4, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v3, 0x1040587

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setFitsSystemWindows(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->semSetHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonIconSize:I

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonIconSize:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6, v2, v6, v6}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v2, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$2;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createOverflowAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$24;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$24;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    return-object v0
.end method

.method private createOverflowButton()Landroid/widget/ImageButton;
    .locals 4

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090064

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->semSetHoverPopupType(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v1, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private createOverflowPanel()Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    new-instance v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setDividerHeight(I)V

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$23;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$23;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;

    invoke-direct {v2, p0, v1}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v1
.end method

.method private createSubPanel()Landroid/view/ViewGroup;
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    return-object v0
.end method

.method private getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$25;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$25;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method private getAdjustedDuration(I)I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x32

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x32

    return v0

    :cond_1
    int-to-float v0, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getAdjustedToolbarWidth(I)I
    .locals 5

    const/4 v0, 0x0

    move v1, p1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupSideMargin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    if-gtz p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105009e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    if-gtz p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getContentContainer()Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    :cond_1
    return-object v0
.end method

.method private static getMaxMenuItems(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e012a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0129

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v4, "desktopmode"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_2

    :goto_1
    return v3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method private getOverflowWidth()I
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelViewHelper:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    invoke-virtual {v4, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->calculateWidth(Landroid/view/MenuItem;)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupSideMargin:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method private getViewPortVisibleHeight()I
    .locals 7

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v4

    :cond_0
    sub-int v5, v0, v4

    new-instance v3, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v3}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v6

    if-eqz v6, :cond_1

    move v5, v0

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int v5, v0, v6

    :cond_1
    return v5
.end method

.method private hasOverflow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInRTLMode()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isInsideOfViewPortRect(FF)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNeedToChangeDirection()I
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    new-instance v2, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    invoke-direct {v2, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    move-result v11

    sub-int v1, v10, v11

    iget-boolean v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v10, :cond_0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    :goto_0
    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->top:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v10

    iget-boolean v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    if-eq v10, v11, :cond_1

    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v11, v0

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->right:I

    :goto_1
    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v3, v10, v12

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v5, v10, v13

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v4, v10, v12

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    aget v6, v10, v13

    sub-int v8, v3, v4

    sub-int v9, v5, v6

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getViewPortVisibleHeight()I

    move-result v10

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v10

    if-nez v10, :cond_4

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    if-gt v10, v11, :cond_2

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v11, v2, Landroid/graphics/Rect;->right:I

    if-lt v10, v11, :cond_2

    return v13

    :cond_0
    iget v10, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v1

    iput v10, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    :cond_1
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->left:I

    iget v10, v2, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    add-int/2addr v11, v0

    sub-int/2addr v10, v11

    iput v10, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    iget v10, v7, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->top:I

    if-gt v10, v11, :cond_3

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->bottom:I

    if-lt v10, v11, :cond_3

    const/4 v10, 0x2

    return v10

    :cond_3
    const/4 v10, 0x3

    return v10

    :cond_4
    return v12
.end method

.method private isOverflowAnimating()Z
    .locals 3

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v2

    xor-int/lit8 v1, v2, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2
.end method

.method private layoutOverflowPanelItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MenuItem;

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getOverflowWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v0

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_1
.end method

.method private maybeComputeTransitionDurationScale()V
    .locals 6

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sub-int v1, v2, v3

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int v0, v2, v3

    mul-int v2, v1, v1

    mul-int v3, v0, v0

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTransitionDurationScale:I

    :cond_0
    return-void
.end method

.method private static measure(Landroid/view/View;)Landroid/util/Size;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-virtual {p0, v1, v1}, Landroid/view/View;->measure(II)V

    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private openExpandPanel()V
    .locals 27

    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/Size;->getHeight()I

    move-result v23

    sub-int v8, v22, v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v22, v22, v8

    move/from16 v0, v22

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v11, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v13, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v12, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v14, v22, v23

    sub-int v20, v11, v12

    sub-int v21, v13, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getViewPortVisibleHeight()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v22

    if-nez v22, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    move/from16 v22, v0

    xor-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    const/16 v22, 0x1

    :goto_1
    invoke-static/range {v22 .. v22}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/util/Size;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v18, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getY()F

    move-result v16

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move/from16 v0, v22

    iput v0, v10, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    :cond_2
    const/16 v22, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    new-instance v22, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$8;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v22, Landroid/view/animation/PathInterpolator;

    const v23, 0x3ea8f5c3    # 0.33f

    const/16 v24, 0x0

    const v25, 0x3f2b851f    # 0.67f

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v26}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput v15, v22, v23

    const/16 v23, 0x1

    aput v18, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_5

    new-instance v22, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$9;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FI)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_5
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    new-instance v22, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IFI)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    const-wide/16 v22, 0xa6

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v22, Landroid/view/animation/PathInterpolator;

    const v23, 0x3ea8f5c3    # 0.33f

    const/16 v24, 0x0

    const v25, 0x3f2b851f    # 0.67f

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v26}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    new-instance v22, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$11;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_7
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_8

    new-instance v22, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$12;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;ILandroid/animation/ValueAnimator;)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    const-wide/16 v22, 0x64

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v22, Landroid/view/animation/PathInterpolator;

    const v23, 0x3ea8f5c3    # 0.33f

    const/16 v24, 0x0

    const v25, 0x3f2b851f    # 0.67f

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v26}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    fill-array-data v22, :array_2

    invoke-static/range {v22 .. v22}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v17

    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_9

    new-instance v22, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$13;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_9
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0xb

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_a

    new-instance v22, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$14;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_a
    const-wide/16 v22, 0xa6

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v22, Landroid/view/animation/PathInterpolator;

    const v23, 0x3ea8f5c3    # 0.33f

    const/16 v24, 0x0

    const v25, 0x3f2b851f    # 0.67f

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-direct/range {v22 .. v26}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v22, Landroid/animation/AnimatorSet;

    invoke-direct/range {v22 .. v22}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v6, v23, v24

    const/16 v24, 0x1

    aput-object v4, v23, v24

    invoke-virtual/range {v22 .. v23}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v22, 0xc8

    move-object/from16 v0, v17

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mExpandAnimatorSet:Landroid/animation/AnimatorSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private openOverflow()V
    .locals 18

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isNeedToChangeDirection()I

    move-result v9

    const/4 v3, 0x1

    if-eq v9, v3, :cond_0

    const/4 v3, 0x3

    if-ne v9, v3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    :cond_1
    const/4 v3, 0x2

    if-eq v9, v3, :cond_2

    const/4 v3, 0x3

    if-ne v9, v3, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v3, v0, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getX()F

    move-result v16

    add-float v3, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v3, v3, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpl-float v3, v3, v16

    if-lez v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->shiftPopup()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v7, v6, v3

    new-instance v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V

    new-instance v8, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v15, v13, v14}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$16;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getX()F

    move-result v11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v3

    if-eqz v3, :cond_5

    int-to-float v3, v4

    add-float/2addr v3, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageButton;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v12, v3, v16

    :goto_1
    new-instance v10, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$17;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v11, v12, v5}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$17;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;FFI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLogAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0xfa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0xfa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v3, 0xfa

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedDuration(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v3, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowAnimation:Landroid/view/animation/AnimationSet;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v16, 0xfa

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/high16 v16, 0x3f800000    # 1.0f

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    return-void

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->shiftPopup()V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    xor-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    goto/16 :goto_0

    :cond_5
    int-to-float v3, v4

    sub-float v3, v11, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageButton;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v12, v3, v16

    goto/16 :goto_1
.end method

.method private positionContentYCoordinatesIfOpeningOverflowUpwards()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    :cond_0
    return-void
.end method

.method private preparePopupContent()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getContentContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpanded:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setPanelsStatesAtRestingPosition()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setContentAreaAsTouchableSurface()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPreparePopupContentRTLHelper:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V
    .locals 27

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshViewPort()V

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->isMovingStarted()Z

    move-result v23

    if-eqz v23, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupSideMargin:I

    move/from16 v23, v0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v25

    div-int/lit8 v25, v25, 0x2

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v26

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupSideMargin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v2, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v3, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/Size;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v18, v23, v24

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsNotEnoughArea:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCompensatePositionY:I

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v23

    if-eqz v23, :cond_a

    move/from16 v6, v18

    if-lt v2, v3, :cond_4

    const/4 v7, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getMaxRows()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getHeight()I

    move-result v24

    mul-int v9, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->size()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getHeight()I

    move-result v24

    mul-int v23, v23, v24

    move/from16 v0, v23

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v6, v23, v24

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    if-lt v2, v6, :cond_5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v23, v6

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupHeight(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    move/from16 v23, v0

    xor-int/lit8 v23, v23, 0x1

    if-eqz v23, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getHeight()I

    move-result v24

    sub-int v23, v23, v24

    rsub-int/lit8 v12, v23, 0x0

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v13, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v15, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v14, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTmpCoords:[I

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget v16, v23, v24

    sub-int v19, v13, v14

    sub-int v20, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    sub-int v24, v24, v19

    sub-int v25, v21, v19

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    sub-int v25, v25, v20

    sub-int v26, v22, v20

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Point;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Point;->offset(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsNotEnoughArea:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCompensatePositionY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    add-int v24, v24, v20

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCompensatePositionY:I

    :cond_3
    return-void

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    if-lt v3, v6, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v6, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    if-lt v3, v0, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v22, v23, v24

    goto/16 :goto_1

    :cond_7
    if-eqz v7, :cond_8

    move/from16 v0, v18

    if-lt v2, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v23, v23, v18

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCompensatePositionY:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsNotEnoughArea:Z

    goto/16 :goto_1

    :cond_8
    if-nez v7, :cond_9

    move/from16 v0, v18

    if-lt v3, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCompensatePositionY:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsNotEnoughArea:Z

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    move/from16 v23, v0

    mul-int/lit8 v8, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    move/from16 v23, v0

    add-int v18, v23, v8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v23

    if-nez v23, :cond_f

    move/from16 v0, v18

    if-lt v2, v0, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v23, v18

    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/Size;->getWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getWidth()I

    move-result v24

    sub-int v23, v23, v24

    rsub-int/lit8 v11, v23, 0x0

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/Size;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getHeight()I

    move-result v24

    sub-int v23, v23, v24

    rsub-int/lit8 v12, v23, 0x0

    goto/16 :goto_2

    :cond_c
    move/from16 v0, v18

    if-lt v3, v0, :cond_d

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v3, v0, :cond_e

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    move/from16 v24, v0

    sub-int v22, v23, v24

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v24, v24, v18

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_3

    :cond_f
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v23

    add-int v10, v23, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    add-int v4, v23, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    add-int v5, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/Size;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/Size;->getHeight()I

    move-result v25

    sub-int v24, v24, v25

    sub-int v17, v23, v24

    if-lt v2, v10, :cond_11

    if-lt v2, v4, :cond_10

    sub-int v23, v2, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v23, v17

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto/16 :goto_3

    :cond_10
    sub-int v23, v4, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v23, v18

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto/16 :goto_3

    :cond_11
    move/from16 v0, v18

    if-lt v2, v0, :cond_12

    if-lt v4, v10, :cond_12

    sub-int v23, v4, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    sub-int v22, v23, v18

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto/16 :goto_3

    :cond_12
    if-lt v3, v10, :cond_14

    if-lt v3, v5, :cond_13

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v23, v3, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto/16 :goto_3

    :cond_13
    sub-int v23, v5, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v23, v23, v18

    sub-int v22, v23, v17

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto/16 :goto_3

    :cond_14
    move/from16 v0, v18

    if-lt v3, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    move/from16 v0, v23

    if-lt v0, v10, :cond_15

    sub-int v23, v5, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    add-int v23, v23, v18

    sub-int v22, v23, v17

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v23, v23, v8

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateOverflowHeight(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    goto/16 :goto_3
.end method

.method private refreshViewPort()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private runDismissAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runHideAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private runShowAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setContentAreaAsTouchableSurface()V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    :goto_0
    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8, v8, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getY()F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Region;->set(IIII)Z

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    aput v4, v3, v8

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarHiddenArea:[I

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToolbarVisibleRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    aput v4, v3, v5

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private static setHeight(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p0, v1, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setPanelsStatesAtRestingPosition()V
    .locals 12

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getContentContainer()Landroid/view/ViewGroup;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget-object v11, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpanded:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v5, v7, v8

    iget v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v3, v7, v8

    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDividerWidth:I

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    :cond_0
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    invoke-static {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int v5, v7, v8

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int v3, v7, v8

    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDividerWidth:I

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v5, v7

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButton:Landroid/widget/Button;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButton:Landroid/widget/Button;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v5, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    invoke-static {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsNotEnoughArea:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCompensatePositionY:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandedUpwards:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainerSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->awakenScrollBars()Z

    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v7, :cond_a

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v9, 0x104036c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int v2, v7, v8

    if-gez v2, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    sub-int/2addr v7, v0

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v6, v7, v8

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    if-eq v7, v8, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v6, v7, v8

    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    int-to-float v8, v6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    :goto_2
    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    :goto_3
    return-void

    :cond_7
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v6, v7, v8

    goto :goto_1

    :cond_8
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_2

    :cond_9
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-static {v7, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const v9, 0x104036d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int v2, v7, v8

    if-gez v2, :cond_c

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v6, v7, v8

    :cond_b
    :goto_4
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    int-to-float v8, v6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    :goto_5
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setY(F)V

    iget-boolean v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto/16 :goto_3

    :cond_c
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    sub-int/2addr v7, v2

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v6, v7, v8

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isInRTLMode()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsClosedOpposites:Z

    if-eq v7, v8, :cond_b

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v6, v7, v8

    goto :goto_4

    :cond_d
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v9}, Landroid/util/Size;->getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto/16 :goto_5

    :cond_e
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setY(F)V

    goto/16 :goto_3

    :cond_f
    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setY(F)V

    goto/16 :goto_3
.end method

.method private static setSize(Landroid/view/View;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 2

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setTouchableSurfaceInsetsComputer()V
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    return-void
.end method

.method private static setWidth(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p0, p1, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setZeroTouchableSurface()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method private shiftPopup()V
    .locals 6

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v3, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mViewPortOnScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    sub-int v2, v3, v4

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$21;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$21;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateButtonsHeight(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    const v11, 0x105033b

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    const v9, 0x1090140

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/widget/Button;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    int-to-float v8, v0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_2

    new-instance v7, Landroid/util/Size;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050344

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    new-instance v7, Landroid/util/Size;

    iget-object v8, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050341

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    iput-object v7, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    :cond_2
    return-void
.end method

.method private updateOverflowHeight(I)V
    .locals 6

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hasOverflow()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mLineHeight:I

    div-int v1, v3, v4

    invoke-direct {p0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->calculateOverflowHeight(I)I

    move-result v2

    if-le v2, p1, :cond_0

    move v2, p1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_1

    new-instance v3, Landroid/util/Size;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanel:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOpenOverflowUpwards:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int v0, v3, v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setY(F)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getY()F

    move-result v4

    int-to-float v5, v0

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setY(F)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-static {v3, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setSize(Landroid/view/View;Landroid/util/Size;)V

    goto :goto_0
.end method

.method private updatePopupHeight(I)V
    .locals 4

    mul-int/lit8 v1, p1, 0x2

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    return-void
.end method

.method private updatePopupSize()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v3, v1, 0x2

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int v1, v3, v4

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDividerWidth:I

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMoreButtonSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    mul-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int v1, v3, v4

    :cond_2
    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginHorizontal:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMarginVertical:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->maybeComputeTransitionDurationScale()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runDismissAnimation()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public getMaxRows()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runHideAnimation()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setZeroTouchableSurface()V

    return-void
.end method

.method public isDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_115059(Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get3()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsOverflowOpen:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToOverflow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->closeOverflow()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mToArrow:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V

    goto :goto_0
.end method

.method synthetic lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_117392(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get3()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpanded:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpanded:Z

    sget-boolean v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->ENABLE_SURVEY_MODE:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.sec.fw.copypaste"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "BSMR"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuItemButtonOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openExpandPanel()V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v2, "floating_toolbar"

    const-string/jumbo v3, "insertLog : no permission of survey"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_119982(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_16229(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method

.method synthetic lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_24216(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, p2

    new-instance v33, Ljava/util/LinkedList;

    invoke-direct/range {v33 .. v33}, Ljava/util/LinkedList;-><init>()V

    new-instance v26, Ljava/util/LinkedList;

    invoke-direct/range {v26 .. v26}, Ljava/util/LinkedList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/MenuItem;

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v34

    if-eqz v34, :cond_0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-virtual/range {v34 .. v38}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    const/16 v18, -0x1

    const/4 v15, 0x1

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    invoke-static {}, Lcom/android/internal/widget/FloatingToolbar;->-get5()Z

    move-result v34

    if-eqz v34, :cond_7

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateButtonsHeight(Ljava/util/List;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v34

    add-int/lit8 v25, v34, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getMaxMenuItems(Landroid/content/Context;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    sub-int v34, p2, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPaddingInBackground:Landroid/graphics/Rect;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v35, v0

    sub-int v34, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/util/Size;->getWidth()I

    move-result v35

    div-int v9, v34, v35

    move/from16 v0, v19

    if-ge v9, v0, :cond_2

    move/from16 v19, v9

    :cond_2
    move/from16 v0, v25

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    const/16 v34, 0x1

    :goto_1
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createSubPanel()Landroid/view/ViewGroup;

    move-result-object v28

    check-cast v28, Landroid/widget/LinearLayout;

    const/high16 v34, 0x3f800000    # 1.0f

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_6

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/MenuItem;

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->getItemId()I

    move-result v34

    const v35, 0x10202c0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCloseButton:Landroid/widget/ImageButton;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_4
    const/16 v34, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createButton(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/Size;->getWidth()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/Size;->getHeight()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIsExpandable:Z

    move/from16 v34, v0

    if-eqz v34, :cond_3

    add-int/lit8 v34, v19, -0x1

    rem-int v34, v10, v34

    if-nez v34, :cond_3

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v34

    xor-int/lit8 v34, v34, 0x1

    if-eqz v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v35, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->createSubPanel()Landroid/view/ViewGroup;

    move-result-object v34

    check-cast v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getMaxRows()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->size()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/Size;->getHeight()I

    move-result v34

    mul-int v34, v34, v20

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mTotalToolbarHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mVerticalLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMenuButtonSize:Landroid/util/Size;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/Size;->getHeight()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mScrollView:Landroid/widget/ScrollView;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_4
    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_a

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/MenuItem;

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->getItemId()I

    move-result v34

    const v35, 0x10202c0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mSubPanelList:Ljava/util/LinkedList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->size()I

    move-result v20

    goto/16 :goto_3

    :cond_9
    if-nez v15, :cond_c

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v34

    if-eqz v34, :cond_c

    :cond_a
    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/util/Size;->getWidth()I

    move-result v35

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v35

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->measure(Landroid/view/View;)Landroid/util/Size;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanelSize:Landroid/util/Size;

    return-object v33

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mIconTextSpacing:I

    move/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v21

    move/from16 v2, v35

    invoke-static {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar;->-wrap4(Landroid/content/Context;Landroid/view/MenuItem;I)Landroid/view/View;

    move-result-object v23

    if-eqz v15, :cond_d

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingStart()I

    move-result v34

    move/from16 v0, v34

    int-to-double v0, v0

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3ff8000000000000L    # 1.5

    mul-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v35

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingEnd()I

    move-result v36

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingBottom()I

    move-result v37

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_d
    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->size()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_11

    const/16 v16, 0x1

    :goto_5
    if-eqz v16, :cond_e

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingStart()I

    move-result v34

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v35

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingEnd()I

    move-result v36

    move/from16 v0, v36

    int-to-double v0, v0

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3ff8000000000000L    # 1.5

    mul-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingBottom()I

    move-result v37

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_e
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v34

    move/from16 v0, v34

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    if-nez v15, :cond_12

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->getGroupId()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-eq v0, v1, :cond_12

    const/16 v17, 0x1

    :goto_6
    if-eqz v17, :cond_13

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingEnd()I

    move-result v34

    mul-int/lit8 v14, v34, 0x2

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOverflowButtonSize:Landroid/util/Size;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/util/Size;->getWidth()I

    move-result v34

    sub-int v34, v6, v34

    sub-int v34, v34, v14

    move/from16 v0, v24

    move/from16 v1, v34

    if-gt v0, v1, :cond_14

    const/4 v8, 0x1

    :goto_8
    if-eqz v16, :cond_15

    sub-int v34, v6, v14

    move/from16 v0, v24

    move/from16 v1, v34

    if-gt v0, v1, :cond_15

    const/4 v7, 0x1

    :goto_9
    if-nez v8, :cond_f

    if-eqz v7, :cond_a

    :cond_f
    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/FloatingToolbar;->-wrap3(Landroid/content/Context;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    move-object/from16 v0, v34

    iget v13, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v34 .. v35}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingEnd()I

    move-result v34

    div-int/lit8 v35, v14, 0x2

    add-int v34, v34, v35

    sub-int v30, v34, v13

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingStart()I

    move-result v34

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingTop()I

    move-result v35

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getPaddingBottom()I

    move-result v36

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v30

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v34, v0

    div-int/lit8 v35, v14, 0x2

    sub-int v35, v35, v13

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, v31

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingStart()I

    move-result v34

    div-int/lit8 v35, v14, 0x2

    add-int v27, v34, v35

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v34

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingEnd()I

    move-result v35

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingBottom()I

    move-result v36

    move-object/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setButtonTagAndClickListener(Landroid/view/View;Landroid/view/MenuItem;)V

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mMainPanel:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    div-int/lit8 v34, v14, 0x2

    add-int v34, v34, v24

    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int v34, v24, v14

    sub-int v6, v6, v34

    invoke-virtual/range {v33 .. v33}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    invoke-interface/range {v21 .. v21}, Landroid/view/MenuItem;->getGroupId()I

    move-result v18

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_14
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_9
.end method

.method public layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;",
            "Landroid/view/MenuItem$OnMenuItemClickListener;",
            "I)V"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->clearPanels()V

    invoke-direct {p0, p3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->getAdjustedToolbarWidth(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMainPanelItems(Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutOverflowPanelItems(Ljava/util/List;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updatePopupSize()V

    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mHidden:Z

    iput-boolean v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mDismissed:Z

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelDismissAndHideAnimations()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mParent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->setTouchableSurfaceInsetsComputer()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->runShowAnimation()V

    return-void
.end method

.method public updateCoordinates(Landroid/graphics/Rect;)V
    .locals 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->cancelOverflowAnimations()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->refreshCoordinatesAndOverflowDirection(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->preparePopupContent()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mCoordsOnWindow:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void
.end method
