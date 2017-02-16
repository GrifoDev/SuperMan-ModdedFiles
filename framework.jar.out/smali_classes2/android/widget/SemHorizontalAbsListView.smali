.class public abstract Landroid/widget/SemHorizontalAbsListView;
.super Landroid/widget/AdapterView;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/Filter$FilterListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;
.implements Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SemHorizontalAbsListView$1;,
        Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;,
        Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;,
        Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;,
        Landroid/widget/SemHorizontalAbsListView$CheckForTap;,
        Landroid/widget/SemHorizontalAbsListView$FlingRunnable;,
        Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;,
        Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;,
        Landroid/widget/SemHorizontalAbsListView$LayoutParams;,
        Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;,
        Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;,
        Landroid/widget/SemHorizontalAbsListView$OnScrollListener;,
        Landroid/widget/SemHorizontalAbsListView$PerformClick;,
        Landroid/widget/SemHorizontalAbsListView$PositionScroller;,
        Landroid/widget/SemHorizontalAbsListView$RecycleBin;,
        Landroid/widget/SemHorizontalAbsListView$RecyclerListener;,
        Landroid/widget/SemHorizontalAbsListView$SavedState;,
        Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;,
        Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;
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

.field private static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final DRAGSCROLL_WORKING_ZONE_DP:I = 0x19

.field private static final HOVERSCROLL_LEFT:I = 0x1

.field private static final HOVERSCROLL_RIGHT:I = 0x2

.field private static final HOVERSCROLL_SPEED_FASTER:F = 30.0f

.field private static final HOVERSCROLL_WIDTH_LEFT_DP:I = 0x19

.field private static final HOVERSCROLL_WIDTH_RIGHT_DP:I = 0x19

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

.field static final OVERSCROLL_LIMIT_DIVISOR:I = 0x3

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final QC_BOTTOM:I = 0x4

.field private static final QC_LEFT:I = 0x1

.field private static final QC_RIGHT:I = 0x3

.field private static final QC_STATE_NONE:I = 0x0

.field private static final QC_STATE_PRESSED:I = 0x2

.field private static final QC_STATE_SHOWN:I = 0x1

.field private static final QC_TOP:I = 0x2

.field private static final SAVED_STATE_KEY_FOR_BUNDLE:Ljava/lang/String; = "android.widget.SemHorizontalAbsListView.SavedState"

.field private static final TAG:Ljava/lang/String; = "SemHorizontalAbsListView"

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
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:F

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

.field private mActivePointerId:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAdapterHasStableIds:Z

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

.field mChoiceActionMode:Landroid/view/ActionMode;

.field mChoiceMode:I

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mCurrentKeyCode:I

.field private mDVFSLockAcquired:Z

.field mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

.field private mDefInputConnection:Landroid/view/inputmethod/InputConnection;

.field private mDeferNotifyDataSetChanged:Z

.field private mDensityScale:F

.field private mDirection:I

.field private mDragScrollWorkingZonePx:I

.field mDrawSelectorOnTop:Z

.field private mEdgeGlowLeft:Landroid/widget/EdgeEffect;

.field private mEdgeGlowRight:Landroid/widget/EdgeEffect;

.field private mEnableVibrationAtLongPress:Z

.field private mExtraPaddingInLeftHoverArea:I

.field private mExtraPaddingInRightHoverArea:I

.field private mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

.field mFastScrollAlwaysVisible:Z

.field mFastScrollEnabled:Z

.field private mFastScrollStyle:I

.field private mFiltered:Z

.field private mFirstPositionDistanceGuess:I

.field private mFirstPressedPoint:I

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mForceTranscriptScroll:Z

.field private mForcedClick:Z

.field private mGlobalLayoutListenerAddedFilter:Z

.field private mGlowPaddingBottom:I

.field private mGlowPaddingTop:I

.field private mHapticOverScroll:Z

.field private mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

.field private mHasWindowFocusForMotion:Z

.field mHeightMeasureSpec:I

.field public mHoverAreaEnter:Z

.field private mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

.field private mHoverLeftAreaWidth:I

.field private mHoverPosition:I

.field private mHoverRecognitionCurrentTime:J

.field private mHoverRecognitionDurationTime:J

.field private mHoverRecognitionStartTime:J

.field private mHoverRightAreaWidth:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:J

.field private mHoverScrollStateForListener:I

.field private mHoverScrollTimeInterval:J

.field private mHoveredOnEllipsizedText:Z

.field mHoveringEnabled:Z

.field private mIsChildViewEnabled:Z

.field private mIsCloseChildSetted:Z

.field private mIsCtrlkeyPressed:Z

.field private mIsDetaching:Z

.field private mIsDragBlockEnabled:Z

.field private mIsDragScrolled:Z

.field private mIsEnabledPaddingInHoverScroll:Z

.field private mIsHoverOverscrolled:Z

.field private mIsHoveredByMouse:Z

.field private mIsMultiFocusEnabled:Z

.field private mIsNeedPenSelectIconSet:Z

.field private mIsNeedPenSelection:Z

.field private mIsPenHovered:Z

.field private mIsPenPressed:Z

.field private mIsPenSelectPointerSetted:Z

.field private mIsQCShown:Z

.field mIsRTL:Z

.field final mIsScrap:[Z

.field private mIsSendHoverScrollState:Z

.field private mIsShiftkeyPressed:Z

.field private mIsTextSelectionStarted:Z

.field private mIsfirstMoveEvent:Z

.field private mJumpScrollToTopState:I

.field private mLastAccessibilityScrollEventFromIndex:I

.field private mLastAccessibilityScrollEventToIndex:I

.field private mLastHandledItemCount:I

.field private mLastPosition:I

.field private mLastPositionDistanceGuess:I

.field mLastScrollState:I

.field private mLastTouchMode:I

.field mLastX:I

.field mLayoutMode:I

.field mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field mMotionPosition:I

.field private mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

.field mMotionViewNewLeft:I

.field mMotionViewOriginalLeft:I

.field mMotionX:I

.field mMotionY:I

.field mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

.field private mMultiFocusImage:Landroid/graphics/drawable/Drawable;

.field private mNeedsHoverScroll:Z

.field private mNestedXOffset:I

.field private mNewTextViewHoverState:Z

.field private mOldAdapterItemCount:I

.field private mOldHoverScrollDirection:I

.field private mOldKeyCode:I

.field private mOldTextViewHoverState:Z

.field private mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

.field mOverflingDistance:I

.field mOverscrollDistance:I

.field mOverscrollMax:I

.field private final mOwnerThread:Ljava/lang/Thread;

.field private mPenDragScrollTimeInterval:J

.field private mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

.field private mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

.field private mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

.field private mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

.field private mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

.field private mPointerCount:I

.field mPopup:Landroid/widget/PopupWindow;

.field private mPopupHidden:Z

.field mPositionScrollAfterLayout:Ljava/lang/Runnable;

.field mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

.field private mPreviousTextViewScroll:Z

.field private mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

.field private mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mQCLocation:I

.field private mQCRect:Landroid/graphics/Rect;

.field private mQCScrollDirection:I

.field private mQCScrollFrom:I

.field private mQCScrollNext:I

.field private mQCScrollRunnable:Ljava/lang/Runnable;

.field private mQCScrollTo:I

.field private mQCScrollingCount:I

.field private mQCstate:I

.field final mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

.field private mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

.field mResurrectToPosition:I

.field private final mScrollConsumed:[I

.field private mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field mScrollLeft:Landroid/view/View;

.field private final mScrollOffset:[I

.field private mScrollProfilingStarted:Z

.field mScrollRight:Landroid/view/View;

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field mScrollingCacheEnabled:Z

.field private mSecondPressedPoint:I

.field mSelectedLeft:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorPosition:I

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSemCloseChildByLeft:Landroid/view/View;

.field private mSemCloseChildByRight:Landroid/view/View;

.field private mSemCloseChildPositionByLeft:I

.field private mSemCloseChildPositionByRight:I

.field protected mSemCurrentFocusPosition:I

.field private mSemCustomMultiChoiceMode:Z

.field private mSemDistanceFromCloseChildLeft:I

.field private mSemDistanceFromCloseChildRight:I

.field private mSemDistanceFromTrackedChildLeft:I

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

.field private mSemIsOnClickEnabled:Z

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

.field private mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

.field private mSemTrackedChild:Landroid/view/View;

.field private mSemTrackedChildPosition:I

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field mTextFilter:Landroid/widget/EditText;

.field private mTextFilterEnabled:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field mTouchMode:I

.field private mTouchModeReset:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityScale:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    return v0
.end method

.method static synthetic -get10(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$FlingRunnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    return-object v0
.end method

.method static synthetic -get11(Landroid/widget/SemHorizontalAbsListView;)Landroid/os/StrictMode$Span;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object v0
.end method

.method static synthetic -get12(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return v0
.end method

.method static synthetic -get13(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    return v0
.end method

.method static synthetic -get14(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    return v0
.end method

.method static synthetic -get15(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    return v0
.end method

.method static synthetic -get16(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return v0
.end method

.method static synthetic -get17(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    return v0
.end method

.method static synthetic -get18(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic -get19(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    return v0
.end method

.method static synthetic -get20(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    return v0
.end method

.method static synthetic -get21(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object v0
.end method

.method static synthetic -get22(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method static synthetic -get23(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    return v0
.end method

.method static synthetic -get24(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    return v0
.end method

.method static synthetic -get25(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    return v0
.end method

.method static synthetic -get26(Landroid/widget/SemHorizontalAbsListView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get27(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    return v0
.end method

.method static synthetic -get28(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    return v0
.end method

.method static synthetic -get29(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/animation/DecelerateInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    return v0
.end method

.method static synthetic -get30(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic -get31(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return v0
.end method

.method static synthetic -get32(Landroid/widget/SemHorizontalAbsListView;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get33(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/VelocityTracker;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/SemHorizontalAbsListView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic -get8(Landroid/widget/SemHorizontalAbsListView;)Lcom/samsung/android/widget/SemHorizontalFastScroller;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    return-object v0
.end method

.method static synthetic -get9(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    return p1
.end method

.method static synthetic -set1(Landroid/widget/SemHorizontalAbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    return-object p1
.end method

.method static synthetic -set2(Landroid/widget/SemHorizontalAbsListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    return p1
.end method

.method static synthetic -set3(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    return p1
.end method

.method static synthetic -set4(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;)Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    return-object p1
.end method

.method static synthetic -set5(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    return p1
.end method

.method static synthetic -set6(Landroid/widget/SemHorizontalAbsListView;I)I
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    return p1
.end method

.method static synthetic -set7(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/SemHorizontalAbsListView;)Landroid/widget/EditText;
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/SemHorizontalAbsListView;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "alwaysShow"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/SemHorizontalAbsListView;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/SemHorizontalAbsListView;II)V
    .locals 0
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/widget/SemHorizontalAbsListView;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->postOnJumpScrollToFinished()V

    return-void
.end method

.method static synthetic -wrap8(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    sput-boolean v1, Landroid/widget/SemHorizontalAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    .line 866
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 6318
    sput v1, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    .line 6319
    const/4 v0, 0x1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    .line 6320
    const/4 v0, 0x2

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    .line 7402
    const/16 v0, 0x1f4

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1081
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 161
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 163
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 302
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 335
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 360
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 365
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 375
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 380
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 386
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 391
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 396
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 401
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 406
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 411
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 416
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 464
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 495
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 538
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 558
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 560
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 586
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 589
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 592
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 600
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 601
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 649
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 674
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 676
    new-array v1, v7, [Z

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    .line 678
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 679
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    .line 685
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 695
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 700
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 706
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    .line 756
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 792
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 794
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 804
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 806
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 808
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 810
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 812
    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 814
    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 816
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 821
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 826
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 832
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 834
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 839
    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 849
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 851
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 853
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 855
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 858
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 860
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 861
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 876
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 886
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 891
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 892
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 893
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 894
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 895
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 897
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 901
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 902
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    .line 903
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 904
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 905
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 910
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 914
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 915
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 917
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 918
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 919
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 920
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 921
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 922
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 923
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 926
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 927
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 928
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 929
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 930
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 932
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 933
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 934
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 935
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 937
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 938
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 939
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 941
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 942
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 943
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 944
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 945
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 946
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 947
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 948
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 951
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 953
    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 954
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 1023
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 4131
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 5307
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5308
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 6321
    sget v1, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6380
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6382
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6383
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 7400
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7401
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10495
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10849
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10850
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 10851
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    .line 10856
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 11011
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1083
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    .line 1085
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1087
    invoke-virtual {p0, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1088
    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1089
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    .line 1090
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1095
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v1, :cond_0

    .line 1096
    const-string/jumbo v1, "SemHorizontalAbsListView"

    const-string/jumbo v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const-string/jumbo v1, "motion_recognition"

    .line 1097
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 1080
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1119
    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1140
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1177
    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 158
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string/jumbo v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 161
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 163
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 302
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 335
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 360
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 365
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 375
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 380
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 386
    new-instance v14, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    .line 391
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 396
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 401
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 406
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 411
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 416
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    .line 464
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 495
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 538
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 558
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 560
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 586
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 589
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    .line 592
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    .line 600
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 601
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 649
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 674
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 676
    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    .line 678
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 679
    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    .line 685
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 695
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 700
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 706
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    .line 756
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 792
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 794
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 804
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 806
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 808
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 810
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    .line 812
    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    .line 814
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 816
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 821
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 826
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 832
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 834
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 839
    const/high16 v14, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 849
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    .line 851
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 853
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 855
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 858
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 860
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 861
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 876
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 886
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 891
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    .line 892
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 893
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 894
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 895
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 897
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 901
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 902
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    .line 903
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 904
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 905
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 910
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    .line 914
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 915
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 917
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 918
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 919
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    .line 920
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 921
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 922
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 923
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    .line 926
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 927
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 928
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 929
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 930
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 932
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 933
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 934
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 935
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 937
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 938
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 939
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 941
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 942
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 943
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 944
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 945
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 946
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 947
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 948
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 951
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    .line 953
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 954
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 1023
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 4131
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 5307
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5308
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 6321
    sget v14, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6380
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6382
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6383
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 7400
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7401
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 10495
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10849
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10850
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 10851
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    .line 10856
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 11011
    new-instance v14, Landroid/widget/SemHorizontalAbsListView$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    .line 1179
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    .line 1181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    .line 1184
    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    .line 1183
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 1186
    .local v4, "a":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1187
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 1188
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1192
    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 1191
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 1194
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 1195
    .local v11, "stackFromBottom":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->setStackFromBottom(Z)V

    .line 1197
    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    .line 1198
    .local v9, "scrollingCacheEnabled":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1200
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 1201
    .local v13, "useTextFilter":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->setTextFilterEnabled(Z)V

    .line 1203
    const/4 v14, 0x5

    .line 1204
    const/4 v15, 0x0

    .line 1203
    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 1205
    .local v12, "transcriptMode":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->setTranscriptMode(I)V

    .line 1207
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 1209
    .local v5, "color":I
    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 1210
    .local v7, "enableFastScroll":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    .line 1212
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1213
    .local v8, "fastScrollStyle":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollStyle(I)V

    .line 1215
    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 1216
    .local v10, "smoothScrollbar":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 1219
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 1218
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 1221
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 1226
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v14, :cond_1

    .line 1227
    const-string/jumbo v14, "SemHorizontalAbsListView"

    const-string/jumbo v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string/jumbo v14, "motion_recognition"

    .line 1228
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    .line 1176
    :cond_1
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2528
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    .line 2529
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2528
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2529
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2528
    goto :goto_0
.end method

.method private addToPressItemListArray(II)V
    .locals 4
    .param p1, "firstpoint"    # I
    .param p2, "secondpoint"    # I

    .prologue
    .line 10761
    const/4 v0, 0x0

    .line 10763
    .local v0, "checkCount":I
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    .line 10764
    return-void

    .line 10767
    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    .line 10768
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10769
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10803
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10760
    return-void

    .line 10771
    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10774
    :cond_3
    if-ge p1, p2, :cond_5

    .line 10775
    sub-int v2, p2, p1

    add-int/lit8 v0, v2, 0x1

    .line 10776
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 10777
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10778
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10782
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 10776
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10780
    :cond_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10784
    .end local v1    # "i":I
    :cond_5
    if-le p1, p2, :cond_7

    .line 10785
    sub-int v2, p1, p2

    add-int/lit8 v0, v2, 0x1

    .line 10786
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v0, :cond_1

    .line 10787
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10788
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10792
    :goto_4
    add-int/lit8 p1, p1, -0x1

    .line 10786
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10790
    :cond_6
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 10795
    .end local v1    # "i":I
    :cond_7
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 10796
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10798
    :cond_8
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 7578
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7579
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 7580
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$6;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$6;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 7596
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7577
    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1693
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1694
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 1695
    return v1

    .line 1696
    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_1

    .line 1697
    return v2

    .line 1699
    :cond_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_4

    .line 1700
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_3

    .line 1701
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_2

    .line 1700
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1701
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1700
    goto :goto_0

    .line 1704
    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_5

    .line 1705
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_5

    move v2, v1

    .line 1704
    :cond_5
    return v2
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 7570
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    .line 7569
    :cond_0
    :goto_0
    return-void

    .line 7570
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7571
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 7572
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 7573
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5
    .param p1, "animateEntrance"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 8732
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    .line 8733
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 8734
    .local v0, "p":Landroid/widget/PopupWindow;
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 8735
    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 8736
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 8737
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 8738
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 8739
    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 8740
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8741
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8742
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8743
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 8745
    .end local v0    # "p":Landroid/widget/PopupWindow;
    :cond_0
    if-eqz p1, :cond_1

    .line 8746
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e9

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8731
    :goto_0
    return-void

    .line 8748
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    .prologue
    .line 8354
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 8355
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8353
    :cond_0
    return-void
.end method

.method private doScrollToLeftEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 10984
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    .line 10985
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    .line 10986
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    .line 10987
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    .line 10988
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 10990
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 10991
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 10994
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10983
    return-void
.end method

.method private doScrollToRightEnd()V
    .locals 1

    .prologue
    .line 10998
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    .line 10999
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    .line 11000
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    .line 11001
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    .line 11002
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    .line 11004
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    .line 11005
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 11008
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 10997
    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 10964
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    .line 10965
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 10966
    .local v1, "scrollX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 10967
    .local v0, "restoreCount":I
    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10969
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v4, :cond_2

    .line 10970
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10975
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 10977
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    .line 10963
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :goto_1
    return-void

    .line 10971
    .restart local v0    # "restoreCount":I
    .restart local v1    # "scrollX":I
    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_1

    .line 10972
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 10979
    .end local v0    # "restoreCount":I
    .end local v1    # "scrollX":I
    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3602
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 3603
    .local v4, "tempSelectorRect":Landroid/graphics/Rect;
    const/4 v0, 0x0

    .line 3604
    .local v0, "selectedChild":Landroid/view/View;
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3605
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3606
    .local v3, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3607
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3611
    .end local v3    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    .line 3613
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "selectedChild":Landroid/view/View;
    .local v2, "selectedPosition$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3614
    .local v1, "selectedPosition":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3616
    .local v0, "selectedChild":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3617
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 3618
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3619
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 3601
    .end local v0    # "selectedChild":Landroid/view/View;
    .end local v1    # "selectedPosition":Ljava/lang/Integer;
    .end local v2    # "selectedPosition$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    .prologue
    .line 9039
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    .line 9040
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9041
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    .line 9038
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .param p0, "source"    # Landroid/graphics/Rect;
    .param p1, "dest"    # Landroid/graphics/Rect;
    .param p2, "direction"    # I

    .prologue
    .line 8400
    sparse-switch p2, :sswitch_data_0

    .line 8433
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 8402
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 8403
    .local v4, "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8404
    .local v5, "sY":I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 8405
    .local v0, "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8437
    .local v1, "dY":I
    :goto_0
    sub-int v2, v0, v4

    .line 8438
    .local v2, "deltaX":I
    sub-int v3, v1, v5

    .line 8439
    .local v3, "deltaY":I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 8408
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v2    # "deltaX":I
    .end local v3    # "deltaY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 8409
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 8410
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8411
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 8414
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 8415
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8416
    .restart local v5    # "sY":I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 8417
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8418
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8420
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 8421
    .restart local v4    # "sX":I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 8422
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8423
    .restart local v0    # "dX":I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .restart local v1    # "dY":I
    goto :goto_0

    .line 8427
    .end local v0    # "dX":I
    .end local v1    # "dY":I
    .end local v4    # "sX":I
    .end local v5    # "sY":I
    :sswitch_4
    iget v6, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 8428
    .restart local v4    # "sX":I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 8429
    .restart local v5    # "sY":I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 8430
    .restart local v0    # "dX":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 8431
    .restart local v1    # "dY":I
    goto :goto_0

    .line 8400
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

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8753
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    .line 8754
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 8756
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v1, 0x1090173

    .line 8755
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 8760
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 8762
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 8763
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8765
    .end local v0    # "layoutInflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    return-object v1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 10514
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 10513
    :cond_0
    :goto_0
    return-void

    .line 10516
    :pswitch_0
    const/4 v5, 0x0

    .line 10518
    .local v5, "offset":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    .line 10519
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    .line 10521
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_1

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 10523
    :cond_1
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    .line 10527
    :cond_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    .line 10528
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 10527
    const/4 v9, 0x1

    invoke-static {v9, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 10528
    const/high16 v8, 0x3f000000    # 0.5f

    .line 10527
    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10530
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    .line 10531
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10538
    :cond_3
    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    .line 10539
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, -0x1

    .line 10540
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_8

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v7, :cond_8

    .line 10541
    :goto_2
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10542
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 10543
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 10544
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 10545
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 10558
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 10562
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_17

    .line 10563
    if-gez v5, :cond_b

    .line 10564
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    .line 10565
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 10564
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_b

    .line 10567
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10568
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10532
    :cond_6
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_7

    .line 10533
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 10534
    :cond_7
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    .line 10535
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    .line 10540
    :cond_8
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_4

    goto/16 :goto_2

    .line 10548
    :cond_9
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, 0x1

    .line 10549
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_a

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v7, :cond_a

    .line 10550
    :goto_4
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 10551
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 10552
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 10553
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 10554
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_3

    .line 10549
    :cond_a
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_4

    goto :goto_4

    .line 10570
    :cond_b
    if-lez v5, :cond_d

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_d

    .line 10572
    :cond_c
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10573
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10577
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 10578
    .local v6, "overscrollMode":I
    if-eqz v6, :cond_10

    .line 10579
    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_e
    const/4 v0, 0x0

    .line 10581
    .local v0, "canOverscroll":Z
    :goto_5
    if-eqz v0, :cond_f

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_12

    .line 10604
    :cond_f
    :goto_6
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10605
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10578
    .end local v0    # "canOverscroll":Z
    :cond_10
    const/4 v0, 0x1

    goto :goto_5

    .line 10579
    :cond_11
    const/4 v0, 0x1

    goto :goto_5

    .line 10582
    .restart local v0    # "canOverscroll":Z
    :cond_12
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    .line 10584
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10585
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10586
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 10587
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10598
    :cond_13
    :goto_7
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_14

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 10602
    :cond_14
    :goto_8
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_6

    .line 10589
    :cond_15
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    .line 10591
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10592
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10593
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    .line 10594
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    .line 10599
    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_8

    .line 10611
    .end local v0    # "canOverscroll":Z
    .end local v6    # "overscrollMode":I
    :cond_17
    if-gez v5, :cond_19

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_18

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_19

    .line 10612
    :cond_18
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10613
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10615
    :cond_19
    if-lez v5, :cond_1b

    .line 10616
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    .line 10617
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 10616
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_1b

    .line 10619
    :cond_1a
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10620
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10623
    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 10624
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_1e

    .line 10625
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_1c
    const/4 v0, 0x0

    .line 10627
    .restart local v0    # "canOverscroll":Z
    :goto_9
    if-eqz v0, :cond_1d

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_20

    .line 10650
    :cond_1d
    :goto_a
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10651
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10624
    .end local v0    # "canOverscroll":Z
    :cond_1e
    const/4 v0, 0x1

    goto :goto_9

    .line 10625
    :cond_1f
    const/4 v0, 0x1

    goto :goto_9

    .line 10628
    .restart local v0    # "canOverscroll":Z
    :cond_20
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_23

    .line 10630
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10631
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10632
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_21

    .line 10633
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10644
    :cond_21
    :goto_b
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_22

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_24

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 10648
    :cond_22
    :goto_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_a

    .line 10635
    :cond_23
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    .line 10637
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10638
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10639
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_21

    .line 10640
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_b

    .line 10645
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_c

    .line 10660
    .end local v0    # "canOverscroll":Z
    .end local v5    # "offset":I
    .end local v6    # "overscrollMode":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 10662
    .local v3, "childCount":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 10667
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_28

    .line 10668
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_29

    const/4 v2, 0x1

    .line 10670
    .local v2, "canScrollRight":Z
    :goto_d
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v7, :cond_25

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_2a

    :cond_25
    const/4 v1, 0x1

    .line 10673
    .local v1, "canScrollLeft":Z
    :goto_e
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 10672
    const/4 v8, 0x1

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    .line 10673
    const/high16 v8, 0x3f000000    # 0.5f

    .line 10672
    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    .line 10675
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2b

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    neg-int v4, v7

    .line 10677
    .local v4, "distanceToMove":I
    :goto_f
    if-gez v4, :cond_26

    if-nez v1, :cond_27

    :cond_26
    if-lez v4, :cond_2c

    if-eqz v2, :cond_2c

    .line 10679
    :cond_27
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 10680
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x2

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 10667
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v4    # "distanceToMove":I
    :cond_28
    const/4 v2, 0x1

    .restart local v2    # "canScrollRight":Z
    goto :goto_d

    .line 10668
    .end local v2    # "canScrollRight":Z
    :cond_29
    const/4 v2, 0x0

    .restart local v2    # "canScrollRight":Z
    goto :goto_d

    .line 10670
    :cond_2a
    const/4 v1, 0x0

    .restart local v1    # "canScrollLeft":Z
    goto :goto_e

    .line 10675
    :cond_2b
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_f

    .line 10683
    .restart local v4    # "distanceToMove":I
    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    .line 10684
    .restart local v6    # "overscrollMode":I
    if-eqz v6, :cond_2f

    .line 10685
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2d

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_30

    :cond_2d
    const/4 v0, 0x0

    .line 10687
    .restart local v0    # "canOverscroll":Z
    :goto_10
    if-eqz v0, :cond_2e

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_31

    .line 10709
    :cond_2e
    :goto_11
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    .line 10710
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    .line 10684
    .end local v0    # "canOverscroll":Z
    :cond_2f
    const/4 v0, 0x1

    goto :goto_10

    .line 10685
    :cond_30
    const/4 v0, 0x1

    goto :goto_10

    .line 10688
    .restart local v0    # "canOverscroll":Z
    :cond_31
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_34

    .line 10689
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10690
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10691
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_32

    .line 10692
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 10702
    :cond_32
    :goto_12
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_33

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 10706
    :cond_33
    :goto_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_11

    .line 10694
    :cond_34
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_32

    .line 10695
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 10696
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 10697
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_32

    .line 10698
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_12

    .line 10703
    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_13

    .line 10716
    .end local v0    # "canOverscroll":Z
    .end local v1    # "canScrollLeft":Z
    .end local v2    # "canScrollRight":Z
    .end local v3    # "childCount":I
    .end local v4    # "distanceToMove":I
    .end local v6    # "overscrollMode":I
    :pswitch_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_36

    .line 10717
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->doScrollToLeftEnd()V

    goto/16 :goto_0

    .line 10718
    :cond_36
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    .line 10719
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->doScrollToRightEnd()V

    goto/16 :goto_0

    .line 10514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initAbsListView()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1235
    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 1236
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    .line 1237
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1238
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 1239
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    .line 1240
    invoke-virtual {p0}, Landroid/view/View;->semEnableHorizontalScrollbar()V

    .line 1242
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 1243
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1244
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    .line 1245
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    .line 1246
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    .line 1247
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    .line 1248
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    .line 1249
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    .line 1252
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1253
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 1254
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600dc

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1255
    .local v1, "resolved":Z
    if-eqz v1, :cond_0

    .line 1256
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    .line 1259
    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600dd

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 1260
    if-eqz v1, :cond_1

    .line 1261
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    .line 1266
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    .end local v1    # "resolved":Z
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_1
    new-instance v3, Landroid/view/HapticPreDrawListener;

    invoke-direct {v3}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    .line 1233
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 6732
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6733
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6731
    :goto_0
    return-void

    .line 6735
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 6740
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 6741
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6739
    :cond_0
    return-void
.end method

.method private isLockScreenMode()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 4887
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 4888
    .local v3, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v2, 0x0

    .line 4889
    .local v2, "isLockState":Z
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    .line 4891
    .local v2, "isLockState":Z
    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 4892
    .local v4, "windowManager":Landroid/view/IWindowManager;
    const/4 v0, 0x1

    .line 4901
    .local v0, "isCoverOpen":Z
    const/4 v1, 0x0

    .line 4902
    .local v1, "isLockScreenAndCoverOpen":Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4904
    .local v1, "isLockScreenAndCoverOpen":Z
    :goto_0
    return v1

    .local v1, "isLockScreenAndCoverOpen":Z
    :cond_0
    move v1, v5

    .line 4902
    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

    .prologue
    .line 1814
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

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

.method private isQCSupported()Z
    .locals 2

    .prologue
    .line 10862
    sget v0, Landroid/widget/SemHorizontalAbsListView;->sSpenUspLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 10863
    const/4 v0, 0x1

    return v0

    .line 10865
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 10729
    const-string/jumbo v0, "SemHorizontalAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10728
    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6386
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 6387
    .local v1, "action":I
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 6390
    .local v11, "toolType":I
    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_2

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_2

    .line 6391
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    .line 6397
    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_4

    .line 6398
    const/4 v14, 0x3

    if-ne v11, v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 6399
    return-void

    .line 6392
    :cond_2
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    .line 6393
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    goto :goto_0

    .line 6398
    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 6401
    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    .line 6404
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v14

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v14, :cond_6

    .line 6405
    :cond_5
    return-void

    .line 6409
    :cond_6
    const/16 v14, 0x9

    if-ne v1, v14, :cond_8

    .line 6410
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    .line 6411
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6414
    :cond_7
    return-void

    .line 6417
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isMultiWindows()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 6418
    return-void

    .line 6421
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 6422
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6423
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6424
    return-void

    .line 6427
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 6428
    const-string/jumbo v15, "finger_air_view"

    const/16 v16, 0x0

    .line 6427
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 6428
    const/4 v15, 0x1

    .line 6427
    if-ne v14, v15, :cond_f

    const/4 v6, 0x1

    .line 6432
    .local v6, "isFingerAirView":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 6433
    const-string/jumbo v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    .line 6432
    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 6433
    const/4 v15, 0x1

    .line 6432
    if-ne v14, v15, :cond_10

    const/4 v7, 0x1

    .line 6435
    .local v7, "isFingerAirViewPreview":Z
    :goto_3
    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    .line 6438
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHovered()Z

    move-result v14

    if-nez v14, :cond_c

    .line 6439
    const/4 v14, 0x1

    if-ne v11, v14, :cond_b

    .line 6440
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setFingerHovered(Z)V

    .line 6442
    :cond_b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setHovered(Z)V

    .line 6444
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 6445
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 6446
    .local v13, "y":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v9

    .line 6447
    .local v9, "newHoverPosition":I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_11

    const/4 v2, 0x1

    .line 6448
    .local v2, "bChanged":Z
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    .line 6450
    .local v10, "shouldShowSelector":Z
    const/4 v3, 0x0

    .line 6452
    .local v3, "child":Landroid/view/View;
    if-gez v9, :cond_12

    .line 6453
    if-nez v10, :cond_d

    .line 6454
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6457
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_e

    .line 6458
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6459
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 6460
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6462
    :cond_e
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6463
    return-void

    .line 6427
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v6    # "isFingerAirView":Z
    .end local v7    # "isFingerAirViewPreview":Z
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_f
    const/4 v6, 0x0

    .restart local v6    # "isFingerAirView":Z
    goto :goto_2

    .line 6432
    :cond_10
    const/4 v7, 0x0

    .restart local v7    # "isFingerAirViewPreview":Z
    goto :goto_3

    .line 6447
    .restart local v9    # "newHoverPosition":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "bChanged":Z
    goto :goto_4

    .line 6466
    .restart local v3    # "child":Landroid/view/View;
    .restart local v10    # "shouldShowSelector":Z
    :cond_12
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6468
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 6470
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    .line 6472
    .local v5, "foundEllipsizedTextView":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    .line 6474
    .local v8, "isSetFingerHovedInAppWidget":Z
    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_16

    if-eqz v5, :cond_16

    if-eqz v8, :cond_16

    .line 6475
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6476
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6483
    :cond_13
    :goto_5
    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_14

    .line 6484
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    .line 6485
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 6488
    :cond_14
    const/16 v14, 0xa

    if-ne v1, v14, :cond_15

    if-eqz v10, :cond_17

    .line 6385
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "foundEllipsizedTextView":Z
    .end local v8    # "isSetFingerHovedInAppWidget":Z
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_15
    :goto_6
    return-void

    .line 6478
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "foundEllipsizedTextView":Z
    .restart local v8    # "isSetFingerHovedInAppWidget":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v10    # "shouldShowSelector":Z
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_16
    if-nez v10, :cond_13

    .line 6479
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 6496
    .end local v2    # "bChanged":Z
    .end local v3    # "child":Landroid/view/View;
    .end local v5    # "foundEllipsizedTextView":Z
    .end local v8    # "isSetFingerHovedInAppWidget":Z
    .end local v9    # "newHoverPosition":I
    .end local v10    # "shouldShowSelector":Z
    .end local v12    # "x":I
    .end local v13    # "y":I
    :catch_0
    move-exception v4

    .line 6497
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 6489
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "bChanged":Z
    .restart local v3    # "child":Landroid/view/View;
    .restart local v5    # "foundEllipsizedTextView":Z
    .restart local v8    # "isSetFingerHovedInAppWidget":Z
    .restart local v9    # "newHoverPosition":I
    .restart local v10    # "shouldShowSelector":Z
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_17
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    .line 6490
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 6491
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 6492
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 6493
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 6494
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 6925
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    .line 6927
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 6928
    .local v1, "pointerId":I
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    .line 6932
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 6933
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6934
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6935
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6936
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6941
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6924
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    :cond_1
    move v0, v3

    .line 6932
    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 6279
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    .line 6292
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6293
    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6294
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6295
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 6296
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 6298
    :cond_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 6299
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6300
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6303
    .end local v0    # "motionView":Landroid/view/View;
    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    .line 6304
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6305
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6307
    :cond_1
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6308
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 6278
    return-void

    .line 6281
    :pswitch_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_2

    .line 6282
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6284
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    .line 6279
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5984
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 6000
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6001
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 6002
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 6003
    .local v3, "y":I
    invoke-virtual {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 6005
    .local v0, "motionPosition":I
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_1

    .line 6006
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v4, v7, :cond_5

    if-ltz v0, :cond_5

    .line 6007
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    .line 6006
    if-eqz v4, :cond_5

    .line 6011
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6013
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-nez v4, :cond_0

    .line 6014
    new-instance v4, Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-direct {v4, p0, v6}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    .line 6016
    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6029
    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    .line 6031
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6032
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6034
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6035
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6036
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6037
    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6042
    .end local v0    # "motionPosition":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6043
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    .line 6044
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5983
    :cond_3
    return-void

    .line 5986
    :pswitch_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 5987
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v4, :cond_4

    .line 5988
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5990
    :cond_4
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 5991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 5992
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 5993
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 5994
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 5995
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    goto :goto_1

    .line 6018
    .restart local v0    # "motionPosition":I
    .restart local v2    # "x":I
    .restart local v3    # "y":I
    :cond_5
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v4, v7, :cond_1

    .line 6020
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    .line 6021
    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6022
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6023
    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v0

    .line 6024
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->flywheelTouch()V

    goto :goto_0

    .line 5984
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 6054
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 6055
    .local v1, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 6056
    const/4 v1, 0x0

    .line 6057
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6060
    :cond_0
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    .line 6063
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6066
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    .line 6068
    .local v2, "x":I
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    .line 6053
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 6074
    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6079
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 6080
    .local v3, "y":F
    int-to-float v4, v2

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v3, v5}, Landroid/view/View;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 6081
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 6082
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 6083
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 6084
    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 6086
    :cond_3
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    .line 6087
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    .line 6086
    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6088
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6089
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto :goto_0

    .line 6087
    :cond_4
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    goto :goto_1

    .line 6094
    .end local v0    # "motionView":Landroid/view/View;
    .end local v3    # "y":F
    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 6068
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
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 6100
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 6250
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 6253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6254
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 6258
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 6259
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6260
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6262
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6263
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    .line 6272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 6273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    .line 6274
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 6099
    :cond_2
    return-void

    .line 6104
    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6105
    .local v13, "motionPosition":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6106
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 6107
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 6108
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6111
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    .line 6112
    .local v16, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-lez v17, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_5

    const/4 v10, 0x1

    .line 6113
    .local v10, "inList":Z
    :goto_1
    if-eqz v10, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 6172
    .end local v10    # "inList":Z
    .end local v16    # "y":F
    :cond_4
    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6173
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto/16 :goto_0

    .line 6112
    .restart local v16    # "y":F
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 6114
    .restart local v10    # "inList":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 6115
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    .line 6118
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    .line 6119
    .local v14, "performClick":Landroid/widget/SemHorizontalAbsListView$PerformClick;
    iput v13, v14, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    .line 6120
    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 6122
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 6124
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 6125
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    .line 6126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    move-object/from16 v17, v0

    .line 6125
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6127
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 6128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 6129
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6130
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 6131
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 6132
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    .line 6133
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 6134
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 6135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 6136
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 6137
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 6138
    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 6140
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 6142
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 6143
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 6145
    :cond_b
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/SemHorizontalAbsListView$4;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    .line 6157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    .line 6158
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 6157
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6166
    :cond_c
    :goto_4
    return-void

    .line 6126
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    .line 6160
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6161
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 6162
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 6163
    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto :goto_4

    .line 6167
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 6168
    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto/16 :goto_2

    .line 6176
    .end local v4    # "child":Landroid/view/View;
    .end local v10    # "inList":Z
    .end local v13    # "motionPosition":I
    .end local v14    # "performClick":Landroid/widget/SemHorizontalAbsListView$PerformClick;
    .end local v16    # "y":F
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 6177
    .local v5, "childCount":I
    if-lez v5, :cond_18

    .line 6180
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 6181
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 6182
    .local v9, "firstChildLeft":I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .line 6187
    .local v12, "lastChildRight":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    .line 6188
    .local v6, "contentLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 6189
    .local v7, "contentRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_12

    if-lt v9, v6, :cond_12

    .line 6190
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    .line 6191
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_12

    .line 6192
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6193
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6184
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v12    # "lastChildRight":I
    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 6185
    .restart local v9    # "firstChildLeft":I
    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    .restart local v12    # "lastChildRight":I
    goto :goto_5

    .line 6195
    .restart local v6    # "contentLeft":I
    .restart local v7    # "contentRight":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6196
    .local v15, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6199
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    .line 6198
    move/from16 v0, v17

    float-to-int v11, v0

    .line 6204
    .local v11, "initialVelocity":I
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_16

    .line 6205
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_13

    .line 6206
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_16

    .line 6207
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 6208
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_16

    .line 6209
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    .line 6210
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6212
    :cond_15
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    .line 6216
    :cond_16
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6217
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    .line 6219
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 6221
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 6222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    .line 6227
    .end local v6    # "contentLeft":I
    .end local v7    # "contentRight":I
    .end local v9    # "firstChildLeft":I
    .end local v11    # "initialVelocity":I
    .end local v12    # "lastChildRight":I
    .end local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_18
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6228
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 6233
    .end local v5    # "childCount":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_19

    .line 6234
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6236
    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6237
    .restart local v15    # "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 6238
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    .line 6240
    .restart local v11    # "initialVelocity":I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6241
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    .line 6242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    .line 6244
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto/16 :goto_0

    .line 6100
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

.method private positionPopup()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 8373
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 8374
    .local v1, "screenHeight":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 8375
    .local v2, "xy":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 8378
    const/4 v3, 0x1

    aget v3, v2, v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v5, 0x41a00000    # 20.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v0, v3, v4

    .line 8379
    .local v0, "bottomGap":I
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8380
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    .line 8381
    aget v4, v2, v7

    .line 8380
    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8372
    :goto_0
    return-void

    .line 8383
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "manageHotspot"    # Z
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 3349
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_6

    const/4 v1, 0x1

    .line 3350
    .local v1, "positionChanged":Z
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    .line 3351
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 3354
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3355
    .local v3, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3358
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 3359
    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 3360
    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 3361
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 3364
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3365
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_4

    .line 3366
    if-eqz v1, :cond_1

    .line 3369
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3370
    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3372
    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3373
    if-eqz v1, :cond_3

    .line 3374
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 3375
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 3377
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3379
    :cond_3
    if-eqz p3, :cond_4

    .line 3380
    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3384
    :cond_4
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3385
    .local v0, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_5

    .line 3386
    if-eqz v0, :cond_7

    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    .line 3387
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 3388
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    .line 3348
    :cond_5
    return-void

    .line 3349
    .end local v0    # "isChildViewEnabled":Z
    .end local v1    # "positionChanged":Z
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "positionChanged":Z
    goto :goto_0

    .line 3386
    .restart local v0    # "isChildViewEnabled":Z
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_7
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    .prologue
    .line 6332
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$5;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$5;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 6331
    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6746
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 6747
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 6748
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 6745
    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1026
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    .line 1027
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 1028
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 1025
    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4645
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v33, p1, v3

    .line 4646
    .local v33, "rawDeltaX":I
    const/16 v35, 0x0

    .line 4647
    .local v35, "scrollOffsetCorrection":I
    const/16 v34, 0x0

    .line 4648
    .local v34, "scrollConsumedCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    .line 4649
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    .line 4651
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int v3, v3, p1

    .line 4652
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 4651
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4653
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v33, v33, v3

    .line 4654
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    .line 4655
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v34, v3, v4

    .line 4656
    if-eqz p3, :cond_1

    .line 4657
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4658
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 4661
    :cond_1
    move/from16 v20, v33

    .line 4663
    .local v20, "deltaX":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int v3, p1, v3

    add-int v21, v3, v34

    .line 4664
    .local v21, "incrementalDeltaX":I
    :goto_1
    const/16 v22, 0x0

    .line 4666
    .local v22, "lastXCorrection":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    .line 4674
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    .line 4676
    const-string/jumbo v3, "SemHorizontalAbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 4679
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 4683
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 4684
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    .line 4685
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    .line 4686
    .local v32, "parent":Landroid/view/ViewParent;
    if-eqz v32, :cond_3

    .line 4687
    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4692
    .end local v32    # "parent":Landroid/view/ViewParent;
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    .line 4693
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v23, v3, v4

    .line 4700
    .local v23, "motionIndex":I
    :goto_2
    const/16 v26, 0x0

    .line 4701
    .local v26, "motionViewPrevLeft":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4702
    .local v25, "motionView":Landroid/view/View;
    if-eqz v25, :cond_4

    .line 4703
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    .line 4707
    :cond_4
    const/16 v18, 0x0

    .line 4708
    .local v18, "atEdge":Z
    if-eqz v21, :cond_5

    .line 4709
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v18

    .line 4713
    .end local v18    # "atEdge":Z
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4714
    if-eqz v25, :cond_7

    .line 4717
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v27

    .line 4718
    .local v27, "motionViewRealLeft":I
    if-eqz v18, :cond_6

    .line 4721
    move/from16 v0, v21

    neg-int v3, v0

    .line 4722
    sub-int v4, v27, v26

    .line 4721
    sub-int v7, v3, v4

    .line 4723
    .local v7, "overscroll":I
    sub-int v4, v7, v21

    .line 4724
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    .line 4723
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 4725
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    rsub-int/lit8 v22, v3, 0x0

    .line 4726
    if-eqz p3, :cond_6

    .line 4727
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 4728
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 4768
    .end local v7    # "overscroll":I
    :cond_6
    :goto_3
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 4770
    .end local v27    # "motionViewRealLeft":I
    :cond_7
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 4644
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    :cond_8
    :goto_4
    return-void

    .line 4651
    .end local v20    # "deltaX":I
    .end local v21    # "incrementalDeltaX":I
    .end local v22    # "lastXCorrection":I
    :cond_9
    move/from16 v0, v33

    neg-int v3, v0

    goto/16 :goto_0

    .line 4663
    .restart local v20    # "deltaX":I
    :cond_a
    move/from16 v21, v20

    .restart local v21    # "incrementalDeltaX":I
    goto/16 :goto_1

    .line 4697
    .restart local v22    # "lastXCorrection":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    .restart local v23    # "motionIndex":I
    goto/16 :goto_2

    .line 4732
    .restart local v7    # "overscroll":I
    .restart local v25    # "motionView":Landroid/view/View;
    .restart local v26    # "motionViewPrevLeft":I
    .restart local v27    # "motionViewRealLeft":I
    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    .line 4731
    const/4 v8, 0x0

    .line 4732
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v6, p0

    .line 4731
    invoke-virtual/range {v6 .. v15}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    .line 4734
    .local v19, "atOverscrollEdge":Z
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    .line 4736
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 4739
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v31

    .line 4740
    .local v31, "overscrollMode":I
    if-eqz v31, :cond_e

    .line 4741
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    .line 4742
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    .line 4743
    :cond_e
    if-nez v19, :cond_f

    .line 4744
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 4745
    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4747
    :cond_f
    if-lez v21, :cond_11

    .line 4748
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4749
    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 4748
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4750
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    .line 4751
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4753
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 4754
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4753
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4755
    :cond_11
    if-gez v21, :cond_6

    .line 4756
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4757
    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 4756
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4758
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    .line 4759
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4761
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4762
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    .line 4761
    sub-int/2addr v3, v4

    .line 4762
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 4763
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 4762
    const/4 v6, 0x0

    .line 4761
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    .line 4772
    .end local v7    # "overscroll":I
    .end local v19    # "atOverscrollEdge":Z
    .end local v23    # "motionIndex":I
    .end local v25    # "motionView":Landroid/view/View;
    .end local v26    # "motionViewPrevLeft":I
    .end local v27    # "motionViewRealLeft":I
    .end local v31    # "overscrollMode":I
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 4773
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    .line 4774
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v30, v0

    .line 4775
    .local v30, "oldScroll":I
    sub-int v29, v30, v21

    .line 4776
    .local v29, "newScroll":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_19

    const/16 v28, 0x1

    .line 4778
    .local v28, "newDirection":I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    if-nez v3, :cond_14

    .line 4779
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    .line 4782
    :cond_14
    move/from16 v0, v21

    neg-int v9, v0

    .line 4783
    .local v9, "overScrollDistance":I
    if-gez v29, :cond_1a

    if-ltz v30, :cond_1a

    .line 4784
    :cond_15
    move/from16 v0, v30

    neg-int v9, v0

    .line 4785
    add-int v21, v21, v9

    .line 4790
    :goto_6
    if-eqz v9, :cond_16

    .line 4791
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    .line 4792
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    .line 4791
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 4792
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    .line 4791
    invoke-virtual/range {v8 .. v17}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    .line 4793
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v31

    .line 4794
    .restart local v31    # "overscrollMode":I
    if-eqz v31, :cond_1c

    .line 4795
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_16

    .line 4796
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4819
    .end local v31    # "overscrollMode":I
    :cond_16
    :goto_7
    if-eqz v21, :cond_18

    .line 4821
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    if-eqz v3, :cond_17

    .line 4822
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollX:I

    .line 4823
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 4826
    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    .line 4828
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4832
    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->findClosestMotionRow(I)I

    move-result v24

    .line 4834
    .local v24, "motionPosition":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 4835
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .line 4836
    .restart local v25    # "motionView":Landroid/view/View;
    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 4837
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 4838
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 4840
    .end local v24    # "motionPosition":I
    .end local v25    # "motionView":Landroid/view/View;
    :cond_18
    add-int/lit8 v3, p1, 0x0

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 4841
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    goto/16 :goto_4

    .line 4776
    .end local v9    # "overScrollDistance":I
    .end local v28    # "newDirection":I
    :cond_19
    const/16 v28, -0x1

    .restart local v28    # "newDirection":I
    goto/16 :goto_5

    .line 4783
    .restart local v9    # "overScrollDistance":I
    :cond_1a
    if-lez v29, :cond_1b

    if-lez v30, :cond_15

    .line 4787
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_6

    .line 4797
    .restart local v31    # "overscrollMode":I
    :cond_1c
    if-lez v33, :cond_1e

    .line 4798
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4799
    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 4798
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4800
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 4801
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4803
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 4804
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 4803
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7

    .line 4806
    :cond_1e
    if-gez v33, :cond_16

    .line 4807
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 4808
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int v5, p2, v5

    int-to-float v5, v5

    .line 4807
    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    .line 4809
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4810
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 4812
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 4813
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    .line 4812
    sub-int/2addr v3, v4

    .line 4813
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 4814
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 4813
    const/4 v6, 0x0

    .line 4812
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7

    .line 4836
    .end local v31    # "overscrollMode":I
    .restart local v24    # "motionPosition":I
    .restart local v25    # "motionView":Landroid/view/View;
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_8
.end method

.method private semGetEnableVibrationAtLongPress()Z
    .locals 1

    .prologue
    .line 1008
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private semNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1568
    const/4 v0, 0x0

    .line 1569
    .local v0, "handledNotifyMultiSelect":Z
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v8}, Landroid/widget/AdapterView;->semNotifyMultiSelectedState(Landroid/view/View;IJZZZ)Z

    move-result v0

    .line 1571
    .local v0, "handledNotifyMultiSelect":Z
    return v0
.end method

.method private setFastScrollerAlwaysVisibleUiThread(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1805
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setAlwaysShow(Z)V

    .line 1804
    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1741
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_2

    .line 1742
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    .line 1748
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    .line 1750
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 1751
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    .line 1740
    :cond_1
    return-void

    .line 1743
    :cond_2
    if-eqz p1, :cond_0

    .line 1744
    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    .line 1745
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 3192
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3194
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1

    .line 3195
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3202
    .local v0, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    .line 3203
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    .line 3205
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    .line 3206
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3191
    return-void

    .line 3196
    .end local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3197
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_2
    move-object v0, v1

    .line 3199
    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 21
    .param p1, "where"    # I

    .prologue
    .line 10869
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 10870
    .local v15, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 10871
    .local v9, "h":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v9, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v7, v16, v17

    .line 10872
    .local v7, "contentH":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    div-int/lit8 v17, v7, 0x2

    add-int v5, v16, v17

    .line 10874
    .local v5, "centerY":I
    const/4 v4, 0x0

    .line 10875
    .local v4, "btnW":I
    const/4 v3, 0x0

    .line 10877
    .local v3, "btnH":I
    const/4 v13, 0x0

    .line 10878
    .local v13, "paddingLeft":I
    const/4 v14, 0x0

    .line 10880
    .local v14, "paddingRight":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10881
    .local v11, "oldLocation":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    .line 10883
    const/4 v6, 0x1

    .line 10884
    .local v6, "checkBoundary":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    .line 10885
    .local v2, "basePkgName":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string/jumbo v16, "cocktailbarservice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 10888
    const/4 v6, 0x0

    .line 10893
    :cond_0
    if-eqz v6, :cond_2

    .line 10894
    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v10

    .line 10895
    .local v10, "locOnScr":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 10896
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 10899
    .local v8, "dm":Landroid/util/DisplayMetrics;
    const/16 v16, 0x1

    aget v16, v10, v16

    if-gez v16, :cond_1

    .line 10900
    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    neg-int v12, v0

    .line 10901
    .local v12, "overlappedH":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    .line 10902
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    add-int v5, v5, v16

    .line 10907
    .end local v12    # "overlappedH":I
    :cond_1
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 10908
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    sub-int v12, v16, v17

    .line 10909
    .restart local v12    # "overlappedH":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_2

    .line 10910
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    sub-int v5, v5, v16

    .line 10915
    .end local v8    # "dm":Landroid/util/DisplayMetrics;
    .end local v10    # "locOnScr":[I
    .end local v12    # "overlappedH":I
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 10916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/Rect;->left:I

    .line 10917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 10923
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 10959
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10960
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 10868
    return-void

    .line 10919
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 10920
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    goto :goto_0

    .line 10925
    :pswitch_0
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 10929
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_4

    .line 10930
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080542

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10931
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080543

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10934
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10936
    new-instance v16, Landroid/graphics/Rect;

    add-int/lit8 v17, v13, 0x0

    div-int/lit8 v18, v3, 0x2

    sub-int v18, v5, v18

    add-int v19, v4, v13

    div-int/lit8 v20, v3, 0x2

    add-int v20, v20, v5

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10940
    :pswitch_2
    new-instance v16, Landroid/graphics/Rect;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10944
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_5

    .line 10945
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080540

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    .line 10946
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080541

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 10949
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 10950
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 10951
    new-instance v16, Landroid/graphics/Rect;

    sub-int v17, v15, v3

    sub-int v17, v17, v14

    div-int/lit8 v18, v3, 0x2

    sub-int v18, v5, v18

    sub-int v19, v15, v14

    div-int/lit8 v20, v3, 0x2

    add-int v20, v20, v5

    invoke-direct/range {v16 .. v20}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 10923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private showPopup()V
    .locals 1

    .prologue
    .line 8364
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 8365
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8366
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    .line 8368
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    .line 8362
    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "vtev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 4599
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v1, p1, v7

    .line 4600
    .local v1, "deltaX":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4601
    .local v2, "distance":I
    iget v7, p0, Landroid/view/View;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v8

    .line 4602
    .local v5, "overscroll":Z
    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    .line 4603
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_7

    .line 4604
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    .line 4605
    if-eqz v5, :cond_3

    .line 4606
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4607
    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 4612
    :goto_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4613
    invoke-virtual {p0, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4614
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4615
    .local v4, "motionView":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 4616
    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4619
    :cond_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    .line 4625
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4626
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 4627
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    .line 4626
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "motionView":Landroid/view/View;
    .end local v5    # "overscroll":Z
    :cond_2
    move v5, v9

    .line 4601
    goto :goto_0

    .line 4609
    .restart local v5    # "overscroll":Z
    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4610
    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    .line 4630
    .restart local v4    # "motionView":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 4633
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 4634
    .local v6, "parent":Landroid/view/ViewParent;
    if-eqz v6, :cond_6

    .line 4635
    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 4637
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    .line 4638
    return v8

    .line 4641
    .end local v4    # "motionView":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/ViewParent;
    :cond_7
    return v9
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    .prologue
    .line 1580
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 1581
    .local v2, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1582
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1583
    const/16 v7, 0xb

    .line 1582
    if-lt v6, v7, :cond_1

    const/4 v5, 0x1

    .line 1584
    .local v5, "useActivated":Z
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 1585
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1586
    .local v0, "child":Landroid/view/View;
    add-int v4, v2, v3

    .line 1588
    .local v4, "position":I
    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    .line 1589
    check-cast v0, Landroid/widget/Checkable;

    .end local v0    # "child":Landroid/view/View;
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 1584
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1582
    .end local v3    # "i":I
    .end local v4    # "position":I
    .end local v5    # "useActivated":Z
    :cond_1
    const/4 v5, 0x0

    .restart local v5    # "useActivated":Z
    goto :goto_0

    .line 1590
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "position":I
    :cond_2
    if-eqz v5, :cond_0

    .line 1591
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    .line 1579
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "position":I
    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 2202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2203
    const v1, 0x1080062

    .line 2202
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2201
    return-void
.end method


# virtual methods
.method public addExtraPaddingInLeftHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4932
    int-to-float v0, p1

    .line 4933
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4932
    const/4 v2, 0x1

    .line 4931
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 4933
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4931
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 4930
    return-void
.end method

.method public addExtraPaddingInRightHoverArea(I)V
    .locals 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 4941
    int-to-float v0, p1

    .line 4942
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 4941
    const/4 v2, 0x1

    .line 4940
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 4942
    const/high16 v1, 0x3f000000    # 0.5f

    .line 4940
    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    .line 4939
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

    .prologue
    .line 6950
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 6951
    .local v2, "count":I
    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 6952
    .local v3, "firstPosition":I
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 6954
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-nez v0, :cond_0

    .line 6955
    return-void

    .line 6958
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 6959
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 6960
    .local v1, "child":Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6961
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6963
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 6958
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6949
    .end local v1    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 8888
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 8823
    return-void
.end method

.method public canScrollList(I)Z
    .locals 10
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 7610
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7611
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 7612
    return v7

    .line 7615
    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7616
    .local v2, "firstPosition":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 7617
    .local v5, "listPadding":Landroid/graphics/Rect;
    if-lez p1, :cond_5

    .line 7619
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    .line 7622
    .local v4, "lastRight":I
    :goto_0
    add-int v3, v2, v0

    .line 7623
    .local v3, "lastPosition":I
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_4

    if-lez v2, :cond_3

    :cond_1
    :goto_1
    return v6

    .line 7620
    .end local v3    # "lastPosition":I
    .end local v4    # "lastRight":I
    :cond_2
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    .restart local v4    # "lastRight":I
    goto :goto_0

    .restart local v3    # "lastPosition":I
    :cond_3
    move v6, v7

    .line 7623
    goto :goto_1

    :cond_4
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v3, v8, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    if-le v4, v8, :cond_3

    goto :goto_1

    .line 7626
    .end local v3    # "lastPosition":I
    .end local v4    # "lastRight":I
    :cond_5
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_7

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 7628
    .local v1, "firstLeft":I
    :goto_2
    add-int v3, v2, v0

    .line 7629
    .restart local v3    # "lastPosition":I
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_9

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v8, :cond_8

    :cond_6
    :goto_3
    return v6

    .line 7627
    .end local v1    # "firstLeft":I
    .end local v3    # "lastPosition":I
    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    .restart local v1    # "firstLeft":I
    goto :goto_2

    .restart local v3    # "lastPosition":I
    :cond_8
    move v6, v7

    .line 7629
    goto :goto_3

    :cond_9
    if-gtz v2, :cond_6

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-ge v1, v8, :cond_8

    goto :goto_3
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8723
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

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
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8955
    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1393
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1395
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 1396
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1398
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1391
    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    .prologue
    .line 8772
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    .line 8773
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8774
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 8775
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8776
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 8771
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2648
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2650
    .local v0, "count":I
    if-lez v0, :cond_6

    .line 2651
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_5

    .line 2652
    mul-int/lit8 v1, v0, 0x64

    .line 2654
    .local v1, "extent":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    .line 2656
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2657
    .local v5, "viewLast":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2658
    .local v2, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2659
    .local v6, "width":I
    if-lez v6, :cond_0

    .line 2660
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    add-int/2addr v1, v7

    .line 2662
    :cond_0
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2663
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2664
    .local v3, "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2665
    if-lez v6, :cond_1

    .line 2666
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    .line 2668
    :cond_1
    return v1

    .line 2670
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewLast":Landroid/view/View;
    .end local v6    # "width":I
    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2671
    .restart local v4    # "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 2672
    .restart local v2    # "left":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2673
    .restart local v6    # "width":I
    if-lez v6, :cond_3

    .line 2674
    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    add-int/2addr v1, v7

    .line 2676
    :cond_3
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2677
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2678
    .restart local v3    # "right":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 2679
    if-lez v6, :cond_4

    .line 2680
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    .line 2682
    :cond_4
    return v1

    .line 2686
    .end local v1    # "extent":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "view":Landroid/view/View;
    .end local v6    # "width":I
    :cond_5
    const/4 v7, 0x1

    return v7

    .line 2689
    :cond_6
    return v8
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 13

    .prologue
    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v11, 0x0

    .line 2711
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2712
    .local v2, "firstPosition":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2713
    .local v0, "childCount":I
    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v4, v8, -0x1

    .line 2715
    .local v4, "lastPosition":I
    if-ltz v2, :cond_4

    if-lez v0, :cond_4

    .line 2716
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 2717
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_0

    .line 2718
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2719
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    .line 2721
    .local v5, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2722
    .local v7, "width":I
    if-lez v7, :cond_4

    .line 2723
    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v4

    mul-int/lit8 v8, v8, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    .line 2724
    iget v9, p0, Landroid/view/View;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v12

    float-to-int v9, v9

    .line 2723
    add-int/2addr v8, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    return v8

    .line 2727
    .end local v5    # "left":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "width":I
    :cond_0
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2728
    .restart local v6    # "view":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2729
    .restart local v5    # "left":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 2730
    .restart local v7    # "width":I
    if-lez v7, :cond_4

    .line 2731
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

    .line 2732
    iget v9, p0, Landroid/view/View;->mScrollX:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v12

    float-to-int v9, v9

    .line 2731
    add-int/2addr v8, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    return v8

    .line 2737
    .end local v5    # "left":I
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "width":I
    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2738
    .local v1, "count":I
    if-nez v2, :cond_2

    .line 2739
    const/4 v3, 0x0

    .line 2745
    .local v3, "index":I
    :goto_0
    int-to-float v8, v2

    int-to-float v9, v0

    int-to-float v10, v3

    int-to-float v11, v1

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int v8, v8

    return v8

    .line 2740
    .end local v3    # "index":I
    :cond_2
    add-int v8, v2, v0

    if-ne v8, v1, :cond_3

    .line 2741
    move v3, v1

    .restart local v3    # "index":I
    goto :goto_0

    .line 2743
    .end local v3    # "index":I
    :cond_3
    div-int/lit8 v8, v0, 0x2

    add-int v3, v2, v8

    .restart local v3    # "index":I
    goto :goto_0

    .line 2748
    .end local v1    # "count":I
    .end local v3    # "index":I
    :cond_4
    return v11
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2771
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    .line 2772
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2773
    .local v0, "result":I
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_0

    .line 2775
    iget v1, p0, Landroid/view/View;->mScrollX:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/widget/AdapterView;->mItemCount:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2780
    :cond_0
    :goto_0
    return v0

    .line 2778
    .end local v0    # "result":I
    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    .prologue
    .line 8125
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 8127
    const/4 v2, 0x0

    .line 8128
    .local v2, "checkedCountChanged":Z
    const/4 v9, 0x0

    .local v9, "checkedIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 8129
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 8130
    .local v6, "id":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 8132
    .local v5, "lastPos":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v12

    .line 8133
    .local v12, "lastPosId":J
    cmp-long v3, v6, v12

    if-eqz v3, :cond_3

    .line 8135
    add-int/lit8 v3, v5, -0x14

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 8136
    .local v17, "start":I
    add-int/lit8 v3, v5, 0x14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 8137
    .local v10, "end":I
    const/4 v11, 0x0

    .line 8138
    .local v11, "found":Z
    move/from16 v16, v17

    .local v16, "searchPos":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    .line 8139
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    .line 8140
    .local v14, "searchId":J
    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    .line 8141
    const/4 v11, 0x1

    .line 8142
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 8143
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 8148
    .end local v14    # "searchId":J
    :cond_0
    if-nez v11, :cond_1

    .line 8149
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    .line 8150
    add-int/lit8 v9, v9, -0x1

    .line 8151
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 8152
    const/4 v2, 0x1

    .line 8153
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    .line 8154
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 8155
    const/4 v8, 0x0

    .line 8154
    invoke-virtual/range {v3 .. v8}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 8128
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 8138
    .restart local v10    # "end":I
    .restart local v11    # "found":Z
    .restart local v14    # "searchId":J
    .restart local v16    # "searchPos":I
    .restart local v17    # "start":I
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 8159
    .end local v10    # "end":I
    .end local v11    # "found":Z
    .end local v14    # "searchId":J
    .end local v16    # "searchPos":I
    .end local v17    # "start":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 8163
    .end local v5    # "lastPos":I
    .end local v6    # "id":J
    .end local v12    # "lastPosId":J
    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    .line 8164
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->invalidate()V

    .line 8123
    :cond_5
    return-void
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 4091
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method createPositionScroller()Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
    .locals 1

    .prologue
    .line 7307
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    .prologue
    .line 9090
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9089
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/DragEvent;

    .prologue
    .line 5315
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 5317
    .local v2, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    .line 5318
    .local v5, "cd":Landroid/content/ClipDescription;
    if-eqz v5, :cond_2

    const-string/jumbo v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 5323
    const/4 v13, 0x1

    if-ne v2, v13, :cond_3

    .line 5324
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_0

    .line 5326
    const/high16 v13, 0x41c80000    # 25.0f

    .line 5327
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 5326
    const/4 v15, 0x1

    .line 5325
    invoke-static {v15, v13, v14}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v13

    .line 5327
    const/high16 v14, 0x3f000000    # 0.5f

    .line 5325
    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    .line 5329
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_1
    const/4 v13, 0x1

    return v13

    .line 5319
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5332
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 5333
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 5334
    .local v12, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 5335
    .local v7, "childCount":I
    const/4 v8, 0x0

    .line 5336
    .local v8, "contentRight":I
    const/4 v10, 0x0

    .line 5337
    .local v10, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 5341
    .local v9, "count":I
    if-eqz v7, :cond_4

    .line 5342
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 5346
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v13, v14, :cond_c

    const/4 v4, 0x1

    .line 5348
    .local v4, "canScrollRight":Z
    :goto_0
    if-nez v4, :cond_5

    if-lez v9, :cond_5

    .line 5349
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5350
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_d

    .line 5351
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-le v13, v14, :cond_e

    const/4 v4, 0x1

    .line 5355
    .end local v4    # "canScrollRight":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v13, :cond_f

    const/4 v3, 0x1

    .line 5357
    .local v3, "canScrollLeft":Z
    :goto_2
    if-nez v3, :cond_6

    .line 5358
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_6

    .line 5359
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 5360
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_10

    const/4 v3, 0x1

    .line 5365
    .end local v3    # "canScrollLeft":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-le v11, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-ge v11, v13, :cond_11

    .line 5368
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 5369
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 5372
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_a

    .line 5373
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5376
    :cond_a
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5377
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5378
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5381
    const/4 v13, 0x2

    if-ne v2, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_b

    .line 5382
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5383
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5386
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5346
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 5350
    .restart local v4    # "canScrollRight":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_d
    const/4 v4, 0x1

    .local v4, "canScrollRight":Z
    goto/16 :goto_1

    .line 5351
    .local v4, "canScrollRight":Z
    :cond_e
    const/4 v4, 0x0

    .local v4, "canScrollRight":Z
    goto/16 :goto_1

    .line 5355
    .end local v4    # "canScrollRight":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 5360
    .restart local v3    # "canScrollLeft":Z
    .restart local v6    # "child":Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    .local v3, "canScrollLeft":Z
    goto :goto_3

    .line 5366
    .end local v3    # "canScrollLeft":Z
    .end local v6    # "child":Landroid/view/View;
    :cond_11
    if-lez v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v13

    if-gt v12, v13, :cond_7

    if-nez v3, :cond_12

    if-eqz v4, :cond_7

    .line 5390
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v13, :cond_13

    .line 5391
    new-instance v13, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5393
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_14

    .line 5394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5396
    :cond_14
    packed-switch v2, :pswitch_data_0

    .line 5467
    :cond_15
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    .line 5398
    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5399
    if-ltz v11, :cond_16

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_16

    .line 5401
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5402
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5404
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5405
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 5407
    :cond_16
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_15

    if-gt v11, v8, :cond_15

    .line 5409
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5410
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5412
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5413
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    .line 5419
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_17

    .line 5420
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5423
    :cond_17
    if-ltz v11, :cond_18

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_18

    .line 5425
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5426
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5428
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5429
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 5431
    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_15

    if-gt v11, v8, :cond_15

    .line 5433
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    .line 5434
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5436
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5437
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 5444
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_19

    .line 5445
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5446
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    .line 5452
    :cond_19
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 5453
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 5455
    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    .line 5457
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5458
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5459
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5460
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_4

    .line 5396
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x0

    .line 3401
    const/4 v4, 0x0

    .line 3402
    .local v4, "saveCount":I
    const/4 v7, 0x0

    .line 3403
    .local v7, "trackChildLeft":I
    const/4 v2, 0x0

    .line 3404
    .local v2, "firstChildPosition":I
    const/4 v3, 0x0

    .line 3406
    .local v3, "lastChildPosition":I
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_0

    const/4 v0, 0x1

    .line 3407
    .local v0, "clipToPadding":Z
    :cond_0
    if-eqz v0, :cond_1

    .line 3408
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3409
    iget v5, p0, Landroid/view/View;->mScrollX:I

    .line 3410
    .local v5, "scrollX":I
    iget v6, p0, Landroid/view/View;->mScrollY:I

    .line 3411
    .local v6, "scrollY":I
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v9, v6

    .line 3412
    iget v10, p0, Landroid/view/View;->mRight:I

    add-int/2addr v10, v5

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    .line 3413
    iget v11, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v11, v6

    iget v12, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v11, v12

    .line 3411
    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3414
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3417
    .end local v5    # "scrollX":I
    .end local v6    # "scrollY":I
    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3418
    .local v1, "drawSelectorOnTop":Z
    if-nez v1, :cond_2

    .line 3419
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3422
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3424
    if-eqz v1, :cond_3

    .line 3425
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 3428
    :cond_3
    if-eqz v0, :cond_4

    .line 3429
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3430
    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3433
    :cond_4
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_8

    .line 3434
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-nez v8, :cond_5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-nez v8, :cond_5

    .line 3435
    return-void

    .line 3437
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 3438
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    .line 3440
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-gt v8, v3, :cond_7

    .line 3441
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 3442
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6

    .line 3443
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 3445
    :cond_6
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 3448
    :cond_7
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :goto_0
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 3449
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-le v8, v9, :cond_a

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    :goto_1
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 3451
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 3452
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3453
    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3400
    :cond_8
    return-void

    .line 3448
    :cond_9
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_0

    .line 3449
    :cond_a
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4957
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 4958
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v13

    .line 4961
    .local v13, "inputDevice":Landroid/view/InputDevice;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 4962
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    .line 4969
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    .line 4971
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    .line 4972
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    .line 4971
    if-eqz v24, :cond_7

    .line 4972
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 4973
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    .line 4979
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    .line 4982
    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_d

    .line 4983
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v21

    .line 4985
    .local v21, "toolType":I
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 4988
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    .line 4993
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 4995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 4996
    const-string/jumbo v25, "pen_hovering"

    const/16 v26, 0x0

    .line 4995
    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    .line 4996
    const/16 v25, 0x1

    .line 4995
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    .line 4998
    .local v16, "isHoveringOn":Z
    :goto_2
    const/4 v15, 0x0

    .line 5001
    .local v15, "isHoverListScrollOn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    .line 5002
    const-string/jumbo v25, "car_mode_on"

    const/16 v26, 0x0

    const/16 v27, -0x3

    .line 5001
    invoke-static/range {v24 .. v27}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    .line 5002
    const/16 v25, 0x1

    .line 5001
    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/4 v14, 0x1

    .line 5004
    .local v14, "isCarModeOn":Z
    :goto_3
    if-eqz v16, :cond_2

    if-eqz v14, :cond_3

    .line 5005
    :cond_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5008
    :cond_3
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 5014
    :cond_4
    :goto_4
    if-nez v15, :cond_5

    .line 5015
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    .line 5020
    .end local v14    # "isCarModeOn":Z
    .end local v15    # "isHoverListScrollOn":Z
    .end local v16    # "isHoveringOn":Z
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    const/16 v24, 0x3

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 5021
    const/16 v18, 0x0

    .line 5022
    .local v18, "isMouseHoveringOn":Z
    const/16 v17, 0x0

    .line 5024
    .local v17, "isMouseHoverListScrollOn":Z
    if-eqz v18, :cond_c

    if-eqz v17, :cond_c

    .line 5045
    .end local v17    # "isMouseHoverListScrollOn":Z
    .end local v18    # "isMouseHoveringOn":Z
    .end local v21    # "toolType":I
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    .line 5046
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

    .line 4976
    :cond_7
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    .line 4989
    .restart local v21    # "toolType":I
    :cond_8
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    goto/16 :goto_1

    .line 4995
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "isHoveringOn":Z
    goto/16 :goto_2

    .line 5001
    .restart local v15    # "isHoverListScrollOn":Z
    :cond_a
    const/4 v14, 0x0

    .restart local v14    # "isCarModeOn":Z
    goto :goto_3

    .line 5009
    :cond_b
    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 5010
    const/16 v24, 0x4e35

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5011
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_4

    .line 5025
    .end local v14    # "isCarModeOn":Z
    .end local v15    # "isHoverListScrollOn":Z
    .end local v16    # "isHoveringOn":Z
    .restart local v17    # "isMouseHoverListScrollOn":Z
    .restart local v18    # "isMouseHoveringOn":Z
    :cond_c
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    goto :goto_5

    .line 5028
    .end local v17    # "isMouseHoverListScrollOn":Z
    .end local v18    # "isMouseHoveringOn":Z
    .end local v21    # "toolType":I
    :cond_d
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_11

    .line 5029
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    .line 5030
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v24, v0

    .line 5029
    if-eqz v24, :cond_10

    .line 5031
    :goto_6
    const/16 v24, 0x4e35

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5032
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5030
    :cond_f
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    goto :goto_6

    .line 5033
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 5034
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5035
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5037
    :cond_11
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_6

    .line 5038
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 5039
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5040
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    .line 5050
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 5051
    .local v22, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    .line 5052
    .local v23, "y":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 5053
    .local v8, "childCount":I
    const/4 v9, 0x0

    .line 5054
    .local v9, "contentLeft":I
    const/4 v10, 0x0

    .line 5055
    .local v10, "contentRight":I
    const/16 v20, 0x0

    .line 5056
    .local v20, "lastChildRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 5061
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    if-nez v24, :cond_13

    .line 5062
    new-instance v24, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5065
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v24, v0

    if-gtz v24, :cond_15

    .line 5067
    :cond_14
    const/high16 v24, 0x41c80000    # 25.0f

    .line 5068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    .line 5067
    const/16 v26, 0x1

    .line 5066
    move/from16 v0, v26

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v24

    .line 5068
    const/high16 v25, 0x3f000000    # 0.5f

    .line 5066
    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 5071
    const/high16 v24, 0x41c80000    # 25.0f

    .line 5072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    .line 5071
    const/16 v26, 0x1

    .line 5070
    move/from16 v0, v26

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v24

    .line 5072
    const/high16 v25, 0x3f000000    # 0.5f

    .line 5070
    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 5075
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_21

    .line 5076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 5077
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    .line 5083
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v24, v0

    if-eqz v24, :cond_27

    .line 5085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    if-lez v24, :cond_22

    const/4 v6, 0x1

    .line 5087
    .local v6, "canScrollRight":Z
    :goto_8
    if-nez v6, :cond_16

    if-lez v11, :cond_16

    .line 5088
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5089
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_23

    .line 5090
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_24

    const/4 v6, 0x1

    .line 5093
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_16
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    add-int v24, v24, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_25

    const/4 v5, 0x1

    .line 5095
    .local v5, "canScrollLeft":Z
    :goto_a
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    .line 5096
    add-int/lit8 v24, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5097
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_26

    const/4 v5, 0x1

    .line 5117
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_17
    :goto_b
    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e

    const/16 v19, 0x1

    .line 5119
    .local v19, "isPossibleTooltype":Z
    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v24, v0

    sub-int v24, v10, v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_2f

    .line 5126
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_19

    .line 5127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 5128
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5131
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_1a

    .line 5132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 5135
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v24, v0

    sub-int v24, v10, v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_38

    .line 5136
    :cond_1b
    :goto_d
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5139
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-nez v24, :cond_1d

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_1e

    .line 5140
    :cond_1d
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5142
    :cond_1e
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5143
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5144
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5145
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 5147
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    .line 5148
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 5149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1f

    .line 5150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5155
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v24, v0

    if-eqz v24, :cond_20

    .line 5156
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5157
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5160
    :cond_20
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

    .line 5079
    .end local v19    # "isPossibleTooltype":Z
    :cond_21
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    .line 5080
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    goto/16 :goto_7

    .line 5085
    :cond_22
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 5089
    .restart local v6    # "canScrollRight":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_23
    const/4 v6, 0x1

    .local v6, "canScrollRight":Z
    goto/16 :goto_9

    .line 5090
    .local v6, "canScrollRight":Z
    :cond_24
    const/4 v6, 0x0

    .local v6, "canScrollRight":Z
    goto/16 :goto_9

    .line 5093
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 5097
    .restart local v5    # "canScrollLeft":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_26
    const/4 v5, 0x0

    .local v5, "canScrollLeft":Z
    goto/16 :goto_b

    .line 5101
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    add-int v24, v24, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_29

    const/4 v6, 0x1

    .line 5103
    .local v6, "canScrollRight":Z
    :goto_e
    if-nez v6, :cond_28

    if-lez v11, :cond_28

    .line 5104
    add-int/lit8 v24, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5105
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_2a

    .line 5106
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2b

    const/4 v6, 0x1

    .line 5109
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_28
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    if-lez v24, :cond_2c

    const/4 v5, 0x1

    .line 5111
    .local v5, "canScrollLeft":Z
    :goto_10
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    .line 5112
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5113
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_2d

    const/4 v5, 0x1

    .local v5, "canScrollLeft":Z
    goto/16 :goto_b

    .line 5101
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_29
    const/4 v6, 0x0

    goto :goto_e

    .line 5105
    .restart local v6    # "canScrollRight":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2a
    const/4 v6, 0x1

    .local v6, "canScrollRight":Z
    goto :goto_f

    .line 5106
    .local v6, "canScrollRight":Z
    :cond_2b
    const/4 v6, 0x0

    .local v6, "canScrollRight":Z
    goto :goto_f

    .line 5109
    .end local v6    # "canScrollRight":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_2c
    const/4 v5, 0x0

    goto :goto_10

    .line 5113
    .local v5, "canScrollLeft":Z
    .restart local v7    # "child":Landroid/view/View;
    :cond_2d
    const/4 v5, 0x0

    .local v5, "canScrollLeft":Z
    goto/16 :goto_b

    .line 5117
    .end local v5    # "canScrollLeft":Z
    .end local v7    # "child":Landroid/view/View;
    :cond_2e
    const/16 v19, 0x0

    .restart local v19    # "isPossibleTooltype":Z
    goto/16 :goto_c

    .line 5119
    :cond_2f
    if-lez v23, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_18

    .line 5120
    if-nez v5, :cond_30

    if-eqz v6, :cond_18

    .line 5121
    :cond_30
    move/from16 v0, v22

    if-lt v0, v9, :cond_31

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_31

    if-eqz v5, :cond_36

    .line 5122
    :cond_31
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v24, v0

    sub-int v24, v10, v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_32

    move/from16 v0, v22

    if-gt v0, v10, :cond_32

    if-eqz v6, :cond_37

    .line 5123
    :cond_32
    :goto_12
    if-eqz v19, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 5124
    :cond_33
    if-eqz v19, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isLockScreenMode()Z

    move-result v24

    .line 5119
    if-nez v24, :cond_18

    .line 5163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-nez v24, :cond_34

    .line 5164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5167
    :cond_34
    packed-switch v4, :pswitch_data_0

    .line 5302
    :cond_35
    :goto_13
    :pswitch_0
    const/16 v24, 0x1

    return v24

    .line 5121
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v24, v0

    .line 5119
    if-nez v24, :cond_18

    goto :goto_11

    .line 5122
    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v24, v0

    .line 5119
    if-nez v24, :cond_18

    goto :goto_12

    .line 5135
    :cond_38
    if-lez v23, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1c

    goto/16 :goto_d

    .line 5169
    :pswitch_1
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5171
    move/from16 v0, v22

    if-lt v0, v9, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_39

    .line 5173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    .line 5174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5175
    const/16 v24, 0x4e31

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5177
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5181
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v24

    if-eqz v24, :cond_35

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v24

    if-eqz v24, :cond_35

    .line 5182
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5183
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5186
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v24, v0

    sub-int v24, v10, v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_35

    move/from16 v0, v22

    if-gt v0, v10, :cond_35

    .line 5188
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    .line 5189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5190
    const/16 v24, 0x4e2d

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5192
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5196
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v24

    if-eqz v24, :cond_35

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v24

    if-eqz v24, :cond_35

    .line 5197
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5198
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5206
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-nez v24, :cond_3a

    .line 5207
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5208
    const/16 v24, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5209
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

    .line 5212
    :cond_3a
    move/from16 v0, v22

    if-lt v0, v9, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_3d

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    .line 5215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5218
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3c

    .line 5219
    :cond_3b
    const/16 v24, 0x4e31

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5222
    :cond_3c
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5226
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v24

    if-eqz v24, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v24, v0

    if-nez v24, :cond_35

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v24

    if-eqz v24, :cond_35

    .line 5227
    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5228
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5231
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v24, v0

    sub-int v24, v10, v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-lt v0, v1, :cond_40

    move/from16 v0, v22

    if-gt v0, v10, :cond_40

    .line 5233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    .line 5234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5237
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3f

    .line 5238
    :cond_3e
    const/16 v24, 0x4e2d

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5241
    :cond_3f
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5245
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v24

    if-eqz v24, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v24, v0

    if-nez v24, :cond_35

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v24

    if-eqz v24, :cond_35

    .line 5246
    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    .line 5247
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    .line 5252
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_41

    .line 5253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 5256
    :cond_41
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5258
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5259
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5260
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5261
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5262
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_13

    .line 5268
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_42

    .line 5269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    .line 5272
    :cond_42
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    .line 5274
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5275
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5276
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5277
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5278
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    .line 5281
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_44

    .line 5283
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v12

    .line 5284
    .local v12, "im":Landroid/hardware/input/InputManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v24

    if-eqz v24, :cond_43

    if-eqz v12, :cond_44

    const/16 v24, -0x1

    const/16 v25, -0x100

    const/16 v26, 0x140

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v12, v0, v1, v2}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v24

    if-nez v24, :cond_44

    .line 5285
    :cond_43
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5286
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5290
    .end local v12    # "im":Landroid/hardware/input/InputManager;
    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v24, v0

    if-eqz v24, :cond_45

    .line 5291
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    .line 5292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_45

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_45

    .line 5293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5297
    :cond_45
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

    .line 5167
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
    .param p1, "pressed"    # Z

    .prologue
    .line 4485
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 31
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 5477
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    .line 5478
    .local v25, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 5479
    .local v26, "y":I
    const/4 v12, 0x0

    .line 5480
    .local v12, "contentLeft":I
    const/4 v13, 0x0

    .line 5481
    .local v13, "contentRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 5482
    .local v6, "action":I
    const/16 v20, 0x0

    .line 5484
    .local v20, "needToScroll":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    .line 5485
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    .line 5488
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 5489
    new-instance v27, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    .line 5492
    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    .line 5493
    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v20

    .line 5495
    .local v20, "needToScroll":Z
    const/16 v27, 0xd3

    move/from16 v0, v27

    if-ne v6, v0, :cond_2

    .line 5496
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5497
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    .line 5498
    const-string/jumbo v28, "car_mode_on"

    const/16 v29, 0x0

    const/16 v30, -0x3

    .line 5497
    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    .line 5498
    const/16 v28, 0x1

    .line 5497
    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    .line 5500
    .local v18, "isCarModeOn":Z
    :goto_0
    if-eqz v18, :cond_2

    .line 5501
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5505
    .end local v18    # "isCarModeOn":Z
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    .line 5506
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    .line 5509
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    if-gtz v27, :cond_5

    .line 5511
    :cond_4
    const/high16 v27, 0x41c80000    # 25.0f

    .line 5512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    .line 5511
    const/16 v29, 0x1

    .line 5510
    move/from16 v0, v29

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    .line 5512
    const/high16 v28, 0x3f000000    # 0.5f

    .line 5510
    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    .line 5515
    const/high16 v27, 0x41c80000    # 25.0f

    .line 5516
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    .line 5515
    const/16 v29, 0x1

    .line 5514
    move/from16 v0, v29

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    .line 5516
    const/high16 v28, 0x3f000000    # 0.5f

    .line 5514
    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    .line 5519
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    .line 5520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 5521
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v13, v27, v28

    .line 5527
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move/from16 v0, v25

    if-lt v0, v12, :cond_6

    move/from16 v0, v25

    if-le v0, v13, :cond_9

    .line 5528
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    const/16 v28, 0xd4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_9

    .line 5529
    const/16 v27, 0x1

    return v27

    .line 5497
    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 5523
    :cond_8
    const/4 v12, 0x0

    .line 5524
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    goto :goto_1

    .line 5532
    :cond_9
    sparse-switch v6, :sswitch_data_0

    .line 5856
    .end local v20    # "needToScroll":Z
    :cond_a
    :goto_2
    :sswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    return v27

    .line 5535
    .restart local v20    # "needToScroll":Z
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 5537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 5538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5542
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5544
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5545
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5546
    const/16 v27, 0x1

    return v27

    .line 5549
    :cond_c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto :goto_2

    .line 5557
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 5559
    const/16 v27, 0x1

    return v27

    .line 5563
    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    move/from16 v27, v0

    if-eqz v27, :cond_29

    .line 5564
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    .line 5566
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    .line 5567
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5568
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5569
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5570
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5572
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 5574
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    .line 5575
    const/16 v23, 0x0

    .line 5576
    .local v23, "oldDistanceFromLeft":I
    const/16 v24, 0x0

    .line 5577
    .local v24, "oldDistanceFromRight":I
    const/16 v21, 0x0

    .line 5578
    .local v21, "newDistanceFromLeft":I
    const/16 v22, 0x0

    .line 5580
    .local v22, "newDistanceFromRight":I
    add-int/lit8 v17, v14, -0x1

    .local v17, "i":I
    :goto_3
    if-ltz v17, :cond_d

    .line 5581
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5582
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_17

    .line 5583
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5584
    .local v9, "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5587
    .local v10, "childRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v9, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v10, :cond_16

    .line 5588
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5589
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    .line 5616
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 5617
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 5618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 5619
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 5622
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 5623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 5624
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 5631
    .end local v17    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 5632
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getLeft()I

    move-result v28

    sub-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 5634
    :cond_10
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 5637
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    .line 5638
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5639
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5640
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    .line 5641
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5644
    :cond_12
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5645
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 5647
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    if-gez v27, :cond_1b

    .line 5648
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5653
    :cond_13
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5655
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    :goto_6
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 5656
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 5657
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v27, v0

    :goto_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 5658
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    :goto_9
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 5660
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_a
    move/from16 v0, v17

    if-ge v0, v14, :cond_28

    .line 5661
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 5662
    .restart local v7    # "child":Landroid/view/View;
    if-eqz v7, :cond_15

    .line 5663
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 5664
    .restart local v9    # "childLeft":I
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    .line 5665
    .local v11, "childTop":I
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    .line 5666
    .restart local v10    # "childRight":I
    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    .line 5668
    .local v8, "childBottom":I
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_15

    .line 5669
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v11, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_20

    .line 5673
    :cond_14
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5674
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_27

    .line 5660
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_15
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    .line 5594
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v21    # "newDistanceFromLeft":I
    .restart local v22    # "newDistanceFromRight":I
    .restart local v23    # "oldDistanceFromLeft":I
    .restart local v24    # "oldDistanceFromRight":I
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v21

    .line 5595
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 5597
    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 5598
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5599
    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5600
    move/from16 v23, v21

    .line 5601
    move/from16 v24, v22

    .line 5580
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    :cond_17
    :goto_c
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_3

    .line 5603
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    :cond_18
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_19

    .line 5604
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5605
    move/from16 v23, v21

    .line 5608
    :cond_19
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_17

    .line 5609
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5610
    move/from16 v24, v22

    goto :goto_c

    .line 5628
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v17    # "i":I
    .end local v21    # "newDistanceFromLeft":I
    .end local v22    # "newDistanceFromRight":I
    .end local v23    # "oldDistanceFromLeft":I
    .end local v24    # "oldDistanceFromRight":I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    move/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    goto/16 :goto_4

    .line 5649
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v13, :cond_13

    .line 5650
    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto/16 :goto_5

    .line 5655
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v27, v0

    goto/16 :goto_6

    .line 5656
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    goto/16 :goto_7

    .line 5657
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    goto/16 :goto_8

    .line 5658
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    goto/16 :goto_9

    .line 5670
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "childBottom":I
    .restart local v9    # "childLeft":I
    .restart local v10    # "childRight":I
    .restart local v11    # "childTop":I
    .restart local v17    # "i":I
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v9, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_25

    .line 5671
    :cond_21
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v0, v11, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v10, :cond_14

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v9, :cond_14

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v10, :cond_14

    .line 5680
    :cond_24
    add-int/lit8 v27, v9, 0x1

    add-int/lit8 v28, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5681
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_15

    .line 5682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5683
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5684
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_b

    .line 5670
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v11, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v0, v11, :cond_21

    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v8, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v8, :cond_24

    goto/16 :goto_d

    .line 5675
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5676
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 5677
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->semNotifyMultiSelectState(Landroid/view/View;IJ)Z

    goto/16 :goto_b

    .line 5690
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childBottom":I
    .end local v9    # "childLeft":I
    .end local v10    # "childRight":I
    .end local v11    # "childTop":I
    :cond_28
    const/16 v20, 0x1

    .line 5693
    .end local v14    # "count":I
    .end local v17    # "i":I
    .end local v20    # "needToScroll":Z
    :cond_29
    if-eqz v20, :cond_32

    .line 5694
    add-int/lit8 v27, v12, 0x0

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    add-int v27, v27, v12

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_2d

    .line 5695
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a

    .line 5696
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5697
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2a

    .line 5700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5704
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    .line 5705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5706
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5707
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5741
    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 5742
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5750
    :cond_2c
    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_2

    .line 5709
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    sub-int v27, v13, v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_2f

    move/from16 v0, v25

    if-gt v0, v13, :cond_2f

    .line 5710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2e

    .line 5711
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5714
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    .line 5715
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5719
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    .line 5720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5721
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    .line 5722
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    .line 5725
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_30

    .line 5726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5729
    :cond_30
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5730
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5731
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5734
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_31

    .line 5735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5738
    :cond_31
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    .line 5744
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    .line 5746
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_2c

    .line 5747
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_f

    .line 5755
    .restart local v20    # "needToScroll":Z
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    .line 5757
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_33

    .line 5758
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5761
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_34

    .line 5762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 5765
    :cond_34
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    .line 5768
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 5769
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    .line 5770
    const/16 v27, 0x1

    return v27

    .line 5775
    :cond_35
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_3d

    .line 5776
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_36

    .line 5777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    .line 5780
    :cond_36
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    .line 5781
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    .line 5782
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    .line 5783
    const/16 v19, 0x0

    .line 5785
    .local v19, "isNeedActionMode":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 5787
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    move/from16 v27, v0

    if-eqz v27, :cond_3d

    .line 5788
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3c

    .line 5790
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "dragSelectedViewPosition$iterator":Ljava/util/Iterator;
    :cond_38
    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_39

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5791
    .local v15, "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_38

    .line 5792
    const/16 v19, 0x1

    goto :goto_10

    .line 5796
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3a

    .line 5797
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v27, v0

    if-nez v27, :cond_3a

    if-eqz v19, :cond_3a

    .line 5798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 5802
    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3c

    .line 5803
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3b
    :goto_11
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_3c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 5804
    .restart local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_3b

    .line 5805
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v27

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v28

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v27

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_11

    .line 5810
    .end local v15    # "dragSelectedViewPosition":Ljava/lang/Integer;
    .end local v16    # "dragSelectedViewPosition$iterator":Ljava/util/Iterator;
    :cond_3c
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    .line 5814
    .end local v19    # "isNeedActionMode":Z
    :cond_3d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    .line 5815
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    .line 5816
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    .line 5818
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    .line 5819
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    .line 5820
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    .line 5821
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    .line 5823
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    .line 5824
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    .line 5825
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    .line 5826
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    .line 5828
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    .line 5829
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    .line 5830
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    .line 5831
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    .line 5833
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    .line 5834
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    .line 5835
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    .line 5836
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    .line 5837
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    .line 5838
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    .line 5839
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    .line 5840
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    .line 5842
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3e

    .line 5843
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 5847
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 5848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

    .line 5532
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0xd3 -> :sswitch_0
        0xd4 -> :sswitch_5
        0xd5 -> :sswitch_3
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 6682
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    .line 6683
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    .line 6684
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 6685
    .local v3, "scrollX":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6686
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6687
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 6689
    .local v1, "height":I
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 6690
    .local v0, "edgeX":I
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6691
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6692
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6693
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6694
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    .line 6695
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 6694
    invoke-virtual {p0, v8, v8, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 6697
    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6699
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6700
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 6701
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 6702
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 6704
    .restart local v1    # "height":I
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 6705
    .restart local v0    # "edgeX":I
    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6706
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 6707
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 6708
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6709
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 6710
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    .line 6709
    sub-int/2addr v5, v6

    .line 6710
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 6711
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 6709
    invoke-virtual {p0, v5, v8, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    .line 6713
    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 6718
    .end local v0    # "edgeX":I
    .end local v1    # "height":I
    .end local v2    # "restoreCount":I
    .end local v3    # "scrollX":I
    .end local v4    # "width":I
    :cond_3
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v5, :cond_4

    .line 6719
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    .line 6681
    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 3770
    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    .line 3771
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3769
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract fillGapRTL(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .param p1, "x"    # I

    .prologue
    const/4 v2, -0x1

    .line 7971
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7972
    .local v0, "childCount":I
    if-nez v0, :cond_0

    .line 7973
    return v2

    .line 7976
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    .line 7977
    .local v1, "motionRow":I
    if-eq v1, v2, :cond_1

    .end local v1    # "motionRow":I
    :goto_0
    return v1

    .restart local v1    # "motionRow":I
    :cond_1
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .locals 1
    .param p1, "accessibilityId"    # I

    .prologue
    .line 2102
    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2103
    return-object p0

    .line 2109
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 2110
    const/4 v0, 0x0

    return-object v0

    .line 2112
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishMultiChoiceMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1675
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1677
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1674
    :cond_0
    return-void
.end method

.method public fling(I)V
    .locals 1
    .param p1, "velocityX"    # I

    .prologue
    .line 6591
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 6592
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6594
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6595
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6590
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 8912
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    const/4 v1, -0x1

    .line 8913
    const/4 v2, -0x2

    const/4 v3, 0x0

    .line 8912
    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8944
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8932
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8945
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 2977
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2978
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eq v0, p0, :cond_0

    move-object p1, v0

    .line 2979
    check-cast p1, Landroid/view/View;

    .line 2980
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 2983
    :cond_0
    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 2984
    const/4 v1, 0x0

    return-object v1

    .line 2987
    :cond_1
    return-object p1
.end method

.method protected getBottomPaddingOffset()I
    .locals 2

    .prologue
    .line 3537
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 9006
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    .prologue
    .line 1309
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1373
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    .line 1374
    :cond_0
    new-array v4, v5, [J

    return-object v4

    .line 1373
    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    .line 1377
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1378
    .local v2, "idStates":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 1379
    .local v0, "count":I
    new-array v3, v0, [J

    .line 1381
    .local v3, "ids":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1382
    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1385
    :cond_2
    return-object v3
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1341
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1342
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    return v0

    .line 1345
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 1358
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    .line 1361
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    .prologue
    .line 1602
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 4295
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 2189
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 2190
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2193
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2194
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2188
    :goto_0
    return-void

    .line 2197
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 7913
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 7903
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalScrollbarHeight()I
    .locals 2

    .prologue
    .line 1840
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1841
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1843
    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2795
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2796
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    .line 2797
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2798
    return v1

    .line 2800
    :cond_0
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    .line 2801
    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    .line 2800
    :cond_2
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v4, :cond_1

    .line 2806
    :cond_3
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2809
    .local v3, "left":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 2810
    .local v2, "fadeLength":F
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v3, v4, :cond_4

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    .end local v1    # "fadeEdge":F
    :cond_4
    return v1

    .line 2807
    .end local v2    # "fadeLength":F
    .end local v3    # "left":I
    .restart local v1    # "fadeEdge":F
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    .restart local v3    # "left":I
    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

    .prologue
    .line 3492
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 3067
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 3079
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 3091
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 3055
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2826
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2827
    .local v0, "count":I
    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    .line 2828
    .local v1, "fadeEdge":F
    if-nez v0, :cond_0

    .line 2829
    return v1

    .line 2831
    :cond_0
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v5, :cond_3

    .line 2832
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    .line 2831
    :cond_2
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_1

    .line 2836
    :cond_3
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .line 2839
    .local v3, "right":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2840
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 2841
    .local v2, "fadeLength":F
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_4

    sub-int v5, v3, v4

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    .end local v1    # "fadeEdge":F
    :cond_4
    return v1

    .line 2837
    .end local v2    # "fadeLength":F
    .end local v3    # "right":I
    .end local v4    # "width":I
    .restart local v1    # "fadeEdge":F
    :cond_5
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    .restart local v3    # "right":I
    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

    .prologue
    .line 3522
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3039
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 3040
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3042
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2042
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChoiceMode()I

    move-result v0

    .line 2043
    .local v0, "choiceMode":I
    packed-switch v0, :pswitch_data_0

    .line 2052
    return v1

    .line 2045
    :pswitch_0
    return v1

    .line 2047
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 2050
    :pswitch_2
    const/4 v1, 0x2

    return v1

    .line 2043
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

    .prologue
    .line 3678
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 8995
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2565
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2566
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 2568
    :cond_0
    return-object v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

    .prologue
    .line 3507
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x22

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 8979
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return v0
.end method

.method getWidthForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 9917
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 9918
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 9919
    .local v0, "childCount":I
    sub-int v2, p1, v1

    .line 9920
    .local v2, "index":I
    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    .line 9922
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 9923
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    return v5

    .line 9926
    .end local v3    # "view":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    .line 9927
    .restart local v3    # "view":Landroid/view/View;
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    .line 9928
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 9929
    .local v4, "width":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 9930
    return v4
.end method

.method protected handleDataChanged()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 8173
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 8174
    .local v1, "count":I
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    .line 8175
    .local v3, "lastHandledItemCount":I
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    .line 8178
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    .line 8179
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    .line 8180
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 8181
    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    .line 8184
    :cond_0
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 8185
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->confirmCheckedPositionsById()V

    .line 8189
    :cond_1
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    .line 8191
    if-lez v1, :cond_f

    .line 8196
    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_8

    .line 8198
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 8199
    iput-object v13, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 8201
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 8202
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8203
    return-void

    .line 8204
    :cond_2
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    .line 8205
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    .line 8206
    iput-boolean v12, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 8207
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8208
    return-void

    .line 8210
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 8211
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    .line 8213
    .local v5, "listRight":I
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8216
    .local v2, "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    .line 8217
    .local v4, "lastRight":I
    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    .line 8218
    if-gt v4, v5, :cond_6

    .line 8219
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8220
    return-void

    .line 8214
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    :cond_4
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "lastChild":Landroid/view/View;
    goto :goto_0

    .line 8216
    :cond_5
    move v4, v5

    .restart local v4    # "lastRight":I
    goto :goto_1

    .line 8224
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 8227
    .end local v0    # "childCount":I
    .end local v2    # "lastChild":Landroid/view/View;
    .end local v4    # "lastRight":I
    .end local v5    # "listRight":I
    :cond_7
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    .line 8275
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    .line 8277
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 8280
    .local v6, "newPos":I
    if-lt v6, v1, :cond_9

    .line 8281
    add-int/lit8 v6, v1, -0x1

    .line 8283
    :cond_9
    if-gez v6, :cond_a

    .line 8284
    const/4 v6, 0x0

    .line 8288
    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8290
    .local v7, "selectablePos":I
    if-ltz v7, :cond_d

    .line 8291
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8292
    return-void

    .line 8229
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 8234
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8235
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 8237
    return-void

    .line 8241
    :cond_b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v6

    .line 8242
    .restart local v6    # "newPos":I
    if-ltz v6, :cond_8

    .line 8244
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8245
    .restart local v7    # "selectablePos":I
    if-ne v7, v6, :cond_8

    .line 8247
    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 8249
    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 8252
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8260
    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8261
    return-void

    .line 8256
    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    goto :goto_2

    .line 8268
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :pswitch_1
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8269
    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 8271
    return-void

    .line 8295
    .restart local v6    # "newPos":I
    .restart local v7    # "selectablePos":I
    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    .line 8296
    if-ltz v7, :cond_f

    .line 8297
    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 8298
    return-void

    .line 8304
    .end local v6    # "newPos":I
    .end local v7    # "selectablePos":I
    :cond_e
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_f

    .line 8305
    return-void

    .line 8312
    :cond_f
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8313
    iput v14, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 8314
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    .line 8315
    iput v14, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    .line 8316
    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    .line 8317
    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 8318
    iput-object v13, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 8319
    iput v14, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 8320
    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    .line 8172
    return-void

    :cond_10
    move v8, v9

    .line 8312
    goto :goto_3

    .line 8227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    .prologue
    .line 8785
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 7928
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    .line 7929
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 7930
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7932
    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    .line 7933
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7935
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 7936
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 7937
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 7927
    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 7984
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 7985
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 7986
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 7987
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 7983
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1953
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onScroll(III)V

    .line 1956
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1957
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScroll(Landroid/widget/SemHorizontalAbsListView;III)V

    .line 1959
    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1952
    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1825
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v1, :cond_1

    .line 1826
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

    .line 1828
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isAlwaysShowEnabled()Z

    move-result v0

    :cond_2
    return v0
.end method

.method public isFastScrollEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1854
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1855
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    return v0

    .line 1857
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    .prologue
    .line 8450
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1324
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    .line 1328
    :cond_0
    return v1
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    .prologue
    .line 10750
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

    .prologue
    .line 1924
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3477
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

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

    .prologue
    .line 2126
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method protected isSemUsingAdapterView()Z
    .locals 1

    .prologue
    .line 7438
    const/4 v0, 0x1

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 1936
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2214
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 2173
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 3853
    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    .line 3854
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 3852
    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3686
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3690
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3691
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3692
    .local v3, "selectorRect":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3693
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3685
    :cond_1
    :goto_0
    return-void

    .line 3687
    .end local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .end local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 3695
    .restart local v2    # "selector":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "selectorRect":Landroid/graphics/Rect;
    :cond_3
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3697
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 3698
    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    .line 3699
    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3701
    :cond_5
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 3703
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    .line 3704
    .local v1, "longClickable":Z
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3705
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_6

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_6

    .line 3706
    if-eqz v1, :cond_7

    .line 3707
    nop

    nop

    .line 3708
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    .line 3707
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3713
    :cond_6
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_1

    .line 3714
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_8

    .line 3715
    new-instance v5, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-direct {v5, p0, v7}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    .line 3719
    :goto_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3720
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3710
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_7
    nop

    nop

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    .line 3717
    :cond_8
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 2968
    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "isScrap"    # [Z

    .prologue
    .line 3107
    const-string/jumbo v7, "obtainView"

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3109
    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    .line 3113
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v4

    .line 3114
    .local v4, "transientView":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 3115
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3118
    .local v2, "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    iget v7, v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 3119
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3121
    .local v5, "updatedView":Landroid/view/View;
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    .line 3122
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3124
    .local v6, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_2

    .line 3125
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 3131
    .local v1, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :goto_0
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    .line 3132
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3136
    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eq v5, v4, :cond_1

    .line 3137
    invoke-direct {p0, v5, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3138
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3143
    .end local v5    # "updatedView":Landroid/view/View;
    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    .line 3144
    return-object v4

    .line 3126
    .restart local v5    # "updatedView":Landroid/view/View;
    .restart local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3127
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_3
    move-object v1, v6

    .line 3129
    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .restart local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    goto :goto_0

    .line 3147
    .end local v1    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v2    # "params":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .end local v5    # "updatedView":Landroid/view/View;
    .end local v6    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    .line 3148
    .local v3, "scrapView":Landroid/view/View;
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3149
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_5

    .line 3150
    const/4 v7, 0x0

    return-object v7

    .line 3152
    :cond_5
    if-eqz v3, :cond_7

    .line 3153
    if-eq v0, v3, :cond_c

    .line 3154
    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3155
    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 3156
    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 3159
    :cond_6
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 3167
    :cond_7
    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    if-eqz v7, :cond_8

    .line 3168
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 3171
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_9

    .line 3172
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 3175
    :cond_9
    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    .line 3177
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 3178
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    if-nez v7, :cond_a

    .line 3179
    new-instance v7, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    .line 3181
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    if-nez v7, :cond_b

    .line 3182
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 3186
    :cond_b
    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 3188
    return-object v0

    .line 3161
    :cond_c
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    .line 3163
    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 3868
    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    .line 3870
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3871
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3873
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    .line 3874
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3877
    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-eqz v1, :cond_4

    .line 3881
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    .line 3882
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 3883
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3886
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3887
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 3888
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 3891
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v1, :cond_3

    .line 3892
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 3867
    :cond_3
    return-void

    .line 3878
    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    .prologue
    .line 4099
    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    .line 4100
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_0

    .line 4101
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4103
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    .line 4104
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4106
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    .line 4107
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4109
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    .line 4110
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4098
    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .param p1, "extraSpace"    # I

    .prologue
    const/4 v5, 0x0

    .line 3792
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    .line 3794
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    return-object v4

    .line 3800
    :cond_0
    sget-object v4, Landroid/widget/SemHorizontalAbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    .line 3805
    .local v1, "enabledState":I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 3806
    .local v3, "state":[I
    const/4 v0, -0x1

    .line 3807
    .local v0, "enabledPos":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3808
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 3809
    move v0, v2

    .line 3815
    :cond_1
    if-ltz v0, :cond_2

    .line 3816
    add-int/lit8 v4, v0, 0x1

    .line 3817
    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    .line 3816
    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 3820
    :cond_2
    return-object v3

    .line 3807
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v1, 0x0

    .line 8545
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8546
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    .line 8547
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 8548
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    .line 8550
    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 8551
    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 8552
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    return-object v0

    .line 8554
    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3905
    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    .line 3907
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    .line 3910
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 3913
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    .line 3915
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3916
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3917
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 3918
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3919
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    .line 3922
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    .line 3923
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3924
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    .line 3927
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    .line 3928
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3929
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    .line 3932
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    .line 3933
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    .line 3934
    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    .line 3937
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 3938
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3941
    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 3942
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 3945
    :cond_5
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 3946
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3949
    :cond_6
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v1, :cond_7

    .line 3950
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3953
    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 3954
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3955
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 3958
    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    .line 3959
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 3962
    :cond_9
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    .line 3963
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3967
    :cond_a
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    .line 3968
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 3971
    :cond_b
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    .line 3972
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    .line 3904
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 8334
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDisplayHint(I)V

    .line 8335
    sparse-switch p1, :sswitch_data_0

    .line 8347
    :cond_0
    :goto_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    .line 8333
    return-void

    .line 8337
    :sswitch_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8338
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0

    .line 8342
    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8343
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_0

    .line 8347
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 8335
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onFilterComplete(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 8897
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    .line 8898
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8899
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    .line 8896
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2591
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2592
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2590
    :cond_0
    :goto_0
    return-void

    .line 2593
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 2596
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2597
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 2598
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    .line 2600
    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6562
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 6563
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 6577
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 6565
    :pswitch_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 6566
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    .line 6567
    .local v1, "hscroll":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    .line 6568
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    .line 6569
    .local v0, "delta":I
    invoke-virtual {p0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6570
    const/4 v2, 0x1

    return v2

    .line 6563
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 8794
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8796
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8793
    :cond_0
    :goto_0
    return-void

    .line 8796
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    .line 8797
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_0

    .line 8801
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8802
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1990
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1991
    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 1989
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 2027
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2028
    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2029
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 2031
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2032
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2034
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 2035
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2036
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2026
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v2, 0x1

    .line 3290
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 3291
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    .line 3293
    :cond_0
    return-void

    .line 3296
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3301
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    .line 3302
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3303
    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3308
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3309
    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3310
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3313
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3314
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3315
    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3289
    :cond_3
    return-void

    .line 3297
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3298
    return-void

    .line 3305
    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 6792
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6793
    const/4 v0, 0x1

    return v0

    .line 6796
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6835
    .local v0, "actionMasked":I
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_0

    .line 6836
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 6839
    :cond_0
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6847
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v7, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 6848
    return v9

    .line 6844
    :cond_1
    return v8

    .line 6851
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 6921
    :cond_3
    :goto_0
    :pswitch_0
    return v8

    .line 6853
    :pswitch_1
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6854
    .local v3, "touchMode":I
    const/4 v7, 0x6

    if-eq v3, v7, :cond_4

    const/4 v7, 0x5

    if-ne v3, v7, :cond_5

    .line 6855
    :cond_4
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 6856
    return v9

    .line 6859
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 6860
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 6861
    .local v6, "y":I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6863
    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    .line 6864
    .local v1, "motionPosition":I
    if-eq v3, v12, :cond_6

    if-ltz v1, :cond_6

    .line 6867
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 6868
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 6869
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 6870
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 6871
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 6872
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6873
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 6875
    .end local v4    # "v":Landroid/view/View;
    :cond_6
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    .line 6876
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initOrResetVelocityTracker()V

    .line 6877
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6878
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 6879
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/View;->startNestedScroll(I)Z

    .line 6880
    if-ne v3, v12, :cond_3

    .line 6881
    return v9

    .line 6887
    .end local v1    # "motionPosition":I
    .end local v3    # "touchMode":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :pswitch_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 6889
    :pswitch_3
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 6890
    .local v2, "pointerIndex":I
    if-ne v2, v10, :cond_7

    .line 6891
    const/4 v2, 0x0

    .line 6892
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6894
    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 6895
    .restart local v5    # "x":I
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 6896
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 6897
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v5, v7, v11}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6898
    return v9

    .line 6907
    .end local v2    # "pointerIndex":I
    .end local v5    # "x":I
    :pswitch_4
    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6908
    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 6909
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    .line 6910
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6911
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto/16 :goto_0

    .line 6916
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 6851
    nop

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

    .line 6887
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    .prologue
    .line 6343
    const-string/jumbo v0, "SemHorizontalAbsListView"

    const-string/jumbo v1, "onJumpScrollToTopFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6342
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 4357
    sparse-switch p1, :sswitch_data_0

    .line 4372
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 4360
    :sswitch_0
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4364
    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    .line 4367
    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    .line 4368
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    goto :goto_0

    .line 4357
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
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 4390
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4391
    .local v1, "selectedview":Landroid/view/View;
    const/4 v0, 0x0

    .line 4393
    .local v0, "currentview":Landroid/view/View;
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4394
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4395
    return v7

    .line 4397
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4398
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    .line 4399
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 4401
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4402
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 4403
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 4404
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4406
    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 4407
    return v7

    .line 4411
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 4474
    .end local v0    # "currentview":Landroid/view/View;
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 4417
    .restart local v0    # "currentview":Landroid/view/View;
    :sswitch_0
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_4

    .line 4418
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    if-nez v3, :cond_6

    .line 4419
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 4425
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4426
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    .line 4427
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4429
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4431
    .local v0, "currentview":Landroid/view/View;
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    .line 4432
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    .line 4433
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4434
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4435
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4438
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 4439
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 4448
    :cond_5
    :goto_2
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    .line 4449
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_0

    .line 4421
    .local v0, "currentview":Landroid/view/View;
    :cond_6
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    goto :goto_1

    .line 4441
    .local v0, "currentview":Landroid/view/View;
    :cond_7
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 4442
    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    .line 4444
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    goto :goto_2

    .line 4456
    .local v0, "currentview":Landroid/view/View;
    :sswitch_1
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    .line 4460
    :sswitch_2
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 4461
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 4462
    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 4463
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 4464
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto :goto_0

    .line 4467
    :sswitch_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v3, :cond_3

    .line 4468
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    goto/16 :goto_0

    .line 4411
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
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2922
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 2924
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2926
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2927
    .local v0, "childCount":I
    if-eqz p1, :cond_1

    .line 2928
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2929
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 2928
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2931
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->markChildrenDirty()V

    .line 2934
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 2935
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    .line 2937
    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollMax:I

    .line 2940
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v2, :cond_2

    .line 2941
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onItemCountChanged(II)V

    .line 2921
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2893
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 2894
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->useDefaultSelector()V

    .line 2896
    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 2897
    .local v3, "listPadding":Landroid/graphics/Rect;
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    .line 2898
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    .line 2899
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->right:I

    .line 2900
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 2903
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    .line 2904
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2905
    .local v0, "childCount":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    .line 2907
    .local v4, "listRight":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2910
    .local v1, "lastChild":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2911
    .local v2, "lastRight":I
    :goto_1
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_5

    .line 2912
    if-gt v2, v4, :cond_4

    .line 2911
    :goto_2
    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    .line 2892
    .end local v0    # "childCount":I
    .end local v1    # "lastChild":Landroid/view/View;
    .end local v2    # "lastRight":I
    .end local v4    # "listRight":I
    :cond_1
    return-void

    .line 2908
    .restart local v0    # "childCount":I
    .restart local v4    # "listRight":I
    :cond_2
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "lastChild":Landroid/view/View;
    goto :goto_0

    .line 2910
    :cond_3
    move v2, v4

    .restart local v2    # "lastRight":I
    goto :goto_1

    :cond_4
    move v5, v6

    .line 2912
    goto :goto_2

    :cond_5
    move v5, v6

    .line 2911
    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 6656
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 6657
    .local v0, "childCount":I
    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6658
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 6659
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 6660
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 6661
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 6663
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6664
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    .line 6666
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 6668
    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 6621
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 6622
    .local v6, "motionIndex":I
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 6623
    .local v7, "motionView":Landroid/view/View;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 6624
    .local v8, "oldLeft":I
    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p4

    neg-int v4, p4

    invoke-virtual {p0, v0, v4}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6625
    :cond_0
    move v3, p4

    .line 6626
    .local v3, "myUnconsumed":I
    const/4 v1, 0x0

    .line 6627
    .local v1, "myConsumed":I
    if-eqz v7, :cond_1

    .line 6628
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, v8

    .line 6629
    sub-int v3, p4, v1

    :cond_1
    move-object v0, p0

    move v4, v2

    .line 6631
    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    .line 6620
    .end local v1    # "myConsumed":I
    .end local v3    # "myUnconsumed":I
    :cond_2
    return-void

    .line 6623
    .end local v8    # "oldLeft":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "oldLeft":I
    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I

    .prologue
    .line 6611
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 6612
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->startNestedScroll(I)Z

    .line 6610
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 6514
    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, p1, :cond_0

    .line 6515
    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 6516
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 6517
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    .line 6519
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 6513
    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9099
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    .line 9100
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 9101
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    .line 9102
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    .line 9103
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9105
    :cond_0
    return v2

    .line 9106
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    .line 9107
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->semSuperNotifyDataSetChanged()V

    .line 9108
    const/4 v0, 0x1

    return v0

    .line 9110
    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    .prologue
    .line 9117
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 2469
    instance-of v2, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v2, :cond_4

    move-object v0, p1

    .line 2470
    nop

    nop

    .line 2482
    .local v0, "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :goto_0
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2483
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2485
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    .line 2487
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    .line 2488
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2489
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2490
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2491
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2492
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2493
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    .line 2507
    :cond_0
    :goto_1
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setFilterText(Ljava/lang/String;)V

    .line 2509
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    .line 2510
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 2513
    :cond_1
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    .line 2514
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 2517
    :cond_2
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 2519
    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2520
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_3

    .line 2521
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 2524
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2466
    return-void

    .line 2471
    .end local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :cond_4
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object v1, p1

    .line 2472
    nop

    nop

    .line 2473
    .local v1, "wrappedSavedState":Landroid/os/Bundle;
    const-class v2, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2474
    const-string/jumbo v2, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    .restart local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    goto :goto_0

    .line 2477
    .end local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    .end local v1    # "wrappedSavedState":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v2, "SemHorizontalAbsListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SemHorizontalAbsListView.onRestoreInstanceState() is of neither SavedState type nor Bundle type, but of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2479
    return-void

    .line 2494
    .restart local v0    # "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    :cond_6
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 2495
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2497
    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2498
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 2499
    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2500
    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2501
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 2502
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 2503
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 2504
    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto/16 :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 4070
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    .line 4072
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    .line 4074
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 4075
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->semGetHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    .line 4069
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    .prologue
    .line 2356
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 2358
    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    .line 2360
    .local v11, "superState":Landroid/os/Parcelable;
    new-instance v10, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/SemHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2362
    .local v10, "ss":Landroid/widget/SemHorizontalAbsListView$SavedState;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v15, :cond_0

    .line 2364
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    .line 2365
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2366
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2367
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2368
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    .line 2369
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2370
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-boolean v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iput-boolean v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2371
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2372
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2373
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2374
    return-object v10

    .line 2377
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v15, :cond_3

    const/4 v5, 0x1

    .line 2378
    .local v5, "haveChildren":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v8

    .line 2379
    .local v8, "selectedId":J
    iput-wide v8, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    .line 2380
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    .line 2382
    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-ltz v15, :cond_4

    .line 2384
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2385
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2386
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2413
    :goto_1
    const/4 v15, 0x0

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2414
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v15, :cond_1

    .line 2415
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    .line 2416
    .local v12, "textFilter":Landroid/widget/EditText;
    if-eqz v12, :cond_1

    .line 2417
    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 2418
    .local v3, "filterText":Landroid/text/Editable;
    if-eqz v3, :cond_1

    .line 2419
    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    .line 2424
    .end local v3    # "filterText":Landroid/text/Editable;
    .end local v12    # "textFilter":Landroid/widget/EditText;
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v15, :cond_7

    const/4 v15, 0x1

    :goto_2
    iput-boolean v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    .line 2426
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_2

    .line 2427
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v15

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    .line 2429
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v15, :cond_9

    .line 2430
    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    .line 2431
    .local v7, "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    .line 2432
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_8

    .line 2433
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2432
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2377
    .end local v2    # "count":I
    .end local v5    # "haveChildren":Z
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    .end local v8    # "selectedId":J
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "haveChildren":Z
    goto/16 :goto_0

    .line 2388
    .restart local v8    # "selectedId":J
    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v15, :cond_6

    .line 2398
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2399
    .local v13, "v":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2400
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2401
    .local v4, "firstPos":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v4, v15, :cond_5

    .line 2402
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v15, -0x1

    .line 2404
    :cond_5
    iput v4, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    .line 2405
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    .line 2407
    .end local v4    # "firstPos":I
    .end local v13    # "v":Landroid/view/View;
    :cond_6
    const/4 v15, 0x0

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    .line 2408
    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    .line 2409
    const/4 v15, 0x0

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    goto/16 :goto_1

    .line 2424
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2435
    .restart local v2    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_8
    iput-object v7, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    .line 2437
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "idState":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    .line 2439
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v15, :cond_a

    .line 2440
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v15}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    .line 2447
    :cond_a
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 2448
    .local v14, "wrappedSavedState":Landroid/os/Bundle;
    const-string/jumbo v15, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2450
    return-object v14
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 3552
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3553
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 3554
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 3557
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    .line 3558
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSizeChanged(IIII)V

    .line 3551
    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 6603
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8843
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8844
    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8845
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 8846
    .local v1, "length":I
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    .line 8847
    .local v2, "showing":Z
    if-nez v2, :cond_2

    if-lez v1, :cond_2

    .line 8849
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    .line 8850
    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 8856
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    .line 8857
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v3, Landroid/widget/Filterable;

    invoke-interface {v3}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 8859
    .local v0, "f":Landroid/widget/Filter;
    if-eqz v0, :cond_3

    .line 8860
    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 8842
    .end local v0    # "f":Landroid/widget/Filter;
    .end local v1    # "length":I
    .end local v2    # "showing":Z
    :cond_1
    return-void

    .line 8851
    .restart local v1    # "length":I
    .restart local v2    # "showing":Z
    :cond_2
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 8853
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 8854
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    .line 8862
    .restart local v0    # "f":Landroid/widget/Filter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 5878
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 5881
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v9

    :cond_0
    return v9

    .line 5884
    :cond_1
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v10, :cond_2

    .line 5885
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 5888
    :cond_2
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 5896
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->startNestedScroll(I)Z

    .line 5898
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v10, :cond_4

    .line 5899
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v10, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 5900
    .local v4, "intercepted":Z
    if-eqz v4, :cond_4

    .line 5901
    return v9

    .line 5893
    .end local v4    # "intercepted":Z
    :cond_3
    return v12

    .line 5905
    :cond_4
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    .line 5906
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 5908
    .local v6, "vtev":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5909
    .local v0, "actionMasked":I
    if-nez v0, :cond_5

    .line 5910
    iput v12, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    .line 5912
    :cond_5
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5913
    packed-switch v0, :pswitch_data_0

    .line 5976
    :cond_6
    :goto_0
    :pswitch_0
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_7

    .line 5977
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5979
    :cond_7
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 5980
    return v9

    .line 5915
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5920
    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/SemHorizontalAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5925
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5930
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->onTouchCancel()V

    goto :goto_0

    .line 5935
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 5936
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 5937
    .local v7, "x":I
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 5938
    .local v8, "y":I
    invoke-virtual {p0, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5939
    .local v5, "motionPosition":I
    if-ltz v5, :cond_8

    .line 5941
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5942
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5943
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 5944
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-nez v10, :cond_6

    .line 5945
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_0

    .line 5948
    .end local v1    # "child":Landroid/view/View;
    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_0

    .line 5956
    .end local v5    # "motionPosition":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5957
    .local v3, "index":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 5958
    .local v2, "id":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    float-to-int v7, v10

    .line 5959
    .restart local v7    # "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    float-to-int v8, v10

    .line 5960
    .restart local v8    # "y":I
    iput v12, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    .line 5961
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    .line 5962
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    .line 5963
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    .line 5964
    invoke-virtual {p0, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    .line 5965
    .restart local v5    # "motionPosition":I
    if-ltz v5, :cond_9

    .line 5967
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 5968
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    .line 5969
    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    .line 5971
    .end local v1    # "child":Landroid/view/View;
    :cond_9
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto/16 :goto_0

    .line 5913
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
    .param p1, "isInTouchMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4852
    if-eqz p1, :cond_2

    .line 4854
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 4858
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 4861
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    .line 4863
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 4851
    :cond_1
    :goto_0
    return-void

    .line 4865
    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 4866
    .local v0, "touchMode":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 4867
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    .line 4868
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 4870
    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    .line 4871
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 4874
    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_1

    .line 4875
    iput v2, p0, Landroid/view/View;->mScrollX:I

    .line 4876
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4877
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    .line 4878
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 10474
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 10475
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    .line 10477
    if-nez p2, :cond_0

    .line 10473
    :goto_0
    return-void

    .line 10479
    :cond_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3987
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    .line 3992
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    .line 3994
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 3996
    .local v0, "touchMode":I
    :goto_0
    if-nez p1, :cond_6

    .line 3997
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 3998
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_1

    .line 3999
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4002
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 4003
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    .line 4004
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 4006
    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    .line 4007
    iput v3, p0, Landroid/view/View;->mScrollY:I

    .line 4008
    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    .line 4009
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    .line 4010
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4014
    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    .line 4016
    if-ne v0, v4, :cond_2

    .line 4018
    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 4022
    :cond_2
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v1, :cond_3

    .line 4023
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    .line 4047
    :cond_3
    :goto_1
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    .line 4049
    if-nez p1, :cond_4

    .line 4050
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    .line 3986
    :cond_4
    return-void

    .line 3994
    .end local v0    # "touchMode":I
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "touchMode":I
    goto :goto_0

    .line 4026
    :cond_6
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-eqz v1, :cond_8

    .line 4032
    :cond_7
    :goto_2
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 4034
    if-ne v0, v4, :cond_9

    .line 4036
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_1

    .line 4028
    :cond_8
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_2

    .line 4040
    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 4041
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 4042
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2077
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2078
    return v4

    .line 2080
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 2096
    return v3

    .line 2082
    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 2083
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    .line 2084
    .local v0, "viewportWidth":I
    invoke-virtual {p0, v0, v5}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 2085
    return v4

    .line 2087
    .end local v0    # "viewportWidth":I
    :cond_1
    return v3

    .line 2089
    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v1, :cond_2

    .line 2090
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    .line 2091
    .restart local v0    # "viewportWidth":I
    neg-int v1, v0

    invoke-virtual {p0, v1, v5}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    .line 2092
    return v4

    .line 2094
    .end local v0    # "viewportWidth":I
    :cond_2
    return v3

    .line 2080
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1492
    const/4 v8, 0x0

    .line 1493
    .local v8, "handled":Z
    const/4 v9, 0x0

    .line 1494
    .local v9, "handledNotifykeyPress":Z
    const/4 v7, 0x1

    .line 1496
    .local v7, "dispatchItemClick":Z
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v3, :cond_f

    .line 1497
    const/4 v8, 0x1

    .line 1498
    const/4 v0, 0x0

    .line 1500
    .local v0, "checkedStateChanged":Z
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 1501
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    .line 1502
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    .line 1503
    .local v6, "checked":Z
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1504
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1505
    if-eqz v6, :cond_7

    .line 1506
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1511
    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    .line 1512
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1516
    :goto_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    .line 1517
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1519
    const/4 v7, 0x0

    .line 1521
    :cond_2
    const/4 v0, 0x1

    .line 1538
    .end local v6    # "checked":Z
    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    .line 1539
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->updateOnScreenCheckedViews()V

    .line 1545
    .end local v0    # "checkedStateChanged":Z
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 1546
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    .line 1549
    .end local v8    # "handled":Z
    :cond_5
    return v8

    .line 1502
    .restart local v0    # "checkedStateChanged":Z
    .restart local v8    # "handled":Z
    :cond_6
    const/4 v6, 0x1

    .restart local v6    # "checked":Z
    goto :goto_0

    .line 1508
    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    .line 1514
    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1522
    .end local v6    # "checked":Z
    :cond_9
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v3, v2, :cond_3

    .line 1523
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    move v6, v1

    .line 1524
    .local v6, "checked":Z
    :goto_5
    if-eqz v6, :cond_d

    .line 1525
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1526
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1527
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1528
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1529
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1531
    :cond_a
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1535
    :cond_b
    :goto_6
    const/4 v0, 0x1

    goto :goto_3

    .end local v6    # "checked":Z
    :cond_c
    move v6, v2

    .line 1523
    goto :goto_5

    .line 1532
    .restart local v6    # "checked":Z
    :cond_d
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1533
    :cond_e
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_6

    .line 1541
    .end local v0    # "checkedStateChanged":Z
    .end local v6    # "checked":Z
    :cond_f
    if-eqz p1, :cond_4

    goto :goto_4
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "longPressPosition"    # I
    .param p3, "longPressId"    # J

    .prologue
    const v7, 0xc369

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 4251
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_2

    .line 4252
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    .line 4253
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 4255
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_0

    .line 4256
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 4258
    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalAbsListView;->setItemChecked(IZ)V

    .line 4259
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4261
    :cond_1
    return v1

    .line 4264
    :cond_2
    const/4 v6, 0x0

    .line 4265
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    .line 4266
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4269
    .end local v6    # "handled":Z
    :cond_3
    if-nez v6, :cond_4

    .line 4270
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4271
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 4273
    :cond_4
    if-eqz v6, :cond_5

    .line 4274
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4275
    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 4280
    :cond_5
    :goto_0
    return v6

    .line 4277
    :cond_6
    const-string/jumbo v0, "SemHorizontalAbsListView"

    const-string/jumbo v1, " does not need vibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 4499
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4500
    .local v4, "frame":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 4501
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4502
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 4504
    :cond_0
    instance-of v6, p0, Landroid/widget/SemHorizontalListView;

    if-eqz v6, :cond_1

    move-object v6, p0

    nop

    nop

    iget v2, v6, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    .line 4505
    .local v2, "dividerHeight":I
    :cond_1
    if-lez v2, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/widget/SemHorizontalListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    .line 4507
    .local v3, "drawDividers":Z
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4508
    .local v1, "count":I
    add-int/lit8 v5, v1, -0x1

    .local v5, "i":I
    :goto_1
    if-ltz v5, :cond_5

    .line 4509
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4510
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    .line 4511
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4512
    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 4514
    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4515
    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v5

    return v6

    .line 4505
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "count":I
    .end local v3    # "drawDividers":Z
    .end local v5    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "drawDividers":Z
    goto :goto_0

    .line 4508
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "count":I
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 4519
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    const/4 v6, -0x1

    return v6
.end method

.method public pointToRowId(II)J
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 4532
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    .line 4533
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 4534
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    return-wide v2

    .line 4536
    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2
.end method

.method positionSelector(ILandroid/view/View;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    .line 3345
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3344
    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 3334
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3335
    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 3336
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    .line 3337
    .local v4, "x":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    .line 3338
    .local v5, "y":F
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    .line 3333
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "bounds":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 3340
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 3323
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    .line 3325
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3326
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 3322
    :cond_0
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

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 9017
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 9018
    .local v1, "childCount":I
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-get0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    move-result-object v3

    .line 9021
    .local v3, "listener":Landroid/widget/SemHorizontalAbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9022
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 9023
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    .line 9025
    .local v4, "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9026
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9027
    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 9028
    if-eqz v3, :cond_0

    .line 9030
    invoke-interface {v3, v0}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 9021
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9034
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 9035
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 9016
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7947
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    .line 7948
    .local v0, "position":I
    if-gez v0, :cond_0

    .line 7949
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 7951
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 7952
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 7953
    return v0
.end method

.method rememberSyncState()V
    .locals 0

    .prologue
    .line 11037
    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncStateHorizontal()V

    .line 11036
    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    .prologue
    .line 6370
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 6371
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 6372
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6373
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6375
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 6369
    return-void
.end method

.method public reportScrollStateChange(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 6976
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_3

    .line 6978
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v0, v2, :cond_1

    .line 6979
    :cond_0
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 6980
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6982
    :cond_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/view/View;->mSemScrollingByScrollbar:Z

    if-eqz v0, :cond_4

    .line 6997
    :cond_2
    :goto_0
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    .line 6998
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_6

    .line 6975
    :cond_3
    :goto_1
    return-void

    .line 6983
    :cond_4
    if-eqz p1, :cond_5

    .line 6984
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-nez v0, :cond_5

    .line 6985
    invoke-static {v3}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 6986
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    .line 6988
    :cond_5
    if-nez p1, :cond_2

    .line 6989
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_2

    .line 6990
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    .line 6991
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    .line 6992
    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    goto :goto_0

    .line 6998
    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v0, v2, :cond_3

    .line 7000
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_1
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 2232
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2233
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    .line 2234
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 2235
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2231
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2608
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2609
    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 2611
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    .line 2612
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPosition:I

    .line 2615
    :cond_0
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 2616
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 2617
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    .line 2618
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    .line 2619
    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    .line 2620
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    .line 2621
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    .line 2622
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 2623
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    .line 2624
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    .line 2625
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2626
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 2607
    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    .prologue
    .line 10810
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    .line 10811
    return-void

    .line 10813
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 10815
    .local v0, "checkCount":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 10816
    return-void

    .line 10818
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 10819
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 10809
    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    .prologue
    .line 8015
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 8017
    .local v2, "childCount":I
    if-gtz v2, :cond_0

    .line 8018
    const/16 v17, 0x0

    return v17

    .line 8021
    :cond_0
    const/4 v12, 0x0

    .line 8022
    .local v12, "selectedLeft":I
    const/4 v14, 0x0

    .line 8024
    .local v14, "selectedRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 8025
    .local v3, "childrenLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v4, v17, v18

    .line 8026
    .local v4, "childrenRight":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 8027
    .local v5, "firstPosition":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8028
    .local v15, "toPosition":I
    const/4 v10, 0x1

    .line 8030
    .local v10, "rightSide":Z
    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    .line 8031
    move v13, v15

    .line 8033
    .local v13, "selectedPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 8034
    .local v11, "selected":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 8035
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    .line 8038
    if-ge v12, v3, :cond_3

    .line 8039
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    .line 8100
    .end local v11    # "selected":Landroid/view/View;
    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    .line 8101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 8103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 8105
    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    .line 8106
    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    .line 8107
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 8109
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v13

    .line 8110
    if-lt v13, v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_d

    .line 8111
    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 8112
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 8113
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->setSelectionInt(I)V

    .line 8114
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 8118
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 8120
    if-ltz v13, :cond_e

    const/16 v17, 0x1

    :goto_3
    return v17

    .line 8040
    .restart local v11    # "selected":Landroid/view/View;
    :cond_3
    if-le v14, v4, :cond_1

    .line 8041
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    .line 8042
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v18

    .line 8041
    sub-int v12, v17, v18

    goto :goto_0

    .line 8045
    .end local v11    # "selected":Landroid/view/View;
    .end local v13    # "selectedPos":I
    :cond_4
    if-ge v15, v5, :cond_8

    .line 8047
    move v13, v5

    .line 8048
    .restart local v13    # "selectedPos":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    if-ge v6, v2, :cond_1

    .line 8049
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 8050
    .local v16, "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 8051
    .local v8, "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 8053
    .local v9, "right":I
    if-nez v6, :cond_6

    .line 8055
    move v12, v8

    .line 8056
    move v14, v9

    .line 8058
    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    .line 8061
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    .line 8064
    :cond_6
    if-lt v8, v3, :cond_7

    .line 8066
    add-int v13, v5, v6

    .line 8067
    move v12, v8

    .line 8068
    move v14, v9

    .line 8069
    goto/16 :goto_0

    .line 8048
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 8073
    .end local v6    # "i":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v13    # "selectedPos":I
    .end local v16    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mItemCount:I

    .line 8074
    .local v7, "itemCount":I
    const/4 v10, 0x0

    .line 8075
    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    .line 8077
    .restart local v13    # "selectedPos":I
    add-int/lit8 v6, v2, -0x1

    .restart local v6    # "i":I
    :goto_5
    if-ltz v6, :cond_1

    .line 8078
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 8079
    .restart local v16    # "v":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 8080
    .restart local v8    # "left":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    .line 8082
    .restart local v9    # "right":I
    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    .line 8083
    move v12, v8

    .line 8084
    move v14, v9

    .line 8085
    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    .line 8086
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    .line 8090
    :cond_a
    if-gt v9, v4, :cond_b

    .line 8091
    add-int v13, v5, v6

    .line 8092
    move v12, v8

    .line 8093
    move v14, v9

    .line 8094
    goto/16 :goto_0

    .line 8077
    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 8108
    .end local v6    # "i":I
    .end local v7    # "itemCount":I
    .end local v8    # "left":I
    .end local v9    # "right":I
    .end local v16    # "v":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto/16 :goto_1

    .line 8116
    :cond_d
    const/4 v13, -0x1

    goto/16 :goto_2

    .line 8120
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_3
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7995
    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7996
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 7997
    const/4 v0, 0x1

    return v0

    .line 7999
    :cond_0
    return v1
.end method

.method protected semGetItemCount()I
    .locals 2

    .prologue
    .line 7425
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 7426
    .local v0, "adapter":Landroid/widget/Adapter;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    goto :goto_0
.end method

.method protected semIsHorizontalScrollBarHidden()Z
    .locals 1

    .prologue
    .line 1894
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected semIsShowingScrollbar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7413
    invoke-super {p0}, Landroid/widget/AdapterView;->semIsShowingScrollbar()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public semNotifyKeyPressState(Landroid/view/View;IJ)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 1558
    const/4 v0, 0x0

    .line 1560
    .local v0, "handledNotifyKeyPress":Z
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    .line 1561
    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    .line 1563
    .end local v0    # "handledNotifyKeyPress":Z
    :cond_0
    return v0
.end method

.method public semSetClickableInMultiSelectMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10757
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    .line 10756
    return-void
.end method

.method public semSetCustomMultiChoiceMode(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1686
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    .line 1685
    return-void
.end method

.method public semSetDragBlockEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10743
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 10742
    return-void
.end method

.method public semSetEnableVibrationAtLongPress(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1018
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    .line 1017
    return-void
.end method

.method public semSetHoverScrollEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 4913
    if-eqz p1, :cond_0

    .line 4914
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    .line 4912
    :goto_0
    return-void

    .line 4916
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public semSetMultiFocusEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 10736
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    .line 10735
    return-void
.end method

.method public semSetSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 7451
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 7452
    return-void

    .line 7454
    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    .line 7455
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int p1, v0, v1

    .line 7457
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 7450
    return-void
.end method

.method public semSmoothScrollBy(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    const/4 v2, 0x0

    .line 7469
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    .line 7470
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7473
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    .line 7474
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    .line 7475
    new-instance v1, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-direct {v1, p0, v2}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    .line 7476
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v2, 0x43160000    # 150.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    .line 7479
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    .line 7480
    .local v0, "isEmpty":Z
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    .line 7481
    if-lez p1, :cond_2

    .line 7482
    :goto_0
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    .line 7483
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7482
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    .line 7486
    :cond_2
    :goto_1
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    .line 7487
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7486
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    .line 7491
    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 7492
    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 7468
    :cond_4
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 8462
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->acceptFilter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 8463
    const/4 v5, 0x0

    return v5

    .line 8466
    :cond_0
    const/4 v2, 0x0

    .line 8467
    .local v2, "handled":Z
    const/4 v3, 0x1

    .line 8468
    .local v3, "okToSend":Z
    sparse-switch p1, :sswitch_data_0

    .line 8500
    .end local v3    # "okToSend":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 8501
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 8503
    move-object v1, p3

    .line 8504
    .local v1, "forwardEvent":Landroid/view/KeyEvent;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 8505
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    const/4 v5, 0x0

    invoke-static {p3, v6, v7, v5}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v1

    .line 8508
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 8509
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 8537
    .end local v0    # "action":I
    .end local v1    # "forwardEvent":Landroid/view/KeyEvent;
    .end local v2    # "handled":Z
    :cond_2
    :goto_1
    return v2

    .line 8475
    .restart local v2    # "handled":Z
    .restart local v3    # "okToSend":Z
    :sswitch_0
    const/4 v3, 0x0

    .line 8476
    goto :goto_0

    .line 8478
    :sswitch_1
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8479
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 8480
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    .line 8481
    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v4

    .line 8482
    .local v4, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v4, :cond_3

    .line 8483
    invoke-virtual {v4, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 8485
    :cond_3
    const/4 v2, 0x1

    .line 8492
    .end local v4    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_4
    :goto_2
    const/4 v3, 0x0

    .line 8493
    goto :goto_0

    .line 8486
    :cond_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 8487
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v5

    .line 8486
    if-eqz v5, :cond_4

    .line 8487
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_4

    .line 8488
    const/4 v2, 0x1

    .line 8489
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 8496
    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .local v3, "okToSend":Z
    goto :goto_0

    .line 8511
    .end local v3    # "okToSend":Z
    .restart local v0    # "action":I
    .restart local v1    # "forwardEvent":Landroid/view/KeyEvent;
    :pswitch_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8512
    .local v2, "handled":Z
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_6

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_7

    .line 8513
    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_1

    .line 8514
    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    .line 8515
    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    .line 8520
    .local v2, "handled":Z
    :pswitch_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 8521
    .local v2, "handled":Z
    const/16 v5, 0x3b

    if-eq p1, v5, :cond_9

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_a

    .line 8522
    :cond_9
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    .line 8523
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    .line 8524
    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    .line 8525
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    .line 8526
    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_1

    .line 8527
    :cond_a
    const/16 v5, 0x71

    if-eq p1, v5, :cond_b

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    .line 8528
    :cond_b
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_1

    .line 8533
    .local v2, "handled":Z
    :pswitch_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v2

    .local v2, "handled":Z
    goto/16 :goto_1

    .line 8468
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

    .line 8509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setChoiceMode(I)V
    .locals 5
    .param p1, "choiceMode"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1615
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    .line 1616
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1618
    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1620
    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    .line 1621
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    .line 1622
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    .line 1624
    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1625
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    .line 1628
    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    .line 1629
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    .line 1630
    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 1634
    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1635
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    .line 1614
    :cond_4
    :goto_0
    return-void

    .line 1636
    :cond_5
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    .line 1637
    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    .line 1638
    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v3, :cond_4

    .line 1639
    :cond_7
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .param p1, "onTop"    # Z

    .prologue
    .line 3636
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    .line 3635
    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1064
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    .line 1063
    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 4924
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    .line 4923
    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1
    .param p1, "alwaysShow"    # Z

    .prologue
    .line 1784
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    .line 1785
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_2

    .line 1789
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    .line 1791
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1792
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    .line 1783
    :cond_1
    :goto_1
    return-void

    .line 1786
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    .line 1794
    :cond_3
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$3;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$3;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1724
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1725
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    .line 1727
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1728
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    .line 1723
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$2;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1
    .param p1, "styleResId"    # I

    .prologue
    .line 1762
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    .line 1763
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    .line 1761
    :goto_0
    return-void

    .line 1765
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3
    .param p1, "filterText"    # Ljava/lang/String;

    .prologue
    .line 2540
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2538
    :cond_0
    :goto_0
    return-void

    .line 2541
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    .line 2544
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2545
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2546
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    .line 2548
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    .line 2549
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 2550
    .local v0, "f":Landroid/widget/Filter;
    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 2554
    .end local v0    # "f":Landroid/widget/Filter;
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    .line 2555
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    goto :goto_0
.end method

.method public setForcedClick(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 4141
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    .line 4140
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 2950
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    .line 2952
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 2956
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 2957
    .local v1, "visible":Z
    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2958
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    .line 2962
    .end local v1    # "visible":Z
    :cond_0
    return v0

    .line 2956
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "visible":Z
    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 7286
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 7287
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7289
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-get0(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    .line 7285
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9
    .param p1, "position"    # I
    .param p2, "value"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 1410
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-nez v1, :cond_0

    .line 1411
    return-void

    .line 1415
    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    .line 1416
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_7

    .line 1417
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1422
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1425
    :cond_1
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_a

    .line 1426
    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 1427
    .local v0, "oldValue":Z
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1428
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1429
    if-eqz p2, :cond_8

    .line 1430
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1435
    :cond_3
    :goto_0
    if-eq v0, p2, :cond_4

    .line 1436
    if-eqz p2, :cond_9

    .line 1437
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    .line 1442
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    .line 1443
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1444
    .local v4, "id":J
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1471
    .end local v0    # "oldValue":Z
    .end local v4    # "id":J
    :cond_5
    :goto_2
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_11

    .line 1409
    :cond_6
    :goto_3
    return-void

    .line 1418
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SemHorizontalAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1432
    .restart local v0    # "oldValue":Z
    :cond_8
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    .line 1439
    :cond_9
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_1

    .line 1448
    .end local v0    # "oldValue":Z
    :cond_a
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    .line 1451
    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1452
    :cond_b
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1453
    if-eqz v7, :cond_c

    .line 1454
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 1459
    :cond_c
    if-eqz p2, :cond_f

    .line 1460
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1461
    if-eqz v7, :cond_d

    .line 1462
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1464
    :cond_d
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1448
    :cond_e
    const/4 v7, 0x0

    .local v7, "updateIds":Z
    goto :goto_4

    .line 1465
    .end local v7    # "updateIds":Z
    :cond_f
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1466
    :cond_10
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    .line 1472
    :cond_11
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez v1, :cond_12

    .line 1473
    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    .line 1474
    :cond_12
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    .line 1475
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    .prologue
    .line 1654
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    .line 1655
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    .line 1657
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V

    .line 1653
    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1
    .param p1, "startitem"    # I
    .param p2, "enditem"    # I

    .prologue
    .line 10827
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 10828
    return-void

    .line 10830
    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    .line 10831
    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    .line 10825
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/SemHorizontalAbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    .prologue
    .line 1945
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    .line 1946
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 1944
    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0
    .param p1, "topPadding"    # I
    .param p2, "bottomPadding"    # I

    .prologue
    .line 6727
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingTop:I

    .line 6728
    iput p2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingBottom:I

    .line 6726
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x0

    .line 1282
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    .line 1283
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    .line 1284
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1285
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1286
    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    .line 1292
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    .line 1281
    return-void

    .line 1289
    :cond_1
    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    .line 1290
    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    .prologue
    .line 9147
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-set0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    .line 9146
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9053
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    .line 9054
    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9055
    .local v0, "fcNew":Landroid/content/Intent$FilterComparison;
    new-instance v1, Landroid/content/Intent$FilterComparison;

    .line 9056
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    .line 9055
    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 9057
    .local v1, "fcOld":Landroid/content/Intent$FilterComparison;
    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9058
    return-void

    .line 9061
    .end local v0    # "fcNew":Landroid/content/Intent$FilterComparison;
    .end local v1    # "fcOld":Landroid/content/Intent$FilterComparison;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    .line 9063
    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    .line 9064
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9065
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 9050
    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 9079
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9080
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 9076
    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 1882
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    .line 1883
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    .line 1884
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollBarStyle(I)V

    .line 1881
    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "left"    # Landroid/view/View;
    .param p2, "right"    # Landroid/view/View;

    .prologue
    .line 3732
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    .line 3733
    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    .line 3731
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 2143
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 2146
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    .line 2142
    return-void

    .line 2144
    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    goto :goto_0
.end method

.method public setSelectionFromStart(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "x"    # I

    .prologue
    .line 9945
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 9946
    return-void

    .line 9949
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 9950
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result p1

    .line 9951
    if-ltz p1, :cond_1

    .line 9952
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 9958
    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    .line 9959
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    .line 9960
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    .line 9963
    :goto_1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2

    .line 9964
    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    .line 9965
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    .line 9968
    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    .line 9969
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 9971
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 9944
    :cond_4
    return-void

    .line 9955
    :cond_5
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

    .line 9961
    :cond_6
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto :goto_1
.end method

.method abstract setSelectionInt(I)V
.end method

.method public setSelector(I)V
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 3647
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3646
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 3656
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3657
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3658
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3660
    :cond_0
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 3661
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3662
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3663
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    .line 3664
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    .line 3665
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    .line 3666
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    .line 3667
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3668
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    .line 3655
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1916
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    .line 1915
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .param p1, "stackFromBottom"    # Z

    .prologue
    .line 2225
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 2226
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    .line 2227
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayoutIfNecessary()V

    .line 2224
    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0
    .param p1, "textFilterEnabled"    # Z

    .prologue
    .line 2160
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    .line 2159
    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1037
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 1053
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    .line 1052
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 8969
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    .line 8968
    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 7299
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    .line 7298
    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 9130
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    .line 9131
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    .line 9129
    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3585
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    .line 3586
    .local v0, "isFingerAirView":Z
    :goto_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    const/4 v1, 0x1

    .line 3591
    .local v1, "isFingerAirViewPreview":Z
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isFingerHovered()Z

    move-result v2

    :cond_2
    :goto_2
    return v2

    .line 3585
    .end local v0    # "isFingerAirView":Z
    .end local v1    # "isFingerAirViewPreview":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isFingerAirView":Z
    goto :goto_0

    .line 3586
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "isFingerAirViewPreview":Z
    goto :goto_1

    :cond_5
    move v2, v3

    .line 3591
    goto :goto_2
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

    .prologue
    .line 3597
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenu(FFI)Z
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "metaState"    # I

    .prologue
    const/4 v6, 0x0

    .line 4300
    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v1

    .line 4301
    .local v1, "position":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 4302
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 4303
    .local v2, "id":J
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4304
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 4305
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4306
    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    .line 4309
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "id":J
    :cond_0
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4311
    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v4

    return v4
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 4320
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 4321
    .local v3, "longPressPosition":I
    if-ltz v3, :cond_2

    .line 4322
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 4323
    .local v4, "longPressId":J
    const/4 v6, 0x0

    .line 4325
    .local v6, "handled":Z
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 4326
    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 4329
    .end local v6    # "handled":Z
    :cond_0
    if-nez v6, :cond_1

    .line 4331
    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4330
    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 4333
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 4336
    :cond_1
    return v6

    .line 4338
    .end local v4    # "longPressId":J
    :cond_2
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "distance"    # I
    .param p2, "duration"    # I

    .prologue
    .line 7382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    .line 7381
    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 10
    .param p1, "distance"    # I
    .param p2, "duration"    # I
    .param p3, "linear"    # Z

    .prologue
    const/4 v9, 0x0

    .line 7497
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v7, :cond_0

    .line 7498
    new-instance v7, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    .line 7502
    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7503
    .local v1, "firstPos":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 7504
    .local v0, "childCount":I
    add-int v2, v1, v0

    .line 7505
    .local v2, "lastPos":I
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 7506
    .local v3, "leftLimit":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    .line 7510
    .local v5, "rightLimit":I
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_3

    .line 7511
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7512
    .local v4, "leftView":Landroid/view/View;
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7518
    .local v6, "rightView":Landroid/view/View;
    :goto_0
    if-eqz p1, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v7, :cond_4

    .line 7523
    :cond_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    .line 7524
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_2

    .line 7525
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    .line 7496
    :cond_2
    :goto_1
    return-void

    .line 7514
    .end local v4    # "leftView":Landroid/view/View;
    .end local v6    # "rightView":Landroid/view/View;
    :cond_3
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7515
    .restart local v4    # "leftView":Landroid/view/View;
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "rightView":Landroid/view/View;
    goto :goto_0

    .line 7518
    :cond_4
    if-eqz v0, :cond_1

    .line 7519
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_5

    if-ltz p1, :cond_1

    .line 7520
    :cond_5
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_6

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_6

    if-gtz p1, :cond_1

    .line 7521
    :cond_6
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_7

    if-gtz p1, :cond_1

    .line 7522
    :cond_7
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v7, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_8

    if-ltz p1, :cond_1

    .line 7528
    :cond_8
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    .line 7529
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    .line 7537
    const/4 v2, -0x1

    .line 7538
    .local v2, "index":I
    if-gez p1, :cond_3

    .line 7539
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    .line 7544
    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    .line 7545
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7546
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 7547
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 7548
    .local v4, "visibleRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 7550
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    mul-int v1, v7, v8

    .line 7551
    .local v1, "childRectArea":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v5, v7, v8

    .line 7552
    .local v5, "visibleRectArea":I
    int-to-float v7, v5

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 7553
    .local v3, "visibleArea":F
    const/high16 v6, 0x3f400000    # 0.75f

    .line 7554
    .local v6, "visibleThreshold":F
    if-gez p1, :cond_4

    cmpg-float v7, v3, v10

    if-gez v7, :cond_4

    .line 7557
    add-int/lit8 v2, v2, 0x1

    .line 7564
    .end local v1    # "childRectArea":I
    .end local v3    # "visibleArea":F
    .end local v5    # "visibleRectArea":I
    .end local v6    # "visibleThreshold":F
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 7536
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "visibleRect":Landroid/graphics/Rect;
    :cond_2
    return-void

    .line 7540
    :cond_3
    if-lez p1, :cond_0

    .line 7541
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    goto :goto_0

    .line 7558
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childRectArea":I
    .restart local v3    # "visibleArea":F
    .restart local v4    # "visibleRect":Landroid/graphics/Rect;
    .restart local v5    # "visibleRectArea":I
    .restart local v6    # "visibleThreshold":F
    :cond_4
    if-lez p1, :cond_1

    cmpg-float v7, v3, v10

    if-gez v7, :cond_1

    .line 7561
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 7316
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7317
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7319
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(I)V

    .line 7315
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 7370
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7371
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7373
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(II)V

    .line 7369
    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 7353
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7354
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7356
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(II)V

    .line 7352
    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    .line 7335
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    .line 7336
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    .line 7338
    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(III)V

    .line 7334
    return-void
.end method

.method public startMultiChoiceMode()V
    .locals 2

    .prologue
    .line 1665
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    .line 1666
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1664
    :cond_0
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 3568
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 3573
    const/4 v0, 0x0

    return v0

    .line 3571
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 34
    .param p1, "deltaX"    # I
    .param p2, "incrementalDeltaX"    # I

    .prologue
    .line 7642
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 7643
    .local v7, "childCount":I
    if-nez v7, :cond_0

    .line 7644
    const/16 v32, 0x1

    return v32

    .line 7647
    :cond_0
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v13

    .line 7648
    .local v13, "firstLeft":I
    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v21

    .line 7651
    .local v21, "lastRight":I
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v15

    .line 7652
    .local v15, "firstRight":I
    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v20

    .line 7654
    .local v20, "lastLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 7659
    .local v23, "listPadding":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 7660
    .local v10, "effectivePaddingLeft":I
    const/4 v11, 0x0

    .line 7661
    .local v11, "effectivePaddingRight":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 7662
    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 7663
    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/Rect;->right:I

    .line 7669
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v12, v32, v11

    .line 7671
    .local v12, "end":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    .line 7672
    sub-int v28, v15, v12

    .line 7673
    .local v28, "spaceAbove":I
    sub-int v29, v10, v20

    .line 7679
    .local v29, "spaceBelow":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v33, v0

    sub-int v31, v32, v33

    .line 7680
    .local v31, "width":I
    if-gez p1, :cond_4

    .line 7681
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 7686
    :goto_1
    if-gez p2, :cond_5

    .line 7687
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7692
    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7695
    .local v14, "firstPosition":I
    if-nez v14, :cond_7

    .line 7696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 7697
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v15

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    .line 7703
    :goto_3
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 7705
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    .line 7706
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v20

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    .line 7715
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 7716
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v20

    move/from16 v1, v32

    if-lt v0, v1, :cond_a

    if-ltz p2, :cond_a

    const/4 v5, 0x1

    .line 7717
    .local v5, "cannotScrollRight":Z
    :goto_5
    if-nez v14, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    if-gt v15, v0, :cond_b

    if-gtz p2, :cond_b

    const/4 v4, 0x1

    .line 7723
    .local v4, "cannotScrollLeft":Z
    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_10

    .line 7724
    :cond_2
    if-eqz p2, :cond_f

    const/16 v32, 0x1

    :goto_7
    return v32

    .line 7675
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    .end local v14    # "firstPosition":I
    .end local v28    # "spaceAbove":I
    .end local v29    # "spaceBelow":I
    .end local v31    # "width":I
    :cond_3
    sub-int v28, v10, v13

    .line 7676
    .restart local v28    # "spaceAbove":I
    sub-int v29, v21, v12

    .restart local v29    # "spaceBelow":I
    goto/16 :goto_0

    .line 7683
    .restart local v31    # "width":I
    :cond_4
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    .line 7689
    :cond_5
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    .line 7699
    .restart local v14    # "firstPosition":I
    :cond_6
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    sub-int v32, v13, v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 7701
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    .line 7708
    :cond_8
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    .line 7710
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    .line 7716
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollRight":Z
    goto :goto_5

    .line 7717
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "cannotScrollLeft":Z
    goto :goto_6

    .line 7719
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    :cond_c
    if-nez v14, :cond_d

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-lt v13, v0, :cond_d

    if-ltz p2, :cond_d

    const/4 v5, 0x1

    .line 7720
    .restart local v5    # "cannotScrollRight":Z
    :goto_8
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    sub-int v32, v32, v33

    move/from16 v0, v21

    move/from16 v1, v32

    if-gt v0, v1, :cond_e

    if-gtz p2, :cond_e

    const/4 v4, 0x1

    .restart local v4    # "cannotScrollLeft":Z
    goto/16 :goto_6

    .line 7719
    .end local v4    # "cannotScrollLeft":Z
    .end local v5    # "cannotScrollRight":Z
    :cond_d
    const/4 v5, 0x0

    .restart local v5    # "cannotScrollRight":Z
    goto :goto_8

    .line 7720
    :cond_e
    const/4 v4, 0x0

    .restart local v4    # "cannotScrollLeft":Z
    goto/16 :goto_6

    .line 7724
    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 7726
    :cond_10
    if-gez p2, :cond_1b

    const/16 v27, 0x1

    .line 7728
    .local v27, "rightSide":Z
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v19

    .line 7729
    .local v19, "inTouchMode":Z
    if-eqz v19, :cond_11

    .line 7730
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    .line 7733
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeaderViewsCount()I

    move-result v17

    .line 7734
    .local v17, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFooterViewsCount()I

    move-result v33

    sub-int v16, v32, v33

    .line 7736
    .local v16, "footerViewsStart":I
    const/16 v30, 0x0

    .line 7737
    .local v30, "start":I
    const/4 v9, 0x0

    .line 7739
    .local v9, "count":I
    const/16 v24, 0x1

    .line 7741
    .local v24, "performHaptic":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_21

    .line 7742
    if-eqz v27, :cond_1e

    .line 7745
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    .line 7746
    .local v22, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 7747
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    .line 7749
    :cond_12
    add-int/lit8 v18, v7, -0x1

    .local v18, "i":I
    :goto_a
    if-ltz v18, :cond_13

    .line 7750
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7751
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-lt v0, v1, :cond_1c

    .line 7841
    .end local v6    # "child":Landroid/view/View;
    .end local v22    # "left":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    move/from16 v32, v0

    add-int v32, v32, p1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionViewNewLeft:I

    .line 7843
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 7845
    if-lez v9, :cond_14

    .line 7846
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    .line 7847
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    .line 7852
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v32

    if-nez v32, :cond_15

    .line 7853
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 7856
    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    .line 7858
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    if-eqz v27, :cond_27

    .line 7860
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-nez v32, :cond_17

    if-eqz v27, :cond_17

    .line 7861
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    .line 7863
    :cond_17
    :goto_b
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 7864
    .local v3, "absIncrementalDeltaX":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_28

    .line 7865
    move/from16 v0, v28

    if-lt v0, v3, :cond_18

    move/from16 v0, v29

    if-ge v0, v3, :cond_19

    .line 7866
    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->fillGapRTL(Z)V

    .line 7875
    :cond_19
    :goto_c
    if-nez v19, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2a

    .line 7876
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    .line 7877
    .local v8, "childIndex":I
    if-ltz v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_1a

    .line 7878
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 7889
    .end local v8    # "childIndex":I
    :cond_1a
    :goto_d
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    .line 7891
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    .line 7893
    const/16 v32, 0x0

    return v32

    .line 7726
    .end local v3    # "absIncrementalDeltaX":I
    .end local v9    # "count":I
    .end local v16    # "footerViewsStart":I
    .end local v17    # "headerViewsCount":I
    .end local v18    # "i":I
    .end local v19    # "inTouchMode":Z
    .end local v24    # "performHaptic":Z
    .end local v27    # "rightSide":Z
    .end local v30    # "start":I
    :cond_1b
    const/16 v27, 0x0

    .restart local v27    # "rightSide":Z
    goto/16 :goto_9

    .line 7755
    .restart local v6    # "child":Landroid/view/View;
    .restart local v9    # "count":I
    .restart local v16    # "footerViewsStart":I
    .restart local v17    # "headerViewsCount":I
    .restart local v18    # "i":I
    .restart local v19    # "inTouchMode":Z
    .restart local v22    # "left":I
    .restart local v24    # "performHaptic":Z
    .restart local v30    # "start":I
    :cond_1c
    move/from16 v30, v18

    .line 7756
    add-int/lit8 v9, v9, 0x1

    .line 7757
    add-int v25, v14, v18

    .line 7758
    .local v25, "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7759
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_1d

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_1d

    .line 7762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7749
    :cond_1d
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_a

    .line 7769
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v22    # "left":I
    .end local v25    # "position":I
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    .line 7770
    .local v26, "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f

    .line 7771
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 7773
    :cond_1f
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_e
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    .line 7774
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7775
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    .line 7779
    add-int/lit8 v9, v9, 0x1

    .line 7780
    add-int v25, v14, v18

    .line 7781
    .restart local v25    # "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7782
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_20

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_20

    .line 7786
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7773
    :cond_20
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 7793
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v25    # "position":I
    .end local v26    # "right":I
    :cond_21
    if-eqz v27, :cond_24

    .line 7795
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    .line 7796
    .restart local v22    # "left":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_22

    .line 7797
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    .line 7799
    :cond_22
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_f
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    .line 7800
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7801
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 7806
    add-int/lit8 v9, v9, 0x1

    .line 7807
    add-int v25, v14, v18

    .line 7808
    .restart local v25    # "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7809
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_23

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    .line 7813
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7799
    :cond_23
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 7819
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "i":I
    .end local v22    # "left":I
    .end local v25    # "position":I
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    .line 7820
    .restart local v26    # "right":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    .line 7821
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    .line 7823
    :cond_25
    add-int/lit8 v18, v7, -0x1

    .restart local v18    # "i":I
    :goto_10
    if-ltz v18, :cond_13

    .line 7824
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7825
    .restart local v6    # "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    .line 7828
    move/from16 v30, v18

    .line 7829
    add-int/lit8 v9, v9, 0x1

    .line 7830
    add-int v25, v14, v18

    .line 7831
    .restart local v25    # "position":I
    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 7832
    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_26

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_26

    .line 7835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    .line 7823
    :cond_26
    add-int/lit8 v18, v18, -0x1

    goto :goto_10

    .line 7859
    .end local v6    # "child":Landroid/view/View;
    .end local v25    # "position":I
    .end local v26    # "right":I
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    goto/16 :goto_b

    .line 7869
    .restart local v3    # "absIncrementalDeltaX":I
    :cond_28
    move/from16 v0, v28

    if-lt v0, v3, :cond_29

    move/from16 v0, v29

    if-ge v0, v3, :cond_19

    .line 7870
    :cond_29
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->fillGap(Z)V

    goto/16 :goto_c

    .line 7880
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2b

    .line 7881
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    .line 7882
    .restart local v8    # "childIndex":I
    if-ltz v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_1a

    .line 7883
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_d

    .line 7886
    .end local v8    # "childIndex":I
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_d
.end method

.method triggerDoubleFling(I)V
    .locals 5
    .param p1, "initialVelocity"    # I

    .prologue
    const/4 v4, 0x0

    .line 6350
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 6351
    .local v0, "adapterCount":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 6353
    .local v1, "visibleItemsCount":I
    if-lez p1, :cond_2

    .line 6354
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    .line 6355
    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6357
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 6349
    :cond_1
    :goto_0
    return-void

    .line 6358
    :cond_2
    if-gez p1, :cond_1

    .line 6359
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    .line 6360
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 6362
    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    .prologue
    .line 6327
    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    .line 6328
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->triggerDoubleFling(I)V

    .line 6326
    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "edgeeffectCustomEdge"    # Landroid/graphics/drawable/Drawable;
    .param p2, "edgeeffectCustomGlow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1069
    return-void
.end method

.method updateScrollIndicators()V
    .locals 9

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 2991
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 2993
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 2995
    .local v3, "count":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v7, :cond_4

    const/4 v0, 0x1

    .line 2999
    .local v0, "canScrollLeft":Z
    :goto_0
    if-nez v0, :cond_0

    if-lez v3, :cond_0

    .line 3001
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3004
    .local v2, "child":Landroid/view/View;
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v4, v7, :cond_8

    const/4 v0, 0x1

    .line 3008
    .end local v2    # "child":Landroid/view/View;
    :cond_0
    :goto_2
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_9

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3011
    .end local v0    # "canScrollLeft":Z
    .end local v3    # "count":I
    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 3013
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 3016
    .restart local v3    # "count":I
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_b

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_a

    const/4 v1, 0x1

    .line 3020
    .local v1, "canScrollRight":Z
    :goto_4
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    .line 3022
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3025
    .restart local v2    # "child":Landroid/view/View;
    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v7, p0, Landroid/view/View;->mRight:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v4, v7, :cond_e

    const/4 v1, 0x1

    .line 3028
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    :goto_6
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_f

    :goto_7
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2990
    .end local v1    # "canScrollRight":Z
    .end local v3    # "count":I
    :cond_3
    return-void

    .line 2995
    .restart local v3    # "count":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "canScrollLeft":Z
    goto :goto_0

    .line 2996
    .end local v0    # "canScrollLeft":Z
    :cond_5
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "canScrollLeft":Z
    goto :goto_0

    .end local v0    # "canScrollLeft":Z
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "canScrollLeft":Z
    goto :goto_0

    .line 3002
    :cond_7
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "child":Landroid/view/View;
    goto :goto_1

    .line 3004
    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    .end local v2    # "child":Landroid/view/View;
    :cond_9
    move v4, v6

    .line 3008
    goto :goto_3

    .line 3016
    .end local v0    # "canScrollLeft":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "canScrollRight":Z
    goto :goto_4

    .line 3017
    .end local v1    # "canScrollRight":Z
    :cond_b
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v7, :cond_c

    const/4 v1, 0x1

    .restart local v1    # "canScrollRight":Z
    goto :goto_4

    .end local v1    # "canScrollRight":Z
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "canScrollRight":Z
    goto :goto_4

    .line 3023
    :cond_d
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "child":Landroid/view/View;
    goto :goto_5

    .line 3025
    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    .end local v2    # "child":Landroid/view/View;
    :cond_f
    move v5, v6

    .line 3028
    goto :goto_7
.end method

.method updateSelectorState()V
    .locals 4

    .prologue
    .line 3737
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 3738
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3739
    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    if-eqz v2, :cond_2

    .line 3749
    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3736
    :cond_1
    :goto_0
    return-void

    .line 3739
    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt v2, v3, :cond_0

    .line 3740
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3741
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    .line 3742
    .local v1, "ellipsized":Z
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3746
    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 3743
    :cond_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 3744
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    .line 3752
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "ellipsized":Z
    :cond_5
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 3844
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
