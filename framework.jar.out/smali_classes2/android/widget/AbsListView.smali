.class public abstract Landroid/widget/AbsListView;
.super Landroid/widget/AdapterView;
.source "AbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsListView$1;,
        Landroid/widget/AbsListView$2;,
        Landroid/widget/AbsListView$3;,
        Landroid/widget/AbsListView$AbsPositionScroller;,
        Landroid/widget/AbsListView$AdapterDataSetObserver;,
        Landroid/widget/AbsListView$CheckForDoublePenClick;,
        Landroid/widget/AbsListView$CheckForKeyLongPress;,
        Landroid/widget/AbsListView$CheckForLongPress;,
        Landroid/widget/AbsListView$CheckForTap;,
        Landroid/widget/AbsListView$FlingRunnable;,
        Landroid/widget/AbsListView$HoverScrollHandler;,
        Landroid/widget/AbsListView$InputConnectionWrapper;,
        Landroid/widget/AbsListView$LayoutParams;,
        Landroid/widget/AbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/AbsListView$MultiChoiceModeListener;,
        Landroid/widget/AbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/AbsListView$OnScrollListener;,
        Landroid/widget/AbsListView$PerformClick;,
        Landroid/widget/AbsListView$PositionScroller;,
        Landroid/widget/AbsListView$RecycleBin;,
        Landroid/widget/AbsListView$RecyclerListener;,
        Landroid/widget/AbsListView$SavedState;,
        Landroid/widget/AbsListView$SelectionBoundsAdjuster;,
        Landroid/widget/AbsListView$SemFastScrollEventListener;,
        Landroid/widget/AbsListView$SemFluidScrollerEventListener;,
        Landroid/widget/AbsListView$SemSmoothScrollByMove;,
        Landroid/widget/AbsListView$WindowRunnnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/widget/Filter$FilterListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;",
        "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;"
    }
.end annotation


# static fields
.field private static final CHECK_POSITION_SEARCH_DISTANCE:I = 0x14

.field public static final CHOICE_MODE_MULTIPLE:I = 0x2

.field public static final CHOICE_MODE_MULTIPLE_MODAL:I = 0x3

.field public static final CHOICE_MODE_NONE:I = 0x0

.field public static final CHOICE_MODE_SINGLE:I = 0x1

.field private static final DEBUG:Z = false

.field static final DOUBLE_FLING_DETECTING_INTERVAL:I = 0xc8

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final GTP_STATE_NONE:I = 0x0

.field private static final GTP_STATE_PRESSED:I = 0x2

.field private static final GTP_STATE_SHOWN:I = 0x1

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_HEIGHT_BOTTOM_DP:I = 0x19

.field private static final HOVERSCROLL_HEIGHT_TOP_DP:I = 0x19

.field private static final HOVERSCROLL_SPEED_FASTER:F = 3000.0f

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field private static JUMP_SCROLL_TO_TOP_FINISHING:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_IDLE:I = 0x0

.field private static JUMP_SCROLL_TO_TOP_INITIATED:I = 0x0

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final MSG_HOVERSCROLL_MOVE:I = 0x1

.field private static final MSG_HOVERSCROLL_MOVE_FASTER:I = 0x2

.field private static final MSG_HOVERSCROLL_MOVE_TO_END:I = 0x3

.field private static final MSG_QC_HIDE:I = 0x0

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "AbsListView"

.field static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field static final TOUCH_MODE_DOWN:I = 0x0

.field static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_OVERFLING:I = 0x6

.field static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field static final TOUCH_MODE_REST:I = -0x1

.field static final TOUCH_MODE_SCROLL:I = 0x3

.field static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1

.field private static mSemScrollAmount:I

.field static final sLinearInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private GO_TO_TOP_HIDE:I

.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private QC_ICON_HIDE_DELAY:I

.field private final SWITCH_CONTROL_FLING:I

.field private final SWITCH_CONTROL_SCROLL_MAX_DURATION:I

.field private final SWITCH_CONTROL_SCROLL_MIN_DURATION:I

.field private mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

.field private mAutoscrollDuration:I

.field private mAutoscrollDurationGap:I

.field private mCacheColorHint:I

.field mCachingActive:Z

.field mCachingStarted:Z

.field mCheckStates:Landroid/util/SparseBooleanArray;

.field mCheckedIdStates:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedItemCount:I

.field mChnagedAdapter:Z

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDeltamoveX:I

.field private mDeltamoveY:I

.field private mDensityScale:F

.field private mDirection:I

.field mDoubleFlingEnabled:Z

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeEffect;

.field private mEdgeGlowTop:Landroid/widget/EdgeEffect;

.field private mEnableVibrationAtLongPress:Z

.field private mExtraPaddingInBottomHoverArea:I

.field private mExtraPaddingInTopHoverArea:I

.field private mFastScroll:Landroid/widget/FastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingLeft:I

.field private mGlowPaddingRight:I

.field private mHapticOverScroll:Z

.field private mHasPerformedLongPress:Z

.field public mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoverTopAreaHeight:I

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field mInitAbsListView:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlMultiSelection:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDeviceDefault:Z

.field private mIsDexMode:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsFirstMultiSelectionMove:Z

.field private mIsFirstPenClick:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoverScrolled:Z

.field mIsHoveredByMouse:Z

.field private mIsLongPressMultiSelection:Z

.field private mIsLongPressTriggeredByKey:Z

.field private mIsMouseHoverScroll:Z

.field private mIsMouseHoverScrollX:I

.field private mIsMouseHoverScrollY:I

.field private mIsMovedbeforeUP:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field final mIsScrap:[Z

.field private mIsSemOnClickEnabled:Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsfirstMoveEvent:Z

.field mJumpAtFirst:Z

.field private mJumpScrollToTopState:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field mLastFlingSpeed:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mLongPressMultiSelectionEnabled:Z

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private mNavigationBarHeight:I

.field private mNeedsHoverScroll:Z

.field private mNestedYOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

.field private mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/AbsListView$SavedState;

.field private mPerformClick:Landroid/widget/AbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

.field final mRecycler:Landroid/widget/AbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field mScrollDown:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollUp:Landroid/view/View;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSelectorState:[I

.field private final mSemAutoHide:Ljava/lang/Runnable;

.field private mSemCanGoFuther:Z

.field private mSemCloseChildByBottom:Landroid/view/View;

.field private mSemCloseChildByTop:Landroid/view/View;

.field private mSemCloseChildPositionByBottom:I

.field private mSemCloseChildPositionByTop:I

.field protected mSemCurrentFocusPosition:I

.field private mSemCustomMultiChoiceMode:Z

.field private mSemDistanceFromCloseChildBottom:I

.field private mSemDistanceFromCloseChildTop:I

.field private mSemDistanceFromTrackedChildTop:I

.field private mSemDragBlockBottom:I

.field private mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

.field private mSemDragBlockLeft:I

.field private mSemDragBlockRect:Landroid/graphics/Rect;

.field private mSemDragBlockRight:I

.field private mSemDragBlockTop:I

.field private mSemDragEndX:I

.field private mSemDragEndY:I

.field private mSemDragSelectedItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemDragSelectedItemSize:I

.field private mSemDragSelectedViewPosition:I

.field private mSemDragStartX:I

.field private mSemDragStartY:I

.field private mSemEnableGoToTop:Z

.field private mSemFastScroll:Landroid/widget/SemFastScroller;

.field mSemFastScrollCustomEffectEnabled:Z

.field public mSemFastScrollEffectState:Z

.field private mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

.field protected mSemForcedDrawEdgeEffect:Z

.field private final mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

.field private final mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

.field private mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private mSemGoToTopFadeOutStart:Z

.field private mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

.field private mSemGoToTopLastState:I

.field private mSemGoToTopRect:Landroid/graphics/Rect;

.field private mSemGoToTopState:I

.field private mSemIsGoToTopShown:Z

.field private mSemPressItemListArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemScrollRemains:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSemSizeChnage:Z

.field private mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

.field private mSemTrackedChild:Landroid/view/View;

.field private mSemTrackedChildPosition:I

.field private mShowFadeOutGTP:I

.field mShowGTPAtFirstTime:Z

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field protected mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private final mTmpPoint:[F

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTouchdownX:I

.field private mTouchdownY:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F

.field mWidthMeasureSpec:I

.field mWindowFocusChanged:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic -get12(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic -get13(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method static synthetic -get14(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic -get15(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return v0
.end method

.method static synthetic -get16(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    return v0
.end method

.method static synthetic -get17(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic -get18(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic -get19(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic -get20(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic -get21(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic -get22(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic -get23(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic -get24(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get25(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic -get26(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    return v0
.end method

.method static synthetic -get27(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return v0
.end method

.method static synthetic -get28(Landroid/widget/AbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic -get29(Landroid/widget/AbsListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic -get30(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return v0
.end method

.method static synthetic -get31(Landroid/widget/AbsListView;)Landroid/widget/SemFastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    return-object v0
.end method

.method static synthetic -get32(Landroid/widget/AbsListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get33(Landroid/widget/AbsListView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get34(Landroid/widget/AbsListView;)[F
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    return-object v0
.end method

.method static synthetic -get35(Landroid/widget/AbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/AbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/AbsListView;)Landroid/widget/FastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/AbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic -set10(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    return p1
.end method

.method static synthetic -set11(Landroid/widget/AbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    return p1
.end method

.method static synthetic -set4(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    return p1
.end method

.method static synthetic -set5(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    return p1
.end method

.method static synthetic -set6(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic -set7(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForLongPress;)Landroid/widget/AbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set8(Landroid/widget/AbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    return p1
.end method

.method static synthetic -set9(Landroid/widget/AbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/AbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/AbsListView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeIn()V

    return-void
.end method

.method static synthetic -wrap13(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    return-void
.end method

.method static synthetic -wrap14(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/widget/AbsListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionEnded(II)V

    return-void
.end method

.method static synthetic -wrap16(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/AbsListView;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/AbsListView;IIIIIIIIZ)Z
    .locals 1

    invoke-virtual/range {p0 .. p9}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/AbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/AbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/widget/AbsListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/AbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/AbsListView;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    const/4 v0, 0x1

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    const/4 v0, 0x2

    sput v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    const/16 v0, 0x1f4

    sput v0, Landroid/widget/AbsListView;->mSemScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    iput v4, p0, Landroid/widget/AbsListView;->mLastFlingSpeed:I

    iput v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    iput v4, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/widget/AbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iput v4, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iput v4, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iput v4, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iput v4, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v4, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v4, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    iput v5, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    iput-object v7, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v5, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    iput-object v7, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v7, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iput v4, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    iput v4, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    iput v4, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    iput v4, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    new-array v1, v6, [Z

    iput-object v1, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    iput v4, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    iput v4, p0, Landroid/widget/AbsListView;->mDirection:I

    iput v4, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    iput v4, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput v5, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    const/high16 v1, 0x41700000    # 15.0f

    iput v1, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    iput v4, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    const/16 v1, 0x1e

    iput v1, p0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    iput v4, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput v4, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    iput v4, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mJumpAtFirst:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    iput v4, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    iput v4, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    iput v4, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v5, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    iput v5, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v5, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    iput v5, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput v5, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput v5, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    const/16 v1, 0xfa0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_FLING:I

    const/16 v1, 0x64

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    const/16 v1, 0x7f0

    iput v1, p0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    const/16 v1, 0x8a

    iput v1, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    iput v4, p0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    sget v1, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    iput v5, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iput v4, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    const/16 v1, 0x9c4

    iput v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutStart:Z

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mSemIsGoToTopShown:Z

    new-instance v1, Landroid/widget/AbsListView$1;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/AbsListView$2;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    new-instance v1, Landroid/widget/AbsListView$3;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/AbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 18

    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mLastFlingSpeed:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v15, Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/AbsListView$RecycleBin;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mScrollProfilingStarted:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mFlingProfilingStarted:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsDexMode:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mLastScrollState:I

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    const/4 v15, 0x1

    new-array v15, v15, [Z

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mIsScrap:[Z

    const/4 v15, 0x2

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v15, 0x2

    new-array v15, v15, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v15, 0x2

    new-array v15, v15, [F

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mTmpPoint:[F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mPointerCount:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mHapticOverScroll:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mDirection:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    const/high16 v15, 0x41700000    # 15.0f

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    const/16 v15, 0x1e

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->QC_ICON_HIDE_DELAY:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mJumpAtFirst:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mOldKeyCode:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    const/16 v15, 0xfa0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_FLING:I

    const/16 v15, 0x64

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MIN_DURATION:I

    const/16 v15, 0x7f0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->SWITCH_CONTROL_SCROLL_MAX_DURATION:I

    const/16 v15, 0x8a

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    sget v15, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mHoverPosition:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    const/16 v15, 0x9c4

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutStart:Z

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mSemIsGoToTopShown:Z

    new-instance v15, Landroid/widget/AbsListView$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/AbsListView$1;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v15, Landroid/widget/AbsListView$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/AbsListView$2;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    new-instance v15, Landroid/widget/AbsListView$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/AbsListView$3;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    sget-object v15, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    const/4 v15, 0x2

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    const/4 v15, 0x3

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    const/4 v15, 0x4

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    const/4 v15, 0x5

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->setTranscriptMode(I)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    const/16 v15, 0x8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    const/16 v15, 0xb

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollStyle(I)V

    const/16 v15, 0x9

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->setSmoothScrollbarEnabled(Z)V

    const/4 v15, 0x7

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    const/16 v15, 0xa

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->uiMode:I

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/AbsListView;->setRevealOnFocusHint(Z)V

    :cond_1
    new-instance v8, Landroid/util/TypedValue;

    invoke-direct {v8}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    const v16, 0x1110082

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v0, v8, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    if-eqz v8, :cond_2

    iget v15, v8, Landroid/util/TypedValue;->data:I

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    :cond_2
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private addToPressItemListArray(II)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v2, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-ge p1, p2, :cond_5

    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-le p1, p2, :cond_7

    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private autoScrollWithDuration(I)V
    .locals 9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "autoScrollWithDuration:CASE  mFirst "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "mCount is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v1

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v1, v6

    :cond_1
    const-string/jumbo v6, "AbsListView"

    const-string/jumbo v7, "autoScrollWithDuration:CASEE  height > 0 && getAdapter()!= null && mCount > 0 "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v6, v2, v0

    mul-int v5, p1, v6

    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "autoScrollWithDuration(), duration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v2, -0x1

    mul-int v7, v0, v1

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v7, v5}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method

.method private canScrollDown()Z
    .locals 6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v3, v2

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private canScrollUp()Z
    .locals 4

    const/4 v3, 0x0

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private clearScrollingCache()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$12;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$12;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private createScrollingCache()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHardwareAccelerated()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mCachingStarted:Z

    :cond_0
    return-void
.end method

.method private createTextFilter(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x1030309

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x103030a

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private drawGoToTop(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private endLongPressMultiSelection(II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionEnded(II)V

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v1, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_0
    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    return-void
.end method

.method private finishGlows()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8

    sparse-switch p2, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    :goto_0
    sub-int v2, v0, v4

    sub-int v3, v1, v5

    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    goto :goto_0

    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v5, p0, Landroid/graphics/Rect;->top:I

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private getDrawableStateForSelector()[I
    .locals 6

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->getDrawableState()[I

    move-result-object v4

    return-object v4

    :cond_0
    sget-object v4, Landroid/widget/AbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->onCreateDrawableState(I)[I

    move-result-object v3

    const/4 v0, -0x1

    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    move v0, v2

    :cond_1
    if-ltz v0, :cond_2

    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_2
    return-object v3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090171

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_1

    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    :cond_1
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/AbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    :cond_2
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v8, 0x1

    invoke-interface {v7, p0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v4

    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v7, v8, :cond_c

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_5

    if-lez v4, :cond_5

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, p0, Landroid/widget/AbsListView;->mBottom:I

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_d

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_e

    const/4 v1, 0x1

    :cond_5
    :goto_2
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_f

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_10

    const/4 v2, 0x1

    :cond_6
    :goto_4
    iget v7, p0, Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:F

    iget-object v8, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_11

    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_11

    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    :cond_7
    :goto_5
    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_14

    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, -0x1

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_13

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-eqz v7, :cond_13

    :goto_6
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    :cond_8
    :goto_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    if-gez v5, :cond_9

    if-nez v2, :cond_a

    :cond_9
    if-lez v5, :cond_16

    if-eqz v1, :cond_16

    :cond_a
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v7, :cond_b

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    :cond_b
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x1

    goto/16 :goto_2

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_11
    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_12

    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_12

    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_5

    :cond_12
    iget-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_5

    :cond_13
    iget v7, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_8

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_8

    goto/16 :goto_6

    :cond_14
    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, 0x1

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_15

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-eqz v7, :cond_15

    :goto_8
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_7

    :cond_15
    iget v7, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_8

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_16
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    :goto_9
    if-eqz v0, :cond_1a

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1a

    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1e

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    if-eqz v7, :cond_1d

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    :goto_a
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_17
    :goto_b
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_19

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_18

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_19

    :cond_18
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_19
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_1a
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    :cond_1b
    const/4 v0, 0x1

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    goto :goto_9

    :cond_1d
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto :goto_a

    :cond_1e
    iget v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_17

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    if-eqz v7, :cond_1f

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    :goto_c
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->semAutoHide(I)V

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_b

    :cond_1f
    iget-object v7, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto :goto_c

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInitAbsListView:Z

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setClickable(Z)V

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setScrollingCacheEnabled(Z)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mOverflingDistance:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Landroid/widget/AbsListView;->mDensityScale:F

    :cond_1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x111013a

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1110133

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1110083

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v2, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080ac7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_0
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mNavigationBarHeight:I

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080ac6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private initGoToTOP()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    iput v1, p0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mShowGTPAtFirstTime:Z

    iput v1, p0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private invalidateBottomGlow()V
    .locals 6

    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v0, v4, v5

    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v3, v4, v5

    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p0, v2, v4, v3, v0}, Landroid/widget/AbsListView;->invalidate(IIII)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    goto :goto_2
.end method

.method private invalidateTopGlow()V
    .locals 6

    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v3, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v2, v4, v5

    :goto_2
    iget-object v4, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v2, v4}, Landroid/widget/AbsListView;->invalidate(IIII)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v2

    goto :goto_2
.end method

.method private isItemClickable(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isOwnerThread()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 13

    const/16 v12, 0xa

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v7, 0x7

    if-eq v0, v7, :cond_0

    const/16 v7, 0x9

    if-ne v0, v7, :cond_3

    :cond_0
    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    :cond_1
    :goto_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    if-eqz v7, :cond_4

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_4

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_5

    :cond_2
    return-void

    :cond_3
    if-ne v0, v12, :cond_1

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsPenHovered:Z

    goto :goto_0

    :cond_4
    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    goto :goto_1

    :cond_5
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v7, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v7

    if-nez v7, :cond_7

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    if-eqz v7, :cond_7

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->setHovered(Z)V

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v3

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_8

    iput v11, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_9
    if-gez v2, :cond_c

    if-nez v3, :cond_a

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    :cond_a
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    :cond_b
    iput v11, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    return-void

    :cond_c
    iput v2, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v7, :cond_e

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v7, :cond_e

    iget v7, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    invoke-virtual {p0, v7, v1}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    iput-boolean v10, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :goto_2
    if-ne v0, v12, :cond_d

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    iput v11, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->postInvalidateOnAnimation()V

    :cond_d
    return-void

    :cond_e
    iget-object v7, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mHoveredOnEllipsizedText:Z

    goto :goto_2
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v5, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iget v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/AbsListView;->mLastY:I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_2
    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iput v3, p0, Landroid/widget/AbsListView;->mPointerCount:I

    return-void

    :pswitch_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_3

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iget v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/AbsListView;->mPointerCount:I

    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iget v4, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    iput v6, p0, Landroid/widget/AbsListView;->mDirection:I

    :goto_0
    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v4, :cond_3

    iget v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v6, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v0

    iget-object v4, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/AbsListView$FlingRunnable;->flywheelTouch()V

    :cond_3
    :goto_1
    if-ltz v0, :cond_4

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    :cond_4
    iput v2, p0, Landroid/widget/AbsListView;->mMotionX:I

    iput v3, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v0, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/AbsListView;->mLastY:I

    goto :goto_0

    :cond_5
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iput v6, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-nez v4, :cond_6

    new-instance v4, Landroid/widget/AbsListView$CheckForTap;

    invoke-direct {v4, p0, v7}, Landroid/widget/AbsListView$CheckForTap;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    :cond_6
    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->x:F

    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/widget/AbsListView$CheckForTap;->y:F

    iget-object v4, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    :cond_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v4, v5

    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_3

    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    int-to-float v5, v4

    iget v6, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    int-to-float v6, v6

    invoke-virtual {p0, v3, v5, v6}, Landroid/widget/AbsListView;->pointInView(FFF)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setPressed(Z)V

    if-eqz v0, :cond_4

    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mTmpPoint:[F

    aput v3, v1, v7

    int-to-float v5, v4

    aput v5, v1, v8

    invoke-virtual {p0, v1, v0}, Landroid/widget/AbsListView;->transformPointToViewLocal([FLandroid/view/View;)V

    aget v5, v1, v7

    aget v6, v1, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v5, v4, p2}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchUp(Landroid/view/MotionEvent;)V
    .locals 20

    const-string/jumbo v17, "AbsListView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onTouchUp() mTouchMode : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mActivePointerId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mPointerCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_a

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_f

    invoke-virtual {v4}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    new-instance v17, Landroid/widget/AbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$PerformClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    iput v13, v14, Landroid/widget/AbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_6

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_8
    new-instance v17, Landroid/widget/AbsListView$10;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/AbsListView$10;-><init>(Landroid/widget/AbsListView;Landroid/view/View;Landroid/widget/AbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_3
    return-void

    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_2

    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mDataChanged:Z

    move/from16 v17, v0

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual {v14}, Landroid/widget/AbsListView$PerformClick;->run()V

    :cond_f
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v6, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_10

    if-lt v9, v7, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v17

    sub-int v17, v17, v6

    move/from16 v0, v17

    if-gt v12, v0, :cond_10

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v11, v0

    const-string/jumbo v17, "AbsListView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onTouchUp() TOUCH_MODE_SCROLL initialVelocity : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v7, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_14

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v6

    move/from16 v0, v17

    if-eq v12, v0, :cond_14

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_13

    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_13
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    :cond_14
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    :cond_16
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    new-instance v17, Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    const-string/jumbo v17, "AbsListView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "onTouchUp() TOUCH_MODE_OVERSCROLL initialVelocity : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/AbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private performStylusButtonPressAction(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_0

    iget v4, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, -0x1

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    const/4 v4, 0x1

    return v4

    :cond_0
    return v6
.end method

.method private positionPopup()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getLocationOnScreen([I)V

    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 10

    const/4 v9, 0x0

    iget v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq p1, v5, :cond_8

    const/4 v2, 0x1

    :goto_0
    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    iput p1, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v5, p2, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v5, :cond_1

    move-object v5, p2

    check-cast v5, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v5, v4}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    :cond_1
    instance-of v5, p0, Landroid/widget/SemExpandableListView;

    if-eqz v5, :cond_2

    instance-of v5, p2, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_2

    move-object v5, p2

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v5

    if-lez v5, :cond_2

    move-object v5, p2

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    if-eqz v5, :cond_2

    check-cast v0, Landroid/widget/AbsListView$SelectionBoundsAdjuster;

    invoke-interface {v0, v4}, Landroid/widget/AbsListView$SelectionBoundsAdjuster;->adjustListItemSelectionBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v7, p2, Landroid/view/View;->mTwExtraPaddingBottomForPreference:I

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    if-eq v5, v1, :cond_3

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsChildViewEnabled:Z

    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    invoke-virtual {v3, v9, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v5, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v9}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_6
    if-eqz p3, :cond_7

    invoke-virtual {v3, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_7
    return-void

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    new-instance v0, Landroid/widget/AbsListView$11;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$11;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v33, p2, v3

    const/16 v35, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, v3, p2

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int v33, v33, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollConsumed:[I

    const/4 v4, 0x1

    aget v34, v3, v4

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_1
    move/from16 v20, v33

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    sub-int v3, p2, v3

    add-int v21, v3, v34

    :goto_1
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    const-string/jumbo v3, "AbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    if-eqz v32, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v23, v3, v4

    :goto_2
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v26

    :cond_4
    const/16 v18, 0x0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v18

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_7

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v27

    if-eqz v18, :cond_6

    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    sub-int v5, v7, v21

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    rsub-int/lit8 v22, v3, 0x0

    if-eqz p3, :cond_6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_6
    :goto_3
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    :cond_7
    add-int v3, p2, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    :cond_8
    :goto_4
    return-void

    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    :cond_a
    move/from16 v21, v20

    goto/16 :goto_1

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mScrollY:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    if-eqz v31, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    :cond_e
    if-nez v19, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mDirection:I

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_f
    if-lez v21, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    goto/16 :goto_3

    :cond_11
    if-gez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_12
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-eq v0, v3, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mScrollY:I

    move/from16 v30, v0

    sub-int v29, v30, v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, p2

    if-le v0, v3, :cond_1b

    const/16 v28, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mDirection:I

    if-nez v3, :cond_14

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    :cond_14
    move/from16 v0, v21

    neg-int v10, v0

    if-gez v29, :cond_1c

    if-ltz v30, :cond_1c

    :cond_15
    move/from16 v0, v30

    neg-int v10, v0

    add-int v21, v21, v10

    :goto_6
    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/AbsListView;->mScrollY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mOverscrollDistance:I

    move/from16 v16, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Landroid/widget/AbsListView;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v31

    if-eqz v31, :cond_16

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_18

    :cond_16
    if-lez v33, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_17
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    :cond_18
    :goto_7
    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v3, :cond_19

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->findClosestMotionRow(I)I

    move-result v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionCorrection:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    add-int v3, p2, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mMotionY:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionPosition:I

    :cond_1a
    add-int/lit8 v3, p2, 0x0

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mLastY:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mDirection:I

    goto/16 :goto_4

    :cond_1b
    const/16 v28, -0x1

    goto/16 :goto_5

    :cond_1c
    if-lez v29, :cond_1d

    if-lez v30, :cond_15

    :cond_1d
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_1e
    if-gez v33, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    int-to-float v4, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    goto/16 :goto_7

    :cond_20
    const/4 v3, 0x0

    goto :goto_8
.end method

.method private semGetEnableVibrationAtLongPress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private semIsSupportGotoTop()Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsTalkBackIsRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private semIsTalkBackIsRunning()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private semMultiSelection(IIIIZ)V
    .locals 10

    iget v7, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    sub-int v7, p1, v7

    iput v7, p0, Landroid/widget/AbsListView;->mDeltamoveX:I

    iget v7, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    sub-int v7, p2, v7

    iput v7, p0, Landroid/widget/AbsListView;->mDeltamoveY:I

    iget v7, p0, Landroid/widget/AbsListView;->mDeltamoveX:I

    iget v8, p0, Landroid/widget/AbsListView;->mDeltamoveX:I

    mul-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mDeltamoveY:I

    iget v9, p0, Landroid/widget/AbsListView;->mDeltamoveY:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    iget v9, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    mul-int/2addr v8, v9

    if-le v7, v8, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    :cond_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    if-eqz v7, :cond_17

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    if-eqz v7, :cond_4

    iput p1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput p2, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_2

    iget v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    if-eqz v7, :cond_1

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    :cond_1
    iget v7, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    if-eqz v7, :cond_2

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    :cond_2
    :goto_0
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v7, :cond_3

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    if-nez v7, :cond_5

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-nez v7, :cond_5

    iput p1, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput p2, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    :cond_5
    iput p1, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput p2, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-gez v7, :cond_a

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    :cond_6
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    if-ge v7, v8, :cond_b

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    :goto_2
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-ge v7, v8, :cond_c

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    if-le v7, v8, :cond_d

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    :goto_4
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-le v7, v8, :cond_e

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    :goto_5
    iput v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_16

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_8

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v2, :cond_f

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-le v7, v4, :cond_f

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-ge v7, v3, :cond_f

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-ge v7, v1, :cond_f

    :cond_7
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v7, :cond_8

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v8

    invoke-direct {p0, v0, v7, v8, v9}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_9
    iget v7, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    goto/16 :goto_0

    :cond_a
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-le v7, p4, :cond_6

    iput p4, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto/16 :goto_1

    :cond_b
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    goto/16 :goto_2

    :cond_c
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto/16 :goto_3

    :cond_d
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    goto/16 :goto_4

    :cond_e
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    goto/16 :goto_5

    :cond_f
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-le v7, v2, :cond_14

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-ge v7, v3, :cond_14

    :cond_10
    :goto_8
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-lt v7, v4, :cond_11

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-le v7, v1, :cond_7

    :cond_11
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-gt v7, v4, :cond_12

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-gt v7, v4, :cond_7

    :cond_12
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-ge v7, v1, :cond_13

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    if-ge v7, v1, :cond_7

    :cond_13
    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-interface {v7, v8}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/Integer;

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v7, :cond_8

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    const/4 v8, -0x1

    invoke-direct {p0, v7, v8}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v8

    invoke-direct {p0, v0, v7, v8, v9}, Landroid/widget/AbsListView;->semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z

    goto/16 :goto_7

    :cond_14
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-ge v7, v2, :cond_15

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-gt v7, v2, :cond_10

    :cond_15
    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-ge v7, v3, :cond_13

    iget v7, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    if-le v7, v3, :cond_13

    goto :goto_8

    :cond_16
    const/4 p5, 0x1

    :cond_17
    if-eqz p5, :cond_20

    iget v7, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    add-int/2addr v7, p3

    if-gt p2, v7, :cond_1b

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_18

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_18

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v8, 0x1

    invoke-interface {v7, p0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_18
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v7, 0x2

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_19
    :goto_9
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v7, :cond_1a

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_1a
    :goto_a
    iput-boolean p5, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    return-void

    :cond_1b
    iget v7, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    sub-int v7, p4, v7

    if-lt p2, v7, :cond_1d

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v7, :cond_1c

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_1c

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v8, 0x1

    invoke-interface {v7, p0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1c
    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_9

    :cond_1d
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v7, :cond_1e

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_1e

    iget-object v7, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    const/4 v8, 0x0

    invoke-interface {v7, p0, v8}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1e
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_1f
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto :goto_9

    :cond_20
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mPreviousTextViewScroll:Z

    if-eqz v7, :cond_1a

    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    goto :goto_a
.end method

.method private semMultiSelectionEnd(III)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-nez v0, :cond_3

    const/16 v0, 0xd4

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, v4}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    iput-wide v2, p0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-direct {v0, p0, v5}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForDoublePenClick;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p2, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    iput p3, v0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    iput-boolean v7, p0, Landroid/widget/AbsListView;->mIsfirstMoveEvent:Z

    iput v6, p0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragStartX:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iput-object v5, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v4, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsCloseChildSetted:Z

    iput v6, p0, Landroid/widget/AbsListView;->mOldHoverScrollDirection:I

    iput-object v5, p0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    iput v6, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    iput-object v5, p0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    iput v6, p0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    iput v4, p0, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_5
    iput-boolean v4, p0, Landroid/widget/AbsListView;->mIsMovedbeforeUP:Z

    return-void

    :cond_6
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v4, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemSize:I

    goto :goto_0
.end method

.method private semPerformItemCheck(Landroid/view/View;IJ)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v6, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz v6, :cond_6

    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :goto_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    :cond_6
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_1
.end method

.method private semPlayGotoToFadeIn()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/16 v2, 0xff

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private semPlayGotoToFadeOut()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private semSetFastScrollEnabledUiThread(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->updateLayout()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/SemFastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setEnabled(Z)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    goto :goto_0
.end method

.method private semToNotifyMultiSelectionEnded(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    return-void
.end method

.method private semToNotifyMultiSelectionState(Landroid/view/View;IJ)Z
    .locals 9

    const/4 v0, 0x0

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    return v0
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setAlwaysShow(Z)V

    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->updateLayout()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Landroid/widget/FastScroller;-><init>(Landroid/widget/AbsListView;I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setEnabled(Z)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    iput-boolean v2, v0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_0

    :cond_3
    move-object v0, v1

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    goto :goto_0
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FFZ)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v7, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v7

    :cond_1
    if-nez v7, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6, v3, v4, v5}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p4, :cond_3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v7

    :cond_2
    :goto_0
    return v7

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v7

    goto :goto_0
.end method

.method private showContextMenuInternal(FFZ)Z
    .locals 7

    const/4 v6, 0x0

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p3, :cond_0

    invoke-super {p0, p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v4

    return v4

    :cond_0
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    :cond_1
    iput-object v6, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    :cond_2
    if-eqz p3, :cond_3

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->showContextMenu(FF)Z

    move-result v4

    return v4

    :cond_3
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v4

    return v4
.end method

.method private showPointerIcon(Landroid/view/MotionEvent;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/InputDevice;->setPointerType(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "AbsListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to change PointerIcon to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showPopup()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget v7, p0, Landroid/widget/AbsListView;->mMotionY:I

    sub-int v1, p2, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v7, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_7

    invoke-direct {p0}, Landroid/widget/AbsListView;->createScrollingCache()V

    if-eqz v5, :cond_3

    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v9, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    :goto_1
    iget-object v7, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v9}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget v7, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget v8, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    iget v7, p0, Landroid/widget/AbsListView;->mPointerCount:I

    if-le v7, v10, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    return v10

    :cond_7
    return v9
.end method

.method private updateLongPressMultiSelection(IIZ)V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragStartY:I

    invoke-super/range {p0 .. p2}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionStarted(II)V

    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    invoke-virtual/range {p0 .. p2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByTop:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByTop:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildTop:I

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemCloseChildPositionByBottom:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemCloseChildByBottom:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDistanceFromCloseChildBottom:I

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    :cond_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsFirstMultiSelectionMove:Z

    :cond_3
    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v13, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    sub-int v12, v21, v22

    :goto_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragEndY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    if-gez v21, :cond_9

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragEndY:I

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v21, v0

    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    :goto_6
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    :goto_7
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    const/16 v16, 0x0

    :goto_9
    move/from16 v0, v16

    if-ge v0, v14, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v21

    if-nez v21, :cond_6

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v19

    if-gt v0, v9, :cond_5

    if-gt v9, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v21

    if-eqz v21, :cond_10

    const/16 v18, 0x1

    :goto_a
    const/16 v17, 0x1

    :cond_5
    if-eqz v17, :cond_12

    add-int/lit8 v21, v8, 0x1

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_6

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-gt v0, v15, :cond_11

    const/16 v18, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-super {v0, v6, v1, v2, v3}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    :cond_6
    :goto_c
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v12

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v0, v12, :cond_4

    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->semPointToNearPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndX:I

    move/from16 v21, v0

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragEndY:I

    move/from16 v21, v0

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartX:I

    move/from16 v21, v0

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragStartY:I

    move/from16 v21, v0

    goto/16 :goto_8

    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_a

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    goto/16 :goto_b

    :cond_12
    add-int/lit8 v21, v8, 0x1

    add-int/lit8 v22, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-interface/range {v21 .. v22}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->semPerformItemCheck(Landroid/view/View;IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-super {v0, v6, v1, v2, v3}, Landroid/widget/AdapterView;->semNotifyLongPressMultiSelectionState(Landroid/view/View;IJ)Z

    goto/16 :goto_c

    :cond_13
    if-eqz p3, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, p2

    move/from16 v1, v21

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-nez v21, :cond_14

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    :cond_15
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v21, v0

    sub-int v21, v12, v21

    move/from16 v0, p2

    move/from16 v1, v21

    if-lt v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-nez v21, :cond_17

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-nez v21, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_d

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v21, v0

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_19
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v21

    if-eqz v21, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_1a
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_d
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v4, v2, v3

    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    check-cast v0, Landroid/widget/Checkable;

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addExtraPaddingInBottomHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    return-void
.end method

.method public addExtraPaddingInTopHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public canScrollList(I)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    if-lez p1, :cond_3

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v4, v1, v0

    iget v8, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v8, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v3, v8, :cond_2

    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    if-gtz v1, :cond_4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v2, v8, :cond_5

    :cond_4
    :goto_1
    return v6

    :cond_5
    move v6, v7

    goto :goto_1
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/AbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v6, :cond_2

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    :cond_1
    return v2

    :cond_2
    const/4 v6, 0x1

    return v6

    :cond_3
    return v7
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    const/4 v10, 0x0

    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-ltz v2, :cond_3

    if-lez v0, :cond_3

    iget-boolean v7, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_3

    mul-int/lit8 v7, v2, 0x64

    mul-int/lit8 v8, v5, 0x64

    div-int/2addr v8, v3

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iget v9, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v9, v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v2, :cond_1

    const/4 v4, 0x0

    :goto_0
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    return v7

    :cond_1
    add-int v7, v2, v0

    if-ne v7, v1, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    goto :goto_0

    :cond_3
    return v10
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AbsListView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    move/from16 v16, v17

    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    :cond_0
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;
    .locals 1

    new-instance v0, Landroid/widget/AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$PositionScroller;-><init>(Landroid/widget/AbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    :cond_1
    const/4 v13, 0x1

    if-ne v2, v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_2

    const/high16 v13, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v15, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_3
    const/4 v13, 0x1

    return v13

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v9

    if-eqz v7, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v13, v14, :cond_d

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_6

    if-lez v9, :cond_6

    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_e

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_f

    const/4 v3, 0x1

    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v13, :cond_10

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_7

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    if-ge v13, v14, :cond_11

    const/4 v4, 0x1

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-le v12, v13, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-ge v12, v13, :cond_12

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_b

    :cond_a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_b
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/4 v13, 0x2

    if-ne v2, v13, :cond_c

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_c
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_11
    const/4 v4, 0x0

    goto :goto_3

    :cond_12
    if-lez v11, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_8

    if-nez v4, :cond_16

    :goto_4
    xor-int/lit8 v13, v3, 0x1

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v13, :cond_13

    new-instance v13, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    :cond_14
    packed-switch v2, :pswitch_data_0

    :cond_15
    :goto_5
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    :cond_16
    const/4 v3, 0x1

    goto :goto_4

    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-ltz v12, :cond_17

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_15

    if-gt v12, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_18

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    :cond_18
    if-ltz v12, :cond_19

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    if-gt v12, v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v12, v13, :cond_15

    if-gt v12, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_1a

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_1a
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1b

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsDragScrolled:Z

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget v5, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v6, p0, Landroid/widget/AbsListView;->mScrollY:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v9, v6

    iget v10, p0, Landroid/widget/AbsListView;->mRight:I

    add-int/2addr v10, v5

    iget v11, p0, Landroid/widget/AbsListView;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mBottom:I

    add-int/2addr v11, v6

    iget v12, p0, Landroid/widget/AbsListView;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    :cond_0
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    :cond_3
    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-nez v8, :cond_8

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    if-nez v8, :cond_5

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    if-nez v8, :cond_5

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    iget v8, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    if-gt v8, v3, :cond_7

    iget v8, p0, Landroid/widget/AbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v7

    :cond_6
    iget v8, p0, Landroid/widget/AbsListView;->mSemDistanceFromTrackedChildTop:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    :cond_7
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    :goto_1
    iput v8, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    if-le v8, v9, :cond_a

    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    :goto_2
    iput v8, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragBlockLeft:I

    iget v10, p0, Landroid/widget/AbsListView;->mSemDragBlockTop:I

    iget v11, p0, Landroid/widget/AbsListView;->mSemDragBlockRight:I

    iget v12, p0, Landroid/widget/AbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/AbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/widget/AbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void

    :cond_9
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    goto :goto_1

    :cond_a
    iget v8, p0, Landroid/widget/AbsListView;->mSemDragStartY:I

    goto :goto_2
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenPressed:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/AbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextViewHovered()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    move/from16 v19, v0

    if-nez v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNewTextViewHoverState:Z

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mOldTextViewHoverState:Z

    const/16 v19, 0x9

    move/from16 v0, v19

    if-ne v4, v0, :cond_d

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v16

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isHoveringUIEnabled()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_4

    :cond_3
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "pen_hovering"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    const/4 v13, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "car_mode_on"

    const/16 v21, 0x0

    const/16 v22, -0x3

    invoke-static/range {v19 .. v22}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    const/4 v12, 0x1

    :goto_2
    if-eqz v13, :cond_5

    if-eqz v12, :cond_6

    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    :cond_6
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_8

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    :cond_7
    const/16 v19, 0x4e35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v19, 0x3

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mNeedsHoverScroll:Z

    move/from16 v19, v0

    if-nez v19, :cond_11

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    :cond_a
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_d
    const/16 v19, 0x7

    move/from16 v0, v19

    if-ne v4, v0, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    :cond_e
    const/16 v19, 0x4e35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_3

    :cond_10
    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_3

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    if-nez v19, :cond_12

    new-instance v19, Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    if-lez v19, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    if-gtz v19, :cond_14

    :cond_13
    const/high16 v19, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    const/high16 v19, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v19, v0

    add-int v19, v19, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_20

    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_15

    if-lez v11, :cond_15

    add-int/lit8 v19, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_21

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_22

    const/4 v5, 0x1

    :cond_15
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v19, v0

    if-lez v19, :cond_23

    const/4 v6, 0x1

    :goto_7
    if-nez v6, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v19

    if-lez v19, :cond_16

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_24

    const/4 v6, 0x1

    :cond_16
    :goto_8
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_25

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2e

    :cond_1a
    :goto_a
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_1c

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_1d

    :cond_1c
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_1d
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    const/16 v19, 0xa

    move/from16 v0, v19

    if-ne v4, v0, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move/from16 v19, v0

    if-eqz v19, :cond_1e

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1e
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    :cond_1f
    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/AbsListView;->mExtraPaddingInTopHoverArea:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mExtraPaddingInBottomHoverArea:I

    move/from16 v20, v0

    sub-int v9, v19, v20

    goto/16 :goto_4

    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_21
    const/4 v5, 0x1

    goto/16 :goto_6

    :cond_22
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_23
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_24
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_9

    :cond_26
    if-lez v17, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_17

    if-nez v6, :cond_27

    xor-int/lit8 v19, v5, 0x1

    if-nez v19, :cond_17

    :cond_27
    move/from16 v0, v18

    if-lt v0, v10, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_28

    xor-int/lit8 v19, v6, 0x1

    if-eqz v19, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_17

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_29

    move/from16 v0, v18

    if-gt v0, v9, :cond_29

    xor-int/lit8 v19, v5, 0x1

    if-eqz v19, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-nez v19, :cond_17

    :cond_29
    if-eqz v14, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    :cond_2a
    xor-int/lit8 v19, v14, 0x1

    if-nez v19, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isLockScreenMode()Z

    move-result v19

    if-nez v19, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v19, v0

    if-eqz v19, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    if-nez v19, :cond_17

    :cond_2b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_2c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    :cond_2c
    packed-switch v4, :pswitch_data_0

    :cond_2d
    :goto_b
    :pswitch_0
    const/16 v19, 0x1

    return v19

    :cond_2e
    if-lez v17, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getRight()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_1b

    goto/16 :goto_a

    :pswitch_1
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v0, v18

    if-lt v0, v10, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/16 v19, 0x4e2b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto :goto_b

    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2d

    move/from16 v0, v18

    if-gt v0, v9, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const/16 v19, 0x4e2f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    move/from16 v19, v0

    if-nez v19, :cond_30

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    :cond_30
    move/from16 v0, v18

    if-lt v0, v10, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    move/from16 v19, v0

    add-int v19, v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_32

    :cond_31
    const/16 v19, 0x4e2b

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_32
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    move/from16 v19, v0

    sub-int v19, v9, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_36

    move/from16 v0, v18

    if-gt v0, v9, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-nez v19, :cond_2d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_35

    :cond_34
    const/16 v19, 0x4e2f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    :cond_35
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_37
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverScrolled:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_b

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->hasMessages(I)Z

    move-result v19

    if-eqz v19, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AbsListView$HoverScrollHandler;->removeMessages(I)V

    :cond_38
    const/16 v19, 0x4e21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView;->showPointerIcon(Landroid/view/MotionEvent;I)V

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/AbsListView;->mHoverScrollStartTime:J

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mIsSendHoverScrollState:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move/from16 v19, v0

    if-eqz v19, :cond_39

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mHoverScrollStateForListener:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    if-eqz v19, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_39
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    return v19

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v5

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/AbsListView$HoverScrollHandler;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;

    :cond_1
    invoke-static {}, Landroid/widget/TextView;->semIsTextSelectionProgressing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    const/16 v0, 0xd3

    if-ne v6, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    iput v1, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    iput v2, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "car_mode_on"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v0, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_7

    const/4 v8, 0x1

    :goto_0
    if-eqz v8, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    if-gtz v0, :cond_5

    :cond_4
    const/high16 v0, 0x41c80000    # 25.0f

    iget-object v9, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mHoverTopAreaHeight:I

    const/high16 v0, 0x41c80000    # 25.0f

    iget-object v9, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10, v0, v9}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v0, v9

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView;->mHoverBottomAreaHeight:I

    :cond_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v0

    iget-object v9, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v0, v9

    :goto_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    if-eqz v0, :cond_9

    if-lt v2, v3, :cond_6

    if-le v2, v4, :cond_9

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v9, 0xd4

    if-eq v0, v9, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    goto :goto_1

    :cond_9
    sparse-switch v6, :sswitch_data_0

    :cond_a
    :goto_2
    :sswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    :cond_b
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_c

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {v0, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const v9, 0x10100a7

    const v10, 0x101009e

    const v11, 0x10100a1

    filled-new-array {v9, v10, v11}, [I

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v0, 0x1

    return v0

    :cond_c
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v9, 0x3

    if-ne v0, v9, :cond_a

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    iput v1, p0, Landroid/widget/AbsListView;->mTouchdownX:I

    iput v2, p0, Landroid/widget/AbsListView;->mTouchdownY:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v9, "car_mode_on"

    const/4 v10, 0x0

    const/4 v11, -0x3

    invoke-static {v0, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_e

    const/4 v8, 0x1

    :goto_3
    if-eqz v8, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsNeedPenSelection:Z

    :cond_d
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v8, 0x0

    goto :goto_3

    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    const/4 v0, 0x1

    return v0

    :cond_f
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/AbsListView;->updateLongPressMultiSelection(IIZ)V

    :cond_10
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_a

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_11
    const/4 v0, 0x1

    return v0

    :sswitch_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->semMultiSelection(IIIIZ)V

    goto/16 :goto_2

    :sswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_12

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    :cond_12
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_13
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/widget/AbsListView;->mSemDragEndX:I

    iget v9, p0, Landroid/widget/AbsListView;->mSemDragEndY:I

    invoke-direct {p0, v0, v9}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    :cond_14
    :sswitch_5
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsTextSelectionStarted:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsFirstPenClick:Z

    :cond_15
    invoke-direct {p0, v6, v1, v2}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlMultiSelection:Z

    const/4 v0, 0x1

    return v0

    :cond_16
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    if-eqz v0, :cond_17

    invoke-direct {p0, v1, v2}, Landroid/widget/AbsListView;->endLongPressMultiSelection(II)V

    :cond_17
    :sswitch_6
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v9, 0x2

    if-ne v0, v9, :cond_1b

    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v9, " GTP pressed and up"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v9, " can scroll top "

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_18

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-ge v7, v0, :cond_18

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    new-instance v0, Landroid/widget/AbsListView$9;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$9;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x43fa0000    # 500.0f

    div-float v9, v10, v9

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/16 v11, 0x96

    invoke-virtual {v0, v9, v10, v11}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    :goto_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1f4

    invoke-virtual {p0, v9, v10, v0, v11}, Landroid/widget/AbsListView;->invalidate(IIII)V

    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semAutoHide(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    sget-object v9, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->playSoundEffect(I)V

    const/4 v0, 0x1

    return v0

    :cond_1a
    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x43fa0000    # 500.0f

    div-float v9, v10, v9

    int-to-float v10, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v0, v9, v10}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_4

    :cond_1b
    invoke-direct {p0, v6, v1, v2}, Landroid/widget/AbsListView;->semMultiSelectionEnd(III)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_5
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_6
        0xd5 -> :sswitch_3
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v10, :cond_4

    iget v5, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    sub-int v8, v10, v11

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v3, v10, v11

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    add-int v10, v6, v8

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {p1, v6, v7, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    add-int v2, v10, v7

    int-to-float v10, v6

    int-to-float v11, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v10, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateTopGlow()V

    :cond_0
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v10}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    add-int v10, v7, v3

    iget-object v11, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v11}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int v11, v6, v8

    add-int v12, v7, v3

    invoke-virtual {p1, v6, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-int v10, v8

    add-int v1, v10, v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    iget v11, p0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v11, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-eqz v0, :cond_2

    iget v9, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    :cond_2
    sub-int v2, v10, v9

    int-to-float v9, v1

    int-to-float v10, v2

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v9, 0x43340000    # 180.0f

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, v8, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v9, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v9, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->invalidateBottomGlow()V

    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    iget-boolean v9, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v9, :cond_5

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->drawGoToTop(Landroid/graphics/Canvas;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v1, "drawing:cacheColorHint"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCacheColorHint()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v1, "list:fastScrollEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v1, "list:scrollingCacheEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isScrollingCacheEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v1, "list:smoothScrollbarEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSmoothScrollbarEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v1, "list:stackFromBottom"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isStackFromBottom()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v1, "list:textFilterEnabled"

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "selectedView"

    invoke-virtual {p1, v1}, Landroid/view/ViewHierarchyEncoder;->addPropertyKey(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Landroid/widget/AdapterView;->finalize()V

    return-void
.end method

.method findClosestMotionRow(I)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public fling(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/AbsListView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_1
    return-object p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    invoke-super {p0}, Landroid/widget/AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    :cond_1
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    iget v5, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    sub-int v5, v4, v5

    if-le v0, v5, :cond_2

    sub-int v5, v0, v4

    iget v6, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    :cond_2
    return v2
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    const/4 v5, 0x0

    iget v4, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    :cond_0
    new-array v4, v5, [J

    return-object v4

    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    new-array v3, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Landroid/widget/AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getHeightForPosition(I)I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    sub-int v3, p1, v1

    if-ltz v3, :cond_0

    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v5

    return v5

    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/AbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mWidthMeasureSpec:I

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    return v2
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChoiceMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    const/4 v1, 0x1

    return v1

    :pswitch_2
    const/4 v1, 0x2

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v4, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    :cond_2
    return v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return v0
.end method

.method public getVerticalScrollbarWidth()I
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v1}, Landroid/widget/SemFastScroller;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->getVerticalScrollbarWidth()I

    move-result v0

    return v0
.end method

.method handleBoundsChange()V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v4, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_4

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ge v4, v5, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v4, v5, :cond_2

    goto :goto_1

    :cond_4
    return-void
.end method

.method protected handleDataChanged()V
    .locals 15

    const/4 v14, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v4, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iget v11, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget v10, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v10, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    :cond_0
    iget v10, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->confirmCheckedPositionsById()V

    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    if-lez v1, :cond_e

    iget-boolean v10, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v10, :cond_7

    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_2
    iget v10, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_6

    iget-boolean v10, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    iput-boolean v12, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v11

    sub-int v5, v10, v11

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    :goto_0
    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v4, :cond_5

    if-gt v2, v5, :cond_5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    return-void

    :cond_4
    move v2, v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    :cond_6
    iget v10, p0, Landroid/widget/AbsListView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    if-lt v6, v1, :cond_8

    add-int/lit8 v6, v1, -0x1

    :cond_8
    if-gez v6, :cond_9

    const/4 v6, 0x0

    :cond_9
    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_c

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    return-void

    :cond_a
    invoke-virtual {p0}, Landroid/widget/AbsListView;->findSyncPosition()I

    move-result v6

    if-ltz v6, :cond_7

    invoke-virtual {p0, v6, v9}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ne v7, v6, :cond_7

    iput v6, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget-wide v8, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    :goto_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_b
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    goto :goto_1

    :pswitch_1
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    return-void

    :cond_c
    invoke-virtual {p0, v6, v12}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_e

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_d
    iget v10, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_e

    return-void

    :cond_e
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_f

    :goto_2
    iput v8, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iput v14, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    iput v14, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AbsListView;->mNextSelectedRowId:J

    iput-boolean v12, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v13, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iput v14, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->checkSelectionChanged()V

    return-void

    :cond_f
    move v8, v9

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleScrollBarDragging(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    :cond_2
    return-void
.end method

.method protected internalSetPadding(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->internalSetPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    :cond_0
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FastScroller;->onScroll(III)V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    iget v1, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SemFastScroller;->onScroll(III)V

    goto :goto_0
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0}, Landroid/widget/FastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsInMouseStylusMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->isInTouchMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isItemChecked(I)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public isLockScreenMode()Z
    .locals 7

    iget-object v5, p0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    const-string/jumbo v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez v2, :cond_0

    xor-int/lit8 v1, v0, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method protected isSemUsingAdapterView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method protected isVerticalScrollBarHidden()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFocused()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_2
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    iget v8, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v9, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v8

    if-eqz v8, :cond_3

    return-void

    :cond_3
    invoke-virtual {v5, v11}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    invoke-virtual {p0, v11}, Landroid/widget/AbsListView;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v8, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v8, :cond_5

    if-eqz v2, :cond_7

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_5
    :goto_0
    iget-object v8, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    if-eqz v2, :cond_6

    iget-boolean v8, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-nez v8, :cond_8

    new-instance v8, Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-direct {v8, p0, v10}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$CheckForKeyLongPress;)V

    iput-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    :goto_1
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {v8}, Landroid/widget/AbsListView$CheckForKeyLongPress;->rememberWindowAttachCount()V

    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void

    :cond_7
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_8
    iget-object v8, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 12

    const-wide/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string/jumbo v6, "obtainView"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    aput-boolean v7, p2, v7

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iget v6, v1, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    if-ne v6, v5, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eq v4, v3, :cond_0

    invoke-direct {p0, v4, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v4, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_0
    aput-boolean v8, p2, v7

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    return-object v3

    :cond_1
    const/4 v2, 0x0

    const/4 v6, -0x2

    if-eq v5, v6, :cond_2

    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, p1}, Landroid/widget/AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v2

    :cond_2
    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v2, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v2, :cond_3

    if-eq v0, v2, :cond_4

    iget-object v6, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v6, v2, p1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    const-string/jumbo v6, "AbsListView"

    const-string/jumbo v7, " try again to check child on obtainview"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    const-string/jumbo v6, "AbsListView"

    const-string/jumbo v7, " child is null again"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mAdapter ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " getChildCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "AbsListView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " mAdapter.getCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v6

    if-eqz v6, :cond_3

    aput-boolean v8, p2, v7

    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto/16 :goto_0

    :cond_5
    iget v6, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eqz v6, :cond_6

    iget v6, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0, v8}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_7
    invoke-direct {p0, v0, p1}, Landroid/widget/AbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    if-nez v6, :cond_8

    new-instance v6, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v6, p0}, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/AbsListView;)V

    iput-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v6

    if-nez v6, :cond_9

    iget-object v6, p0, Landroid/widget/AbsListView;->mAccessibilityDelegate:Landroid/widget/AbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_9
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/AbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mPendingCheckForDoublePenClick:Landroid/widget/AbsListView$CheckForDoublePenClick;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Landroid/widget/AbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$InputConnectionWrapper;-><init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mPublicInputConnection:Landroid/widget/AbsListView$InputConnectionWrapper;

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v3, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView;->mPerformClick:Landroid/widget/AbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    iget v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eq v1, v4, :cond_9

    iput v4, p0, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_9
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    return-void

    :sswitch_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    iget v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    iput v0, p0, Landroid/widget/AbsListView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mItemCount:I

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v9, 0x3ecccccd    # 0.4f

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :pswitch_1
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    :goto_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    if-eqz v5, :cond_1

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    :cond_1
    iget v5, p0, Landroid/widget/AbsListView;->mVerticalScrollFactor:F

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v3, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v5

    if-nez v5, :cond_4

    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    return v6

    :cond_2
    const/high16 v5, 0x400000

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x1a

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v4

    if-eqz v4, :cond_8

    if-ne v4, v6, :cond_9

    invoke-direct {p0}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v5

    xor-int/lit8 v2, v5, 0x1

    :goto_2
    if-eqz v2, :cond_7

    cmpl-float v5, v1, v10

    if-lez v5, :cond_b

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v9, v6, v8}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    :goto_3
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_5
    :goto_4
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_7
    iput-boolean v8, p0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto :goto_3

    :cond_b
    cmpg-float v5, v1, v10

    if-gez v5, :cond_5

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsDeviceDefault:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {v5, v9, v6, v8}, Landroid/widget/EdgeEffect;->onPullCallOnRelease(FFI)V

    :goto_5
    invoke-virtual {p0}, Landroid/widget/AbsListView;->semShowGoToTOP()V

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_4

    :cond_c
    iget-object v5, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    const/16 v5, 0x20

    if-eq v0, v5, :cond_d

    if-ne v0, v7, :cond_0

    :cond_d
    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-eqz v5, :cond_e

    iget v5, p0, Landroid/widget/AbsListView;->mTouchMode:I

    if-ne v5, v6, :cond_0

    :cond_e
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mIsDexMode:Z

    if-eqz v5, :cond_f

    invoke-static {}, Landroid/view/ViewRootImpl;->isDesktopmode()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_f
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->performStylusButtonPressAction(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v0, v1, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-ne p2, v2, :cond_6

    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_SELECTION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->isItemClickable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_5
    return-void

    :cond_6
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SELECT:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_UP:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_DOWN:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x4

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget-boolean v7, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    :cond_1
    return v8

    :cond_2
    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/FastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v9

    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v7, p1}, Landroid/widget/SemFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v9

    :cond_4
    packed-switch v0, :pswitch_data_0

    :cond_5
    :goto_0
    :pswitch_0
    return v8

    :pswitch_1
    iget v3, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v7, 0x6

    if-eq v3, v7, :cond_6

    const/4 v7, 0x5

    if-ne v3, v7, :cond_7

    :cond_6
    iput v8, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    return v9

    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->findMotionRow(I)I

    move-result v1

    if-eq v3, v12, :cond_8

    if-ltz v1, :cond_8

    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    iput v5, p0, Landroid/widget/AbsListView;->mMotionX:I

    iput v6, p0, Landroid/widget/AbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iput v8, p0, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    :cond_8
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/AbsListView;->mLastY:I

    invoke-direct {p0}, Landroid/widget/AbsListView;->initOrResetVelocityTracker()V

    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v8, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    if-ne v3, v12, :cond_5

    return v9

    :pswitch_2
    iget v7, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v11, :cond_9

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    iget-object v7, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v7, v6, v10}, Landroid/widget/AbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v9

    :pswitch_4
    iput v11, p0, Landroid/widget/AbsListView;->mTouchMode:I

    iput v11, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->stopNestedScroll()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_1
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return v7

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->setPressed(Z)V

    return v7

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :sswitch_0
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    if-nez v3, :cond_6

    iput p1, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    iget v3, p0, Landroid/widget/AbsListView;->mSemCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    :cond_5
    :goto_2
    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    goto :goto_0

    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget v3, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AbsListView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/AbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    goto :goto_2

    :sswitch_1
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :sswitch_2
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    iput v6, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    iput v6, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto :goto_0

    :sswitch_3
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x1f -> :sswitch_3
        0x3b -> :sswitch_2
        0x3c -> :sswitch_2
        0x71 -> :sswitch_1
        0x72 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/AbsListView$RecycleBin;->markChildrenDirty()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    if-eqz p1, :cond_2

    const-string/jumbo v2, "AbsListView"

    const-string/jumbo v3, " in onLayout changed "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_2
    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/AbsListView;->mOverscrollMax:I

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/FastScroller;->onItemCountChanged(II)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    :cond_3
    :goto_1
    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    return-void

    :cond_4
    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AbsListView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/SemFastScroller;->onItemCountChanged(II)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    iput-boolean v6, p0, Landroid/widget/AbsListView;->mInLayout:Z

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->useDefaultSelector()V

    :cond_0
    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/widget/AbsListView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v8

    sub-int v3, v7, v8

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_0
    iget v7, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/AbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_4

    if-gt v1, v3, :cond_3

    :goto_1
    iput-boolean v5, p0, Landroid/widget/AbsListView;->mForceTranscriptScroll:Z

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p3

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3}, Landroid/widget/AbsListView;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    float-to-int v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$FlingRunnable;->start(I)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/AbsListView;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p5

    neg-int v3, p5

    invoke-virtual {p0, v0, v3}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v4, p5

    const/4 v2, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v2, v0, v8

    sub-int v4, p5, v2

    :cond_1
    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/AbsListView;->dispatchNestedScroll(IIII[I)Z

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    iget v0, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eq v0, p2, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v1, p0, Landroid/widget/AbsListView;->mScrollX:I

    iget v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0, v0, p2, v1, v2}, Landroid/widget/AbsListView;->onScrollChanged(IIII)V

    iput p2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRemoteAdapter() #2 getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    :cond_0
    return v3

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->superNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v3
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 2

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v1, p1, p2}, Landroid/widget/FastScroller;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    return-object v1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    move-object v0, p1

    check-cast v0, Landroid/widget/AbsListView$SavedState;

    invoke-virtual {v0}, Landroid/widget/AbsListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    iget v1, v0, Landroid/widget/AbsListView$SavedState;->height:I

    int-to-long v2, v1

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncHeight:J

    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_4

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/AbsListView;->mSyncMode:I

    :cond_0
    :goto_0
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->setFilterText(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v1, v0, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iget-boolean v1, v0, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    return-void

    :cond_4
    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    iput v5, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    iget v1, v0, Landroid/widget/AbsListView$SavedState;->position:I

    iput v1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget v1, v0, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v1, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    iput v4, p0, Landroid/widget/AbsListView;->mSyncMode:I

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getVerticalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->dismissPopup()V

    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    new-instance v10, Landroid/widget/AbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/AbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->selectedId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-wide v14, v14, Landroid/widget/AbsListView$SavedState;->firstId:J

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->viewTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->position:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->height:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-boolean v14, v14, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget v14, v14, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iget-object v14, v14, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    return-object v10

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v14

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lez v14, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemId()J

    move-result-wide v8

    iput-wide v8, v10, Landroid/widget/AbsListView$SavedState;->selectedId:J

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->height:I

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-ltz v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    :goto_1
    const/4 v14, 0x0

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->filter:Ljava/lang/String;

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    iput-boolean v14, v10, Landroid/widget/AbsListView$SavedState;->inActionMode:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v14

    iput-object v14, v10, Landroid/widget/AbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v14, :cond_9

    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v14, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v14}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v14, :cond_6

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    if-lt v4, v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v4, v14, -0x1

    :cond_5
    iput v4, v10, Landroid/widget/AbsListView$SavedState;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v14, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    :cond_6
    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->viewTop:I

    const-wide/16 v14, -0x1

    iput-wide v14, v10, Landroid/widget/AbsListView$SavedState;->firstId:J

    const/4 v14, 0x0

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->position:I

    goto/16 :goto_1

    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_8
    iput-object v7, v10, Landroid/widget/AbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    iput v14, v10, Landroid/widget/AbsListView$SavedState;->checkedItemCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v14}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_a
    return-object v10
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->handleBoundsChange()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/SemFastScroller;->onSizeChanged(IIII)V

    goto :goto_0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "AbsListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mIsLongPressMultiSelection : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isClickable()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v9

    :cond_0
    return v9

    :cond_1
    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v10}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_2
    iget-boolean v10, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    :cond_3
    const-string/jumbo v9, "AbsListView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mIsDetaching : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v12, p0, Landroid/widget/AbsListView;->mIsDetaching:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ", isAttachedToWindow() : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isAttachedToWindow()Z

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_4
    invoke-virtual {p0, v12}, Landroid/widget/AbsListView;->startNestedScroll(I)Z

    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v10, "AbsListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mFastScroll intercepted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_5
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v10, :cond_a

    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v10, p1}, Landroid/widget/SemFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    if-ne v10, v12, :cond_8

    :cond_6
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v10}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v10

    if-ne v10, v9, :cond_8

    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v12, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v12}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v12

    invoke-interface {v10, v12}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onPressed(F)V

    :cond_7
    :goto_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v10}, Landroid/widget/SemFastScroller;->getEffectState()I

    move-result v10

    if-ne v10, v9, :cond_9

    move v10, v9

    :goto_1
    iput-boolean v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEffectState:Z

    if-eqz v4, :cond_a

    const-string/jumbo v10, "AbsListView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onTouchEvent() mSemFastScroll intercepted : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_8
    iget-object v10, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    iget-object v12, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v12}, Landroid/widget/SemFastScroller;->getScrollY()F

    move-result v12

    invoke-interface {v10, v12}, Landroid/widget/AbsListView$SemFastScrollEventListener;->onReleased(F)V

    goto :goto_0

    :cond_9
    move v10, v11

    goto :goto_1

    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView;->initVelocityTrackerIfNotExists()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_b

    iput v11, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    :cond_b
    const/4 v10, 0x0

    iget v12, p0, Landroid/widget/AbsListView;->mNestedYOffset:I

    int-to-float v12, v12

    invoke-virtual {v6, v10, v12}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_c

    iget-object v10, p0, Landroid/widget/AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_c
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/AbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Landroid/widget/AbsListView;->onTouchCancel()V

    goto :goto_2

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    iget v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_e

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_d

    iget-object v10, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_d

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_d
    :goto_3
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    iget v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto :goto_2

    :cond_e
    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_3

    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v7, v10

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v8, v10

    iput v11, p0, Landroid/widget/AbsListView;->mMotionCorrection:I

    iput v2, p0, Landroid/widget/AbsListView;->mActivePointerId:I

    iput v7, p0, Landroid/widget/AbsListView;->mMotionX:I

    iput v8, p0, Landroid/widget/AbsListView;->mMotionY:I

    invoke-virtual {p0, v7, v8}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_f

    iget v10, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, p0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    iput v5, p0, Landroid/widget/AbsListView;->mMotionPosition:I

    :cond_f
    iput v8, p0, Landroid/widget/AbsListView;->mLastY:I

    iget v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/AbsListView;->mPointerCount:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    iput v2, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mHoverPosition:I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mWindowFocusChanged:Z

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semAutoHide(I)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v1, v3}, Landroid/widget/AbsListView$FlingRunnable;->-set0(Landroid/widget/AbsListView$FlingRunnable;Z)Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget v1, p0, Landroid/widget/AbsListView;->mScrollY:I

    if-eqz v1, :cond_1

    iput v3, p0, Landroid/widget/AbsListView;->mScrollY:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/AbsListView;->dismissPopup()V

    if-ne v0, v4, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_2
    :goto_1
    iput v0, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->releaseAllBoosters()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mPopupHidden:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Landroid/widget/AbsListView;->showPopup()V

    :cond_6
    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_2

    iget v1, p0, Landroid/widget/AbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne v0, v4, :cond_7

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsListView;->hideSelector()V

    iput v3, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 8

    const/16 v5, 0xc8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v7

    :cond_0
    const/4 v0, 0x7

    if-eqz p2, :cond_1

    const-string/jumbo v3, "auto_scroll_speed_level_count"

    const/16 v4, 0xf

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x78c

    div-int v3, v4, v3

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    const-string/jumbo v3, "auto_scroll_speed_level"

    const/16 v4, 0x8

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :cond_1
    sparse-switch p1, :sswitch_data_0

    return v6

    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    invoke-virtual {p0, v2, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return v7

    :cond_3
    return v6

    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v3, v4

    neg-int v3, v2

    invoke-virtual {p0, v3, v5}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return v7

    :cond_4
    return v6

    :sswitch_2
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "case SEM_ACTION_AUTOSCROLL_DOWN  canScrollDown():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xfa0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->fling(I)V

    return v7

    :cond_5
    return v6

    :sswitch_3
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "case SEM_ACTION_AUTOSCROLL_UP  canScrollUp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, -0xfa0

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->fling(I)V

    return v7

    :cond_6
    return v6

    :sswitch_4
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "case SEM_ACTION_AUTOSCROLL_ON, canScrollDown = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    mul-int/2addr v3, v0

    rsub-int v3, v3, 0x7f0

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    return v7

    :cond_7
    return v6

    :sswitch_5
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEM_ACTION_AUTOSCROLL_SPEED_UP, current duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_8

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    :cond_8
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    return v7

    :cond_9
    return v6

    :sswitch_6
    const-string/jumbo v3, "AbsListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SEM_ACTION_AUTOSCROLL_SPEED_DOWN, current duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    const/16 v4, 0x7f0

    if-ge v3, v4, :cond_a

    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    iget v4, p0, Landroid/widget/AbsListView;->mAutoscrollDurationGap:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    :cond_a
    iget v3, p0, Landroid/widget/AbsListView;->mAutoscrollDuration:I

    invoke-direct {p0, v3}, Landroid/widget/AbsListView;->autoScrollWithDuration(I)V

    return v7

    :cond_b
    return v6

    :sswitch_7
    const-string/jumbo v3, "AbsListView"

    const-string/jumbo v4, "SEM_ACTION_AUTOSCROLL_TOP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0, v6, v6, v6}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    return v7

    :cond_c
    return v6

    :sswitch_8
    const-string/jumbo v3, "AbsListView"

    const-string/jumbo v4, "SEM_ACTION_AUTOSCROLL_OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6, v6}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v3}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_d
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x400000 -> :sswitch_4
        0x800000 -> :sswitch_8
        0x1000000 -> :sswitch_3
        0x1020038 -> :sswitch_1
        0x102003a -> :sswitch_0
        0x2000000 -> :sswitch_2
        0x4000000 -> :sswitch_7
        0x10000000 -> :sswitch_5
        0x20000000 -> :sswitch_6
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_8

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v6, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_0
    if-eqz v6, :cond_7

    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :goto_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v7, 0x0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/AbsListView;->updateOnScreenCheckedViews()V

    :cond_4
    if-eqz v7, :cond_5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    :cond_5
    return v8

    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    :cond_7
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_1

    :cond_8
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_b

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    iput v5, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :cond_a
    :goto_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    :cond_c
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9

    const/high16 v6, -0x40800000    # -1.0f

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJFF)Z

    move-result v0

    return v0
.end method

.method performLongPress(Landroid/view/View;IJFF)Z
    .locals 9

    const v8, 0xc369

    const/4 v2, 0x3

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v1, 0x1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    :cond_1
    return v1

    :cond_2
    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    cmpl-float v0, p5, v7

    if-eqz v0, :cond_6

    cmpl-float v0, p6, v7

    if-eqz v0, :cond_6

    invoke-super {p0, p0, p5, p6}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;FF)Z

    move-result v6

    :cond_4
    :goto_0
    if-eqz v6, :cond_5

    invoke-direct {p0}, Landroid/widget/AbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->performHapticFeedback(I)Z

    :cond_5
    :goto_1
    return v6

    :cond_6
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, " does not need vibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 7

    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    instance-of v6, p0, Landroid/widget/ListView;

    if-eqz v6, :cond_2

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget v2, v6, Landroid/widget/ListView;->mDividerHeight:I

    :goto_0
    if-lez v2, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/widget/ListView;

    iget-object v6, v6, Landroid/widget/ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    :goto_2
    if-ltz v5, :cond_5

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-eqz v3, :cond_1

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v6, v5

    return v6

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    return v6
.end method

.method public pointToRowId(II)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v6, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 6

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/AbsListView$RecycleBin;->-get0(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method removePendingCallbacks()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForTap:Landroid/widget/AbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mPendingCheckForLongPress:Landroid/widget/AbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mTouchMode:I

    return-void
.end method

.method reportScrollStateChange(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_6

    const-string/jumbo v0, "AbsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportScrollStateChange() newState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v4, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    :cond_1
    if-nez p1, :cond_3

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_2
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDVFSLockAcquired:Z

    :cond_3
    if-eqz p1, :cond_4

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    if-eqz v0, :cond_4

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    :cond_4
    iput p1, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    if-eqz p1, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mInLayout:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetList()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->removeAllViewsInLayout()V

    iput v3, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/AbsListView;->mPendingSync:Landroid/widget/AbsListView$SavedState;

    iput v2, p0, Landroid/widget/AbsListView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AbsListView;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    iput v3, p0, Landroid/widget/AbsListView;->mSelectedTop:I

    iput v2, p0, Landroid/widget/AbsListView;->mSelectorPosition:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invalidate()V

    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_0

    const/16 v17, 0x0

    return v17

    :cond_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mBottom:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mTop:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    const/4 v6, 0x1

    if-lt v14, v7, :cond_4

    add-int v17, v7, v3

    move/from16 v0, v17

    if-ge v14, v0, :cond_4

    move v12, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v14, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    if-ge v13, v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v13, v5, v17

    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mTouchMode:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/AbsListView;->mSpecificTop:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v6}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result v12

    if-lt v12, v7, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v12, v0, :cond_c

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLayoutMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    if-ltz v12, :cond_d

    const/16 v17, 0x1

    :goto_2
    return v17

    :cond_3
    if-le v11, v4, :cond_1

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v18

    sub-int v13, v17, v18

    goto :goto_0

    :cond_4
    if-ge v14, v7, :cond_8

    move v12, v7

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v3, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    if-nez v8, :cond_6

    move v13, v15

    if-gtz v7, :cond_5

    if-ge v15, v5, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    add-int v5, v5, v17

    :cond_6
    if-lt v15, v5, :cond_7

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/AbsListView;->mItemCount:I

    const/4 v6, 0x0

    add-int v17, v7, v3

    add-int/lit8 v12, v17, -0x1

    add-int/lit8 v8, v3, -0x1

    :goto_4
    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v2

    add-int/lit8 v17, v3, -0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_a

    move v13, v15

    add-int v17, v7, v3

    move/from16 v0, v17

    if-lt v0, v9, :cond_9

    if-le v2, v4, :cond_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getVerticalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    :cond_a
    if-gt v2, v4, :cond_b

    add-int v12, v7, v8

    move v13, v15

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_c
    const/4 v12, -0x1

    goto :goto_1

    :cond_d
    const/16 v17, 0x0

    goto :goto_2
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/AbsListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public scrollListBy(I)V
    .locals 2

    neg-int v0, p1

    neg-int v1, p1

    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    return-void
.end method

.method public semAutoHide(I)V
    .locals 4

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->semIsFastScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    iget v1, p0, Landroid/widget/AbsListView;->GO_TO_TOP_HIDE:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public semFinishMultiChoiceMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public semForceLongPressMultiSelectionForClickableItems()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, "requested semForceLongPressMultiSelectionForClickableItems by app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHasPerformedLongPress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressMultiSelection:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    :cond_0
    return-void
.end method

.method protected semGetItemCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method public semGetLastScrollState()I
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mLastScrollState:I

    return v0
.end method

.method public semIsFastScrollCustomEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    return v0
.end method

.method public semIsFastScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0}, Landroid/widget/SemFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public semIsFluidScrollerEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public semIsLongPressTriggeredByKey()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsLongPressTriggeredByKey:Z

    return v0
.end method

.method protected semIsShowingScrollbar()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    iget-boolean v6, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public semPointToNearPosition(II)I
    .locals 23

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v11

    move/from16 v2, p2

    const v18, 0x7fffffff

    const/16 v19, 0x0

    add-int/lit8 v12, v11, -0x1

    :goto_0
    if-ltz v12, :cond_2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int v20, v8, v4

    div-int/lit8 v5, v20, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    :cond_1
    move/from16 v19, v5

    sub-int v20, p2, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move/from16 v0, v18

    if-ge v15, v0, :cond_2

    move/from16 v18, v15

    move v2, v5

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    add-int/lit8 v12, v11, -0x1

    :goto_2
    if-ltz v12, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/lit8 v20, v11, -0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_3

    add-int/lit8 v20, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v21

    add-int v9, v20, v21

    add-int/lit8 v20, v11, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v21

    add-int v10, v20, v21

    sub-int v20, p1, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v16

    sub-int v20, p1, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v17

    :cond_3
    if-lt v2, v8, :cond_5

    if-gt v2, v4, :cond_5

    sub-int v20, p1, v6

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v13

    sub-int v20, p1, v7

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v0, v16

    if-gt v13, v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v20

    add-int v9, v12, v20

    move/from16 v16, v13

    :cond_4
    move/from16 v0, v17

    if-gt v14, v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v20

    add-int v10, v12, v20

    move/from16 v17, v14

    :cond_5
    if-gt v2, v4, :cond_6

    if-nez v12, :cond_8

    :cond_6
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    return v9

    :cond_7
    return v10

    :cond_8
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v20, "AbsListView"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "semPointToNearPosition didn\'t find valid position!! "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, -0x1

    return v20
.end method

.method public semSetClickableInMultiSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsSemOnClickEnabled:Z

    return-void
.end method

.method public semSetCtrlKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    return-void
.end method

.method public semSetCustomMultiChoiceModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemCustomMultiChoiceMode:Z

    return-void
.end method

.method public semSetDragBlockEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    return-void
.end method

.method public semSetEnableVibrationAtLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mEnableVibrationAtLongPress:Z

    return-void
.end method

.method public semSetFastScrollCustomEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    return-void
.end method

.method public semSetFastScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/AbsListView$13;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$13;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public semSetFastScrollEventListener(Landroid/widget/AbsListView$SemFastScrollEventListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mSemFastScrollEventListener:Landroid/widget/AbsListView$SemFastScrollEventListener;

    return-void
.end method

.method public semSetFastScrollStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public semSetFluidScrollerEnabled(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    return-void
.end method

.method public semSetFluidScrollerEventListener(Landroid/widget/AbsListView$SemFluidScrollerEventListener;)V
    .locals 0

    return-void
.end method

.method public semSetFluidScrollerStyle(I)V
    .locals 0

    return-void
.end method

.method public semSetForcedEdgeEffectEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemForcedDrawEdgeEffect:Z

    return-void
.end method

.method public semSetGoToTopEnabled(Z)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const v5, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_0
    const/16 v0, 0xff

    filled-new-array {v8, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$4;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$4;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/16 v0, 0xff

    filled-new-array {v8, v0}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v4, v5, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$5;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$5;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/AbsListView$6;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$6;-><init>(Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0
.end method

.method public semSetHoverScrollEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public semSetLongPressMultiSelectionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mLongPressMultiSelectionEnabled:Z

    return-void
.end method

.method public semSetMultiFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    return-void
.end method

.method public semSetSelection(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method

.method public semSetSmoothScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->semSetSmoothScrollEnabled(Z)V

    return-void
.end method

.method public semSetupGoToTop(I)V
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemAutoHide:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_1

    const/16 p1, 0x0

    :cond_1
    const/16 v20, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v20

    if-nez v20, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_d

    const/16 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    move/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/16 v20, 0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    sget-object v21, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemGoToTopState:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getWidth()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v20, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v21, v0

    sub-int v5, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v20, v0

    div-int/lit8 v21, v5, 0x2

    add-int v4, v20, v21

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    filled-new-array/range {v20 .. v21}, [I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/AbsListView;->getLocationInWindow([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "window"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    :cond_6
    const/4 v11, 0x1

    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz v11, :cond_12

    iget v12, v7, Landroid/graphics/Rect;->left:I

    :goto_3
    if-eqz v11, :cond_13

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    :goto_4
    const/16 v20, 0x0

    aget v20, v13, v20

    move/from16 v0, v20

    if-ge v0, v12, :cond_7

    const/16 v20, 0x0

    aget v20, v13, v20

    move/from16 v0, v20

    neg-int v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v14, v0, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingLeft:I

    move/from16 v20, v0

    sub-int v20, v14, v20

    div-int/lit8 v20, v20, 0x2

    add-int v4, v4, v20

    :cond_7
    const/16 v20, 0x0

    aget v20, v13, v20

    add-int v20, v20, v19

    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    const/16 v20, 0x0

    aget v20, v13, v20

    add-int v20, v20, v19

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    sub-int v14, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v14, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingRight:I

    move/from16 v20, v0

    sub-int v20, v14, v20

    div-int/lit8 v20, v20, 0x2

    sub-int v4, v4, v20

    :cond_8
    packed-switch p1, :pswitch_data_0

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    move/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v20

    if-nez v20, :cond_14

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    return-void

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopLastState:I

    move/from16 p1, v0

    goto/16 :goto_0

    :cond_e
    const/16 v20, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v20

    if-nez v20, :cond_f

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v20

    if-eqz v20, :cond_2

    :cond_f
    const/16 p1, 0x1

    goto/16 :goto_0

    :cond_10
    const/16 v20, 0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToToFadeInRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_13
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    goto/16 :goto_4

    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mShowFadeOutGTP:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105022f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105022f

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x105022e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    new-instance v20, Landroid/graphics/Rect;

    div-int/lit8 v21, v3, 0x2

    sub-int v21, v4, v21

    sub-int v22, v10, v2

    add-int/lit8 v22, v22, 0x0

    sub-int v22, v22, v9

    div-int/lit8 v23, v3, 0x2

    add-int v23, v23, v4

    add-int/lit8 v24, v10, 0x0

    sub-int v24, v24, v9

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AbsListView;->mSemGoToTopRect:Landroid/graphics/Rect;

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemSizeChnage:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method semShowGoToTOP()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_0
    return-void
.end method

.method public semSmoothScrollBy(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    new-instance v1, Landroid/widget/AbsListView$SemSmoothScrollByMove;

    invoke-direct {v1, p0, v2}, Landroid/widget/AbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$SemSmoothScrollByMove;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    iget v1, p0, Landroid/widget/AbsListView;->mDensityScale:F

    const/high16 v2, 0x43160000    # 150.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    if-lez p1, :cond_2

    :goto_0
    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mSemScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/AbsListView;->mSemScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/AbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/AbsListView;->mSemSmoothScrollByMove:Landroid/widget/AbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public semStartMultiChoiceMode()V
    .locals 2

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 3

    const/16 v2, 0x1000

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    if-ne v2, v0, :cond_0

    iget v2, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventFromIndex:I

    iput v1, p0, Landroid/widget/AbsListView;->mLastAccessibilityScrollEventToIndex:I

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->sendAccessibilityEventInternal(I)V

    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-direct {p0}, Landroid/widget/AbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-eqz v3, :cond_2

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    move-object v1, p3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    return v2

    :sswitch_0
    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_3
    const/4 v2, 0x1

    :cond_4
    :goto_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    const/4 v2, 0x1

    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsListView;->mFiltered:Z

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    const/16 v5, 0x3b

    if-eq p1, v5, :cond_6

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    goto :goto_1

    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    const/16 v5, 0x3b

    if-eq p1, v5, :cond_9

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_a

    :cond_9
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsShiftkeyPressed:Z

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/AbsListView;->mOldKeyCode:I

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/AbsListView;->mCurrentKeyCode:I

    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mFirstPressedPoint:I

    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/AbsListView;->mSecondPressedPoint:I

    goto/16 :goto_1

    :cond_a
    const/16 v5, 0x71

    if-eq p1, v5, :cond_b

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    :cond_b
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/AbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_1

    :pswitch_2
    iget-object v5, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/EditText;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsListView;->mChnagedAdapter:Z

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "AbsListView"

    const-string/jumbo v1, " setAdapter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/AbsListView;->semPlayGotoToFadeOut()V

    invoke-direct {p0}, Landroid/widget/AbsListView;->initGoToTOP()V

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_3
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView;->mOldAdapterItemCount:I

    :cond_4
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3

    iget v2, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    iput p1, p0, Landroid/widget/AbsListView;->mCacheColorHint:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsListView$RecycleBin;->setCacheColorHint(I)V

    :cond_1
    return-void
.end method

.method public setChoiceMode(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput p1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->clearChoices()V

    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setLongClickable(Z)V

    :cond_3
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    iput-boolean v3, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v0, v3, :cond_4

    :cond_7
    iput-boolean v2, p0, Landroid/widget/AbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setEnableDoubleFling(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mDoubleFlingEnabled:Z

    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mHoveringEnabled:Z

    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mIsEnabledPaddingInHoverScroll:Z

    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollAlwaysVisible:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/widget/AbsListView$8;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$8;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mFastScrollEnabled:Z

    invoke-direct {p0}, Landroid/widget/AbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemFastScrollCustomEffectEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->semSetFastScrollEnabledUiThread(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/AbsListView;->setFastScrollerEnabledUiThread(Z)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/AbsListView$7;

    invoke-direct {v0, p0, p1}, Landroid/widget/AbsListView$7;-><init>(Landroid/widget/AbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/AbsListView;->mFastScrollStyle:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFastScrollTrackPadding(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/AbsListView;->createTextFilter(Z)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsListView;->mFiltered:Z

    iget-object v1, p0, Landroid/widget/AbsListView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AdapterDataSetObserver;->clearSavedState()V

    :cond_1
    return-void
.end method

.method public setForcedClick(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget-boolean v2, p0, Landroid/widget/AbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/AbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->positionPopup()V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/AbsListView$FlingRunnable;->-get0(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 10

    const/4 v6, 0x3

    const/4 v9, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_3

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "AbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_3
    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    iget v1, p0, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_d

    :cond_4
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_a

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_5
    :goto_0
    if-eq v7, p2, :cond_b

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eqz p2, :cond_c

    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    :cond_6
    :goto_2
    iget-object v1, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v1, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_7
    :goto_3
    iget-boolean v1, p0, Landroid/widget/AbsListView;->mInLayout:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    iget-boolean v1, p0, Landroid/widget/AbsListView;->mForcedClick:Z

    if-nez v1, :cond_8

    iput-boolean v9, p0, Landroid/widget/AbsListView;->mDataChanged:Z

    :cond_8
    invoke-virtual {p0}, Landroid/widget/AbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    :cond_9
    return-void

    :cond_a
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    :cond_b
    const/4 v0, 0x0

    goto :goto_1

    :cond_c
    iget v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_d
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v8

    :goto_4
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eq v1, p2, :cond_12

    const/4 v0, 0x1

    :goto_5
    if-nez p2, :cond_e

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v8, :cond_f

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_f
    if-eqz p2, :cond_13

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v8, :cond_10

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_10
    iput v9, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto :goto_3

    :cond_11
    const/4 v8, 0x0

    goto :goto_4

    :cond_12
    const/4 v0, 0x0

    goto :goto_5

    :cond_13
    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_7

    :cond_14
    iput v3, p0, Landroid/widget/AbsListView;->mCheckedItemCount:I

    goto/16 :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/AbsListView;)V

    iput-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->resetPressItemListArray()V

    invoke-direct {p0, p1, p2}, Landroid/widget/AbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mGlowPaddingLeft:I

    iput p2, p0, Landroid/widget/AbsListView;->mGlowPaddingRight:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    return-void

    :cond_1
    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    iput-object v2, p0, Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/AbsListView$RecycleBin;->-set0(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;Z)V

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;Z)V
    .locals 5

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AbsListView;->mDeferNotifyDataSetChanged:Z

    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0, p2}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V

    iput-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v2, "AbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRemoteAdapter #1 getCount()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v4}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setRemoteViewsAdapterAsync(Landroid/content/Intent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;

    invoke-direct {v0, p0, p1}, Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Landroid/content/Intent;)V

    return-object v0
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/AbsListView;->clearScrollingCache()V

    :cond_0
    iput-boolean p1, p0, Landroid/widget/AbsListView;->mScrollingCacheEnabled:Z

    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToToFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, p1, v1}, Landroid/widget/AbsListView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setNextSelectedPositionInt(I)V

    :cond_2
    :goto_0
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsListView;->mLayoutMode:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AbsListView;->mSpecificTop:I

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mNeedSync:Z

    if-eqz v0, :cond_3

    iput p1, p0, Landroid/widget/AbsListView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AbsListView;->mSyncRowId:J

    :cond_3
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_4
    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayout()V

    :cond_5
    return-void

    :cond_6
    iput p1, p0, Landroid/widget/AbsListView;->mResurrectToPosition:I

    goto :goto_0
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/AbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/AbsListView;->updateSelectorState()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Landroid/widget/AbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setSweepListAnimator(Lcom/samsung/android/animation/SemSweepListAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView;->mSweepListAnimator:Lcom/samsung/android/animation/SemSweepListAnimator;

    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/AbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mTouchSlop:I

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mTranscriptMode:I

    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    iput p1, p0, Landroid/widget/AbsListView;->mVelocityScale:F

    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setVerticalScrollbarPosition(I)V

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mFastScroll:Landroid/widget/FastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemFastScroll:Landroid/widget/SemFastScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemFastScroller;->setScrollbarPosition(I)V

    goto :goto_0
.end method

.method setVisibleRangeHint(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/AbsListView;->mIsHoveredByMouse:Z

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenu(FF)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsListView;->showContextMenuInternal(FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isShowingContextMenuWithCoords()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1, v1, v1, v2}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsListView;->showContextMenuForChildInternal(Landroid/view/View;FFZ)Z

    move-result v0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    return-void
.end method

.method smoothScrollBy(IIZZ)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    if-nez v5, :cond_0

    new-instance v5, Landroid/widget/AbsListView$FlingRunnable;

    invoke-direct {v5, p0}, Landroid/widget/AbsListView$FlingRunnable;-><init>(Landroid/widget/AbsListView;)V

    iput-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    add-int v3, v2, v1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    if-eqz p1, :cond_1

    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-nez v5, :cond_4

    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/widget/AbsListView;->semIsSupportGotoTop()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    if-eqz v5, :cond_3

    iget v5, p0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v5, :cond_3

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    const-string/jumbo v5, "AbsListView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " re calculate done2 mPositionScroller = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Landroid/widget/AbsListView;->mSemCanGoFuther:Z

    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v5}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_3
    return-void

    :cond_4
    if-eqz v1, :cond_1

    if-nez v2, :cond_5

    invoke-virtual {p0, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    if-ne v5, v4, :cond_5

    if-ltz p1, :cond_1

    :cond_5
    iget v5, p0, Landroid/widget/AbsListView;->mItemCount:I

    if-ne v3, v5, :cond_6

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ne v5, v0, :cond_6

    if-gtz p1, :cond_1

    :cond_6
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    iget-object v5, p0, Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;

    invoke-virtual {v5, p1, p2, p3, p4}, Landroid/widget/AbsListView$FlingRunnable;->startScroll(IIZZ)V

    goto :goto_0
.end method

.method smoothScrollByOffset(I)V
    .locals 11

    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    const/4 v2, -0x1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v2

    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    const/high16 v6, 0x3f400000    # 0.75f

    if-gez p1, :cond_4

    cmpg-float v7, v3, v10

    if-gez v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_2
    return-void

    :cond_3
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v10

    if-gez v7, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView$AbsPositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->start(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->createPositionScroller()Landroid/widget/AbsListView$AbsPositionScroller;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/AbsListView$AbsPositionScroller;->startWithOffset(III)V

    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 31

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_0

    const/16 v29, 0x1

    return v29

    :cond_0
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v16

    add-int/lit8 v29, v8, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getBottom()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v23

    iget v13, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v23

    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    sub-int v25, v13, v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v14, v29, v12

    sub-int v26, v22, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingBottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mPaddingTop:I

    move/from16 v30, v0

    sub-int v19, v29, v30

    if-gez p1, :cond_3

    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_0
    if-gez p2, :cond_4

    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    if-nez v15, :cond_5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v16, v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    :goto_2
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    add-int v29, v29, v22

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    :goto_3
    if-nez v15, :cond_8

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_8

    if-ltz p2, :cond_7

    const/4 v5, 0x1

    :goto_4
    add-int v29, v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v22

    move/from16 v1, v29

    if-gt v0, v1, :cond_a

    if-gtz p2, :cond_9

    const/4 v6, 0x1

    :goto_5
    if-nez v5, :cond_2

    if-eqz v6, :cond_c

    :cond_2
    if-eqz p2, :cond_b

    const/16 v29, 0x1

    :goto_6
    return v29

    :cond_3
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v29, v19, -0x1

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPositionDistanceGuess:I

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    move/from16 v29, v0

    add-int v29, v29, p2

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mLastPositionDistanceGuess:I

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    const/16 v29, 0x0

    goto :goto_6

    :cond_c
    if-gez p2, :cond_17

    const/4 v11, 0x1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->isInTouchMode()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->hideSelector()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeaderViewsCount()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getFooterViewsCount()I

    move-result v30

    sub-int v17, v29, v30

    const/16 v27, 0x0

    const/4 v10, 0x0

    if-eqz v11, :cond_1a

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    :cond_e
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v0, v8, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    move/from16 v29, v0

    add-int v29, v29, p1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mMotionViewNewTop:I

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    if-lez v10, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/widget/AbsListView;->detachViewsFromParent(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->awakenScrollBars()Z

    move-result v29

    if-nez v29, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invalidate()V

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->offsetChildrenTopAndBottom(I)V

    if-eqz v11, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v29, v0

    add-int v29, v29, v10

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mFirstPosition:I

    :cond_12
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move/from16 v0, v25

    if-lt v0, v3, :cond_13

    move/from16 v0, v26

    if-ge v0, v3, :cond_14

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/AbsListView;->fillGap(Z)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/widget/AbsListView$RecycleBin;->fullyDetachScrapViews()V

    if-nez v21, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    if-ltz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectedPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    :cond_15
    :goto_9
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AbsListView;->mBlockLayoutRequests:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSemEnableGoToTop:Z

    move/from16 v29, v0

    if-eqz v29, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v29

    if-eqz v29, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSemGoToTopState:I

    move/from16 v29, v0

    if-nez v29, :cond_16

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semAutoHide(I)V

    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->invokeOnItemScrollListener()V

    const/16 v29, 0x0

    return v29

    :cond_17
    const/4 v11, 0x0

    goto/16 :goto_7

    :cond_18
    add-int/lit8 v10, v10, 0x1

    add-int v24, v15, v20

    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_19

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_19
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_8

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getHeight()I

    move-result v29

    sub-int v4, v29, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mGroupFlags:I

    move/from16 v29, v0

    and-int/lit8 v29, v29, 0x22

    const/16 v30, 0x22

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    :cond_1b
    add-int/lit8 v20, v8, -0x1

    :goto_a
    if-ltz v20, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v29

    move/from16 v0, v29

    if-le v0, v4, :cond_f

    move/from16 v27, v20

    add-int/lit8 v10, v10, 0x1

    add-int v24, v15, v20

    invoke-virtual {v7}, Landroid/view/View;->clearAccessibilityFocus()V

    move/from16 v0, v24

    move/from16 v1, v18

    if-lt v0, v1, :cond_1c

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_1c
    add-int/lit8 v20, v20, -0x1

    goto :goto_a

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mIsMouseHoverScroll:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mIsMouseHoverScrollY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->pointToPosition(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    if-ltz v9, :cond_1e

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v29

    if-eqz v29, :cond_1e

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    :cond_1e
    if-ltz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v30, v0

    invoke-interface/range {v29 .. v30}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mSelectorPosition:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    move/from16 v30, v0

    sub-int v9, v29, v30

    if-ltz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v29

    move/from16 v0, v29

    if-ge v9, v0, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_9

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_9
.end method

.method triggerDoubleFling(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-gez p1, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method public triggerJumpScrollToTop()V
    .locals 1

    sget v0, Landroid/widget/AbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/AbsListView;->mJumpScrollToTopState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->triggerDoubleFling(I)V

    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method updateScrollIndicators()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/widget/AbsListView;->mScrollUp:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollUp()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView;->mScrollDown:Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/AbsListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method updateSelectorState()V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView;->getDrawableStateForSelector()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView;->mSemGoToTopImage:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    goto :goto_0
.end method
