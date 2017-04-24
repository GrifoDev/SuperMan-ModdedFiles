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

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/SemHorizontalAbsListView;IIIIIIIIZ)Z
    .locals 1

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

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/widget/SemHorizontalAbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Landroid/widget/SemHorizontalAbsListView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/widget/SemHorizontalAbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    sput v1, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    const/4 v0, 0x1

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    const/4 v0, 0x2

    sput v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_FINISHING:I

    const/16 v0, 0x1f4

    sput v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    new-array v1, v7, [Z

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v2, 0x1f4

    iput-wide v2, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    sget v1, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$1;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    invoke-virtual {p0, v7}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    sget-object v1, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->initializeScrollbarsInternal(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "SemHorizontalAbsListView"

    const-string/jumbo v2, "Get MotionRecognitionManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006a

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/SemHorizontalAbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    invoke-direct/range {p0 .. p4}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v14

    const-string/jumbo v15, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v14, v15}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    new-instance v14, Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollProfilingStarted:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingProfilingStarted:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    const/4 v14, 0x1

    new-array v14, v14, [Z

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v14, 0x2

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHapticOverScroll:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    const-wide/16 v14, 0x1f4

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/high16 v14, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    sget v14, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_IDLE:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    new-instance v14, Landroid/widget/SemHorizontalAbsListView$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/SemHorizontalAbsListView$1;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->initAbsListView()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mOwnerThread:Ljava/lang/Thread;

    sget-object v14, Lcom/android/internal/R$styleable;->AbsListView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/SemHorizontalAbsListView;->setStackFromBottom(Z)V

    const/4 v14, 0x3

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->setTextFilterEnabled(Z)V

    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/SemHorizontalAbsListView;->setTranscriptMode(I)V

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    const/16 v14, 0x8

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollStyle(I)V

    const/16 v14, 0x9

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/SemHorizontalAbsListView;->setSmoothScrollbarEnabled(Z)V

    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollAlwaysVisible(Z)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    if-nez v14, :cond_1

    const-string/jumbo v14, "SemHorizontalAbsListView"

    const-string/jumbo v15, "Get MotionRecognitionManager"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v14, "motion_recognition"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionRecognitionManager:Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    :cond_1
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/Filterable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

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

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

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

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

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

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private clearScrollingCache()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$6;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$6;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private contentFits()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-eq v0, v3, :cond_1

    return v2

    :cond_1
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v3, :cond_4

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

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_5

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

    :cond_5
    return v2
.end method

.method private createScrollingCache()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingActive:Z

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCachingStarted:Z

    goto :goto_0
.end method

.method private createTextFilter(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302e9

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    const v2, 0x10302ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0
.end method

.method private dismissPopup()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private doScrollToLeftEnd()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doScrollToRightEnd()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollDirection:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollFrom:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollTo:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollNext:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollingCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollInterpolator:Landroid/view/animation/DecelerateInterpolator;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private drawQuickController(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_3

    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    :goto_1
    return-void

    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsQCShown:Z

    goto :goto_1
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

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

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private finishGlows()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

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

.method private getTextFilterInput()Landroid/widget/EditText;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090173

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/16 v2, 0xb1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setRawInputType(I)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

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

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    iput-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-eqz v7, :cond_1

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    :cond_1
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    if-eqz v7, :cond_2

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionCurrentTime:J

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPenDragScrollTimeInterval:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_0

    :cond_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_SPEED:F

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

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

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_6

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-gez v7, :cond_6

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    :cond_3
    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_9

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, -0x1

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_8

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v7, :cond_8

    :goto_2
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_17

    if-gez v5, :cond_b

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    if-eq v7, v8, :cond_b

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_6
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x4

    cmp-long v7, v8, v10

    if-ltz v7, :cond_7

    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-gez v7, :cond_7

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    :cond_7
    iget-wide v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionDurationTime:J

    const-wide/16 v10, 0x5

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    int-to-double v8, v8

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto/16 :goto_1

    :cond_8
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_4

    goto/16 :goto_2

    :cond_9
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    mul-int/lit8 v5, v7, 0x1

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-nez v7, :cond_a

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    if-eqz v7, :cond_a

    :goto_4
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    goto/16 :goto_3

    :cond_a
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    if-eq v7, v8, :cond_4

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    if-eqz v7, :cond_4

    goto :goto_4

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

    :cond_c
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    if-eqz v6, :cond_10

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_11

    :cond_e
    const/4 v0, 0x0

    :goto_5
    if-eqz v0, :cond_f

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_12

    :cond_f
    :goto_6
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    :cond_10
    const/4 v0, 0x1

    goto :goto_5

    :cond_11
    const/4 v0, 0x1

    goto :goto_5

    :cond_12
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

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

    :cond_14
    :goto_8
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_6

    :cond_15
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_13

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_7

    :cond_16
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_8

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

    :cond_18
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_19
    if-lez v5, :cond_1b

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    if-eq v7, v8, :cond_1b

    :cond_1a
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1b
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1c

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_1f

    :cond_1c
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_1d

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_20

    :cond_1d
    :goto_a
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    :cond_1e
    const/4 v0, 0x1

    goto :goto_9

    :cond_1f
    const/4 v0, 0x1

    goto :goto_9

    :cond_20
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_23

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_21

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

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

    :cond_22
    :goto_c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_a

    :cond_23
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_21

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_21

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_b

    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_c

    :pswitch_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_28

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

    :goto_e
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    const/4 v8, 0x1

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v8, v9, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2b

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    neg-int v4, v7

    :goto_f
    if-gez v4, :cond_26

    if-nez v1, :cond_27

    :cond_26
    if-lez v4, :cond_2c

    if-eqz v2, :cond_2c

    :cond_27
    const/4 v7, 0x0

    invoke-virtual {p0, v4, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->HOVERSCROLL_DELAY:I

    int-to-long v8, v8

    const/4 v10, 0x2

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_28
    const/4 v2, 0x1

    goto :goto_d

    :cond_29
    const/4 v2, 0x0

    goto :goto_d

    :cond_2a
    const/4 v1, 0x0

    goto :goto_e

    :cond_2b
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollSpeed:I

    goto :goto_f

    :cond_2c
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v6

    if-eqz v6, :cond_2f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2d

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v7

    if-eqz v7, :cond_30

    :cond_2d
    const/4 v0, 0x0

    :goto_10
    if-eqz v0, :cond_2e

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-eqz v7, :cond_31

    :cond_2e
    :goto_11
    if-nez v0, :cond_0

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v7, :cond_0

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_0

    :cond_2f
    const/4 v0, 0x1

    goto :goto_10

    :cond_30
    const/4 v0, 0x1

    goto :goto_10

    :cond_31
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_34

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_32

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

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

    :cond_33
    :goto_13
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto :goto_11

    :cond_34
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_32

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_32

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_12

    :cond_35
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_13

    :pswitch_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_36

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->doScrollToLeftEnd()V

    goto/16 :goto_0

    :cond_36
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->doScrollToRightEnd()V

    goto/16 :goto_0

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

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->setScrollingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->semEnableHorizontalScrollbar()V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOverflingDistance:I

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600dc

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiFocusImage:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x11600dd

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    :cond_1
    new-instance v3, Landroid/view/HapticPreDrawListener;

    invoke-direct {v3}, Landroid/view/HapticPreDrawListener;-><init>()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isLockScreenMode()Z
    .locals 8

    const/4 v5, 0x1

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    const/4 v2, 0x0

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move v1, v5

    goto :goto_0
.end method

.method private isOwnerThread()Z
    .locals 2

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
    .locals 1

    sget-boolean v0, Landroid/widget/SemHorizontalAbsListView;->sIsSpenUspLevel3:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "SemHorizontalAbsListView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onHoverDrawableState(Landroid/view/MotionEvent;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    const/4 v14, 0x7

    if-eq v1, v14, :cond_0

    const/16 v14, 0x9

    if-ne v1, v14, :cond_2

    :cond_0
    const/4 v14, 0x2

    if-ne v11, v14, :cond_2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    :cond_1
    :goto_0
    const/4 v14, 0x1

    if-eq v11, v14, :cond_4

    const/4 v14, 0x3

    if-ne v11, v14, :cond_3

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    return-void

    :cond_2
    const/16 v14, 0xa

    if-ne v1, v14, :cond_1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

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

    :cond_5
    return-void

    :cond_6
    const/16 v14, 0x9

    if-ne v1, v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    :cond_7
    return-void

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isMultiWindows()Z

    move-result v14

    if-eqz v14, :cond_9

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInDialog()Z

    move-result v14

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "finger_air_view"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "finger_air_view_information_preview"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_10

    const/4 v7, 0x1

    :goto_3
    if-eqz v6, :cond_15

    if-eqz v7, :cond_15

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHovered()Z

    move-result v14

    if-nez v14, :cond_c

    const/4 v14, 0x1

    if-ne v11, v14, :cond_b

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setFingerHovered(Z)V

    :cond_b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->setHovered(Z)V

    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    if-eq v14, v9, :cond_11

    const/4 v2, 0x1

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelectorDefault()Z

    move-result v10

    const/4 v3, 0x0

    if-gez v9, :cond_12

    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    :cond_e
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    return-void

    :cond_f
    const/4 v6, 0x0

    goto :goto_2

    :cond_10
    const/4 v7, 0x0

    goto :goto_3

    :cond_11
    const/4 v2, 0x0

    goto :goto_4

    :cond_12
    move-object/from16 v0, p0

    iput v9, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->findSetFingerHovedInAppWidget(Landroid/view/View;)Z

    move-result v8

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_16

    if-eqz v5, :cond_16

    if-eqz v8, :cond_16

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    :cond_13
    :goto_5
    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    if-eqz v14, :cond_14

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->refreshDrawableState()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_14
    const/16 v14, 0xa

    if-ne v1, v14, :cond_15

    if-eqz v10, :cond_17

    :cond_15
    :goto_6
    return-void

    :cond_16
    if-nez v10, :cond_13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :cond_17
    const/4 v14, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoveredOnEllipsizedText:Z

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v15, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v2, v4, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    if-ne v1, v4, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private onTouchCancel()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v1, :pswitch_data_0

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    :goto_0
    :pswitch_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    return-void

    :pswitch_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchDown(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v4, :cond_1

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v4, v7, :cond_5

    if-ltz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/ListAdapter;

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-nez v4, :cond_0

    new-instance v4, Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-direct {v4, p0, v6}, Landroid/widget/SemHorizontalAbsListView$CheckForTap;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForTap;)V

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    :cond_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v0, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    :cond_2
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    const/high16 v4, -0x80000000

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->performButtonActionOnTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :pswitch_0
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_4
    const/4 v4, 0x5

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    goto :goto_1

    :cond_5
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-ne v4, v7, :cond_1

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    const/4 v4, 0x3

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v4}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->flywheelTouch()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V
    .locals 7

    const/4 v6, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    :cond_0
    iget-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v2, v4

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    int-to-float v4, v2

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    int-to-float v5, v5

    invoke-virtual {p0, v4, v3, v5}, Landroid/view/View;->pointInView(FFF)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    :goto_1
    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v2, v4, p2}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

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

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StrictMode$Span;->finish()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-eqz v17, :cond_3

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

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

    :goto_1
    if-eqz v10, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_4
    :goto_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    new-instance v17, Landroid/widget/SemHorizontalAbsListView$PerformClick;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$PerformClick;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    iput v13, v14, Landroid/widget/SemHorizontalAbsListView$PerformClick;->mClickMotionPosition:I

    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

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

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    move-object/from16 v17, v0

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

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

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    instance-of v0, v8, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    check-cast v8, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

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

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_b
    new-instance v17, Landroid/widget/SemHorizontalAbsListView$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Landroid/widget/SemHorizontalAbsListView$4;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_4
    return-void

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    move-object/from16 v17, v0

    goto/16 :goto_3

    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

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

    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto :goto_4

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

    invoke-virtual {v14}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    sub-int v7, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_12

    if-lt v9, v6, :cond_12

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

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    sub-int v17, v17, v7

    move/from16 v0, v17

    if-gt v12, v0, :cond_12

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v9

    add-int/lit8 v17, v5, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v12

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

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

    move/from16 v0, v17

    float-to-int v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    sub-int v17, v6, v17

    move/from16 v0, v17

    if-eq v9, v0, :cond_16

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

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    move/from16 v17, v0

    add-int v17, v17, v7

    move/from16 v0, v17

    if-eq v12, v0, :cond_16

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_15

    new-instance v17, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_15
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_0

    :cond_16
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    goto/16 :goto_0

    :cond_18
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    if-nez v17, :cond_19

    new-instance v17, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_19
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

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

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v11, v0

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    neg-int v0, v11

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startOverfling(I)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startSpringback()V

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

.method private positionPopup()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x2

    new-array v2, v3, [I

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

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

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    const/16 v5, 0x51

    invoke-virtual {v3, p0, v5, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    aget v4, v2, v7

    invoke-virtual {v3, v4, v0, v6, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method

.method private positionSelector(ILandroid/view/View;ZFF)V
    .locals 8

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq p1, v4, :cond_6

    const/4 v1, 0x1

    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    sget-object v4, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v2, p4, p5}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_4
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v4, v0, :cond_5

    if-eqz v0, :cond_7

    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_5
    return-void

    :cond_6
    const/4 v1, 0x0

    goto :goto_0

    :cond_7
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private postOnJumpScrollToFinished()V
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$5;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$5;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method private recycleVelocityTracker()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private releaseAllBoosters()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_0
    return-void
.end method

.method private scrollIfNeeded(IILandroid/view/MotionEvent;)V
    .locals 36

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v33, p1, v3

    const/16 v35, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    sub-int v33, v33, v3

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int v3, v3, p1

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int v33, v33, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    neg-int v0, v3

    move/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollConsumed:[I

    const/4 v4, 0x0

    aget v34, v3, v4

    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_1
    move/from16 v20, v33

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    sub-int v3, p1, v3

    add-int v21, v3, v34

    :goto_1
    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v3, :cond_2

    const-string/jumbo v3, "SemHorizontalAbsListView-scroll"

    invoke-static {v3}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v3, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    if-eqz v32, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    if-ltz v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v23, v3, v4

    :goto_2
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v26

    :cond_4
    const/16 v18, 0x0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v18

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_7

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v27

    if-eqz v18, :cond_6

    move/from16 v0, v21

    neg-int v3, v0

    sub-int v4, v27, v26

    sub-int v7, v3, v4

    sub-int v4, v7, v21

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    rsub-int/lit8 v22, v3, 0x0

    if-eqz p3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mScrollOffset:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_6
    :goto_3
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    :cond_7
    add-int v3, p1, v22

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

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
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    div-int/lit8 v23, v3, 0x2

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v15}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v31

    if-eqz v31, :cond_e

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_e
    if-nez v19, :cond_f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    :cond_f
    if-lez v21, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    :cond_11
    if-gez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v30, v0

    sub-int v29, v30, v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, p1

    if-le v0, v3, :cond_19

    const/16 v28, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    if-nez v3, :cond_14

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    :cond_14
    move/from16 v0, v21

    neg-int v9, v0

    if-gez v29, :cond_1a

    if-ltz v30, :cond_1a

    :cond_15
    move/from16 v0, v30

    neg-int v9, v0

    add-int v21, v21, v9

    :goto_6
    if-eqz v9, :cond_16

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/View;->mScrollX:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollDistance:I

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, p0

    invoke-virtual/range {v8 .. v17}, Landroid/view/View;->overScrollBy(IIIIIIIIZ)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v31

    if-eqz v31, :cond_1c

    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_16

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->contentFits()Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_16
    :goto_7
    if-eqz v21, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mScrollX:I

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/View;->mScrollX:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-virtual/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->findClosestMotionRow(I)I

    move-result v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v24, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    if-eqz v25, :cond_20

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_8
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    :cond_18
    add-int/lit8 v3, p1, 0x0

    add-int v3, v3, v35

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mDirection:I

    goto/16 :goto_4

    :cond_19
    const/16 v28, -0x1

    goto/16 :goto_5

    :cond_1a
    if-lez v29, :cond_1b

    if-lez v30, :cond_15

    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_1c
    if-lez v33, :cond_1e

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7

    :cond_1e
    if-gez v33, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    int-to-float v4, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_7

    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_8
.end method

.method private semGetEnableVibrationAtLongPress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return v0
.end method

.method private semNotifyMultiSelectState(Landroid/view/View;IJ)Z
    .locals 9

    const/4 v0, 0x0

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

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

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setAlwaysShow(Z)V

    :cond_0
    return-void
.end method

.method private setFastScrollerEnabledUiThread(Z)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->resolvePadding()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->updateLayout()V

    :cond_1
    return-void

    :cond_2
    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setItemViewLayoutParams(Landroid/view/View;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_0
    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    iput v2, v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_2
    move-object v0, v1

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0
.end method

.method private setupQuickController(I)V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v9, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v17, v0

    sub-int v7, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    div-int/lit8 v17, v7, 0x2

    add-int v5, v16, v17

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v16, "cocktailbarservice"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v6, 0x0

    :cond_0
    if-eqz v6, :cond_2

    const/16 v16, 0x0

    const/16 v17, 0x0

    filled-new-array/range {v16 .. v17}, [I

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/16 v16, 0x1

    aget v16, v10, v16

    if-gez v16, :cond_1

    const/16 v16, 0x1

    aget v16, v10, v16

    move/from16 v0, v16

    neg-int v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    add-int v5, v5, v16

    :cond_1
    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    const/16 v16, 0x1

    aget v16, v10, v16

    add-int v16, v16, v9

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    sub-int v12, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v12, v0, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v16, v0

    sub-int v16, v12, v16

    div-int/lit8 v16, v16, 0x2

    sub-int v5, v5, v16

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v13, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v14, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    goto :goto_0

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

    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080542

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080543

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

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

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v11, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080540

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080541

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCBtnPressedDrawable:Landroid/graphics/drawable/Drawable;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCBtnDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

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

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkFocus()V

    :cond_0
    return-void
.end method

.method private startScrollIfNeeded(IILandroid/view/MotionEvent;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    sub-int v1, p1, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v7, p0, Landroid/view/View;->mScrollX:I

    if-eqz v7, :cond_2

    move v5, v8

    :goto_0
    if-nez v5, :cond_0

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    if-le v2, v7, :cond_7

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getNestedScrollAxes()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_7

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->createScrollingCache()V

    if-eqz v5, :cond_3

    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v9, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    :goto_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v7}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v9}, Landroid/view/View;->setPressed(Z)V

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v7, v10

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v9}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPointerCount:I

    if-le v7, v8, :cond_5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setPressed(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v5, v9

    goto :goto_0

    :cond_3
    const/4 v7, 0x3

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-lez v1, :cond_4

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    :goto_3
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    goto :goto_1

    :cond_4
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    neg-int v7, v7

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-interface {v6, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView;->scrollIfNeeded(IILandroid/view/MotionEvent;)V

    return v8

    :cond_7
    return v9
.end method

.method private updateOnScreenCheckedViews()V
    .locals 8

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

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

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v4, v2, v3

    instance-of v6, v0, Landroid/widget/Checkable;

    if-eqz v6, :cond_2

    check-cast v0, Landroid/widget/Checkable;

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

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

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setActivated(Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private useDefaultSelector()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addExtraPaddingInLeftHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

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

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    return-void
.end method

.method public addExtraPaddingInRightHoverArea(I)V
    .locals 3

    int-to-float v0, p1

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

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

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    if-lez p1, :cond_5

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    :goto_0
    add-int v3, v2, v0

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_4

    if-lez v2, :cond_3

    :cond_1
    :goto_1
    return v6

    :cond_2
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v4

    goto :goto_0

    :cond_3
    move v6, v7

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

    :cond_5
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_7

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_2
    add-int v3, v2, v0

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_9

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v3, v8, :cond_8

    :cond_6
    :goto_3
    return v6

    :cond_7
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3

    :cond_9
    if-gtz v2, :cond_6

    iget v8, v5, Landroid/graphics/Rect;->left:I

    if-ge v1, v8, :cond_8

    goto :goto_3
.end method

.method public checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1

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

    instance-of v0, p1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    return v0
.end method

.method public clearChoices()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return-void
.end method

.method public clearTextFilter()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->getTextFilterInput()Landroid/widget/EditText;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_5

    mul-int/lit8 v1, v0, 0x64

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_0

    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    add-int/2addr v1, v7

    :cond_0
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    :cond_1
    return v1

    :cond_2
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_3

    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v6

    add-int/2addr v1, v7

    :cond_3
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v3, v7

    mul-int/lit8 v7, v7, 0x64

    div-int/2addr v7, v6

    sub-int/2addr v1, v7

    :cond_4
    return v1

    :cond_5
    const/4 v7, 0x1

    return v7

    :cond_6
    return v8
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 13

    const/high16 v12, 0x42c80000    # 100.0f

    const/4 v11, 0x0

    iget v2, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v8, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v4, v8, -0x1

    if-ltz v2, :cond_4

    if-lez v0, :cond_4

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v8, :cond_0

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_4

    iget v8, p0, Landroid/widget/AdapterView;->mItemCount:I

    sub-int/2addr v8, v4

    mul-int/lit8 v8, v8, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

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

    add-int/2addr v8, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    return v8

    :cond_0
    invoke-virtual {p0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_4

    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v7

    sub-int/2addr v8, v9

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

    add-int/2addr v8, v9

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    return v8

    :cond_1
    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v2, :cond_2

    const/4 v3, 0x0

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

    :cond_2
    add-int v8, v2, v0

    if-ne v8, v1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    div-int/lit8 v8, v0, 0x2

    add-int v3, v2, v8

    goto :goto_0

    :cond_4
    return v11
.end method

.method protected computeHorizontalScrollRange()I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_0

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

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    goto :goto_0
.end method

.method confirmCheckedPositionsById()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v2, 0x0

    const/4 v9, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v9, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

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

    iget v4, v0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    move/from16 v16, v17

    :goto_1
    move/from16 v0, v16

    if-ge v0, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, v16

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v14

    cmp-long v3, v6, v14

    if-nez v3, :cond_2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    :cond_0
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v6, v7}, Landroid/util/LongSparseArray;->delete(J)V

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

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

.method createPositionScroller()Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    return-object v0
.end method

.method public deferNotifyDataSetChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 18

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string/jumbo v13, "cropUri"

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gtz v13, :cond_0

    const/high16 v13, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

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

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_1
    const/4 v13, 0x1

    return v13

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-eqz v7, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v8

    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v13, v14, :cond_c

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_5

    if-lez v9, :cond_5

    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->right:I

    sub-int/2addr v14, v15

    if-gt v13, v14, :cond_d

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

    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v13, :cond_f

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-lez v13, :cond_6

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    if-ge v13, v14, :cond_10

    const/4 v3, 0x1

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-le v11, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-ge v11, v13, :cond_11

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

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_a

    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    :cond_a
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/4 v13, 0x2

    if-ne v2, v13, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v3, 0x0

    goto :goto_3

    :cond_11
    if-lez v12, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v13

    if-gt v12, v13, :cond_7

    if-nez v3, :cond_12

    if-eqz v4, :cond_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    if-nez v13, :cond_13

    new-instance v13, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    :cond_14
    packed-switch v2, :pswitch_data_0

    :cond_15
    :goto_4
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    return v13

    :pswitch_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-ltz v11, :cond_16

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_15

    if-gt v11, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v13, :cond_17

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    :cond_17
    if-ltz v11, :cond_18

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    if-gt v11, v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/SemHorizontalAbsListView;->mDragScrollWorkingZonePx:I

    sub-int v13, v8, v13

    if-lt v11, v13, :cond_15

    if-gt v11, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_15

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    if-eqz v13, :cond_19

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->resetDragableChildren(Landroid/view/DragEvent;)Z

    :cond_19
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragScrolled:Z

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    goto/16 :goto_4

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

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, 0x22

    const/16 v9, 0x22

    if-ne v8, v9, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget v5, p0, Landroid/view/View;->mScrollX:I

    iget v6, p0, Landroid/view/View;->mScrollY:I

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v8, v5

    iget v9, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v9, v6

    iget v10, p0, Landroid/view/View;->mRight:I

    add-int/2addr v10, v5

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mBottom:I

    add-int/2addr v11, v6

    iget v12, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v11, v12

    iget v12, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v11, v12

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v8, v8, -0x23

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_1
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v8, v8, 0x22

    iput v8, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    :cond_4
    iget-boolean v8, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    if-eqz v8, :cond_8

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    if-nez v8, :cond_5

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    if-nez v8, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-lt v8, v2, :cond_7

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    if-gt v8, v3, :cond_7

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v7

    :cond_6
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    add-int/2addr v8, v7

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :cond_7
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    if-ge v8, v9, :cond_9

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    :goto_0
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    if-le v8, v9, :cond_a

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    :goto_1
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    iget v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    iget v12, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void

    :cond_9
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto :goto_0

    :cond_a
    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v13

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

    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/widget/SemHorizontalAbsListView;->onHoverDrawableState(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->isTextViewHovered()Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v24, v0

    if-nez v24, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNewTextViewHoverState:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mOldTextViewHoverState:Z

    const/16 v24, 0x9

    move/from16 v0, v24

    if-ne v4, v0, :cond_d

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v21

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v24

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "pen_hovering"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    :goto_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string/jumbo v25, "car_mode_on"

    const/16 v26, 0x0

    const/16 v27, -0x3

    invoke-static/range {v24 .. v27}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/4 v14, 0x1

    :goto_3
    if-eqz v16, :cond_2

    if-eqz v14, :cond_3

    :cond_2
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

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

    :cond_4
    :goto_4
    if-nez v15, :cond_5

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    const/16 v24, 0x3

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v18, 0x0

    const/16 v17, 0x0

    if-eqz v18, :cond_c

    if-eqz v17, :cond_c

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

    :cond_7
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    goto/16 :goto_0

    :cond_8
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    goto/16 :goto_1

    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v14, 0x0

    goto :goto_3

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

    const/16 v24, 0x4e35

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto :goto_4

    :cond_c
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mNeedsHoverScroll:Z

    goto :goto_5

    :cond_d
    const/16 v24, 0x7

    move/from16 v0, v24

    if-ne v4, v0, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelectIconSet:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    :goto_6
    const/16 v24, 0x4e35

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

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

    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    :cond_11
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenSelectPointerSetted:Z

    goto/16 :goto_5

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    if-nez v24, :cond_13

    new-instance v24, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v24, v0

    if-gtz v24, :cond_15

    :cond_14
    const/high16 v24, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v24

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    const/high16 v24, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v24

    const/high16 v25, 0x3f000000    # 0.5f

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v24, v0

    if-eqz v24, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v9, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v24, v0

    if-eqz v24, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    if-lez v24, :cond_22

    const/4 v6, 0x1

    :goto_8
    if-nez v6, :cond_16

    if-lez v11, :cond_16

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

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

    :goto_a
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    add-int/lit8 v24, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

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

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

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

    :cond_1b
    :goto_d
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

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

    :cond_1d
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    :cond_1e
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v4, v0, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v24, v0

    if-eqz v24, :cond_1f

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v24, v0

    if-eqz v24, :cond_20

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_20
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

    :cond_21
    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInLeftHoverArea:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mExtraPaddingInRightHoverArea:I

    move/from16 v25, v0

    sub-int v10, v24, v25

    goto/16 :goto_7

    :cond_22
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_23
    const/4 v6, 0x1

    goto/16 :goto_9

    :cond_24
    const/4 v6, 0x0

    goto/16 :goto_9

    :cond_25
    const/4 v5, 0x0

    goto/16 :goto_a

    :cond_26
    const/4 v5, 0x0

    goto/16 :goto_b

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

    :goto_e
    if-nez v6, :cond_28

    if-lez v11, :cond_28

    add-int/lit8 v24, v11, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

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

    :cond_28
    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v24, v0

    if-lez v24, :cond_2c

    const/4 v5, 0x1

    :goto_10
    if-nez v5, :cond_17

    if-lez v11, :cond_17

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

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

    goto/16 :goto_b

    :cond_29
    const/4 v6, 0x0

    goto :goto_e

    :cond_2a
    const/4 v6, 0x1

    goto :goto_f

    :cond_2b
    const/4 v6, 0x0

    goto :goto_f

    :cond_2c
    const/4 v5, 0x0

    goto :goto_10

    :cond_2d
    const/4 v5, 0x0

    goto/16 :goto_b

    :cond_2e
    const/16 v19, 0x0

    goto/16 :goto_c

    :cond_2f
    if-lez v23, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_18

    if-nez v5, :cond_30

    if-eqz v6, :cond_18

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

    :cond_32
    :goto_12
    if-eqz v19, :cond_33

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    :cond_33
    if-eqz v19, :cond_18

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isLockScreenMode()Z

    move-result v24

    if-nez v24, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-nez v24, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    :cond_34
    packed-switch v4, :pswitch_data_0

    :cond_35
    :goto_13
    :pswitch_0
    const/16 v24, 0x1

    return v24

    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v24, v0

    if-nez v24, :cond_18

    goto :goto_11

    :cond_37
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    move/from16 v24, v0

    if-nez v24, :cond_18

    goto :goto_12

    :cond_38
    if-lez v23, :cond_1b

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1c

    goto/16 :goto_d

    :pswitch_1
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v0, v22

    if-lt v0, v9, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v24, v0

    add-int v24, v24, v9

    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/16 v24, 0x4e31

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v24

    if-eqz v24, :cond_35

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v24

    if-eqz v24, :cond_35

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/16 v24, 0x4e2d

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->isQCSupported()Z

    move-result v24

    if-eqz v24, :cond_35

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v24

    if-eqz v24, :cond_35

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v24, v0

    if-nez v24, :cond_3a

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/16 v24, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

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

    :cond_3b
    const/16 v24, 0x4e31

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    :cond_3c
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-nez v24, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

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

    :cond_3e
    const/16 v24, 0x4e2d

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    :cond_3f
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->sendEmptyMessage(I)Z

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

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->setupQuickController(I)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto/16 :goto_13

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_41

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    :cond_41
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    goto/16 :goto_13

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v24

    if-eqz v24, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/os/Handler;->removeMessages(I)V

    :cond_42
    const/16 v24, 0x4e21

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/InputDevice;->setPointerType(I)V

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsSendHoverScrollState:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_44

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v12

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

    :cond_43
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_44
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

    move/from16 v24, v0

    if-eqz v24, :cond_45

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStateForListener:I

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_45
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v24

    return v24

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
    .locals 31

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    if-nez v27, :cond_0

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    new-instance v27, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    :cond_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    invoke-static {}, Landroid/text/MultiSelection;->isNeedToScroll()Z

    move-result v20

    const/16 v27, 0xd3

    move/from16 v0, v27

    if-ne v6, v0, :cond_2

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "car_mode_on"

    const/16 v29, 0x0

    const/16 v30, -0x3

    invoke-static/range {v27 .. v30}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1

    :goto_0
    if-eqz v18, :cond_2

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    move/from16 v27, v0

    if-lez v27, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    move/from16 v27, v0

    if-gtz v27, :cond_5

    :cond_4
    const/high16 v27, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverLeftAreaWidth:I

    const/high16 v27, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    const/16 v29, 0x1

    move/from16 v0, v29

    move/from16 v1, v27

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v27

    const/high16 v28, 0x3f000000    # 0.5f

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverRightAreaWidth:I

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v12, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v13, v27, v28

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_9

    move/from16 v0, v25

    if-lt v0, v12, :cond_6

    move/from16 v0, v25

    if-le v0, v13, :cond_9

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

    const/16 v27, 0x1

    return v27

    :cond_7
    const/16 v18, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v13

    goto :goto_1

    :cond_9
    sparse-switch v6, :sswitch_data_0

    :cond_a
    :goto_2
    :sswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/AdapterView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    return v27

    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    const/16 v27, 0x1

    return v27

    :cond_c
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    goto :goto_2

    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    const/16 v27, 0x1

    return v27

    :sswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsNeedPenSelection:Z

    move/from16 v27, v0

    if-eqz v27, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_11

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    add-int/lit8 v17, v14, -0x1

    :goto_3
    if-ltz v17, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

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

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChildPosition:I

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

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

    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

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

    :cond_10
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    if-nez v27, :cond_12

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStart(II)V

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    :cond_12
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    if-gez v27, :cond_1b

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

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

    const/16 v17, 0x0

    :goto_a
    move/from16 v0, v17

    if-ge v0, v14, :cond_28

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_15

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

    :cond_15
    :goto_b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v9

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    sub-int v27, v27, v10

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v22

    add-int/lit8 v27, v14, -0x1

    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    add-int/lit8 v27, v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    move/from16 v23, v21

    move/from16 v24, v22

    :cond_17
    :goto_c
    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_3

    :cond_18
    move/from16 v0, v21

    move/from16 v1, v23

    if-gt v0, v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    move/from16 v23, v21

    :cond_19
    move/from16 v0, v22

    move/from16 v1, v24

    if-gt v0, v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v27

    add-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    move/from16 v24, v22

    goto :goto_c

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

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v0, v13, :cond_13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    move/from16 v27, v0

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    move/from16 v27, v0

    goto/16 :goto_7

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    move/from16 v27, v0

    goto/16 :goto_8

    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    move/from16 v27, v0

    goto/16 :goto_9

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

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

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    move/from16 v27, v0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

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

    :cond_28
    const/16 v20, 0x1

    :cond_29
    if-eqz v20, :cond_32

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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2a

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2b
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_2c
    :goto_f
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    goto/16 :goto_2

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

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-nez v27, :cond_2e

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-nez v27, :cond_2b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_e

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_30
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    :cond_31
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    goto/16 :goto_e

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPreviousTextViewScroll:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_f

    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    :cond_34
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsHoverOverscrolled:Z

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    const/16 v27, 0x1

    return v27

    :cond_35
    :sswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsTextSelectionStarted:Z

    move/from16 v27, v0

    if-nez v27, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    move/from16 v27, v0

    if-eqz v27, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    invoke-interface {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    :cond_36
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverRecognitionStartTime:J

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollStartTime:J

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    move/from16 v27, v0

    if-eqz v27, :cond_3d

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

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_38
    :goto_10
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_39

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_38

    const/16 v19, 0x1

    goto :goto_10

    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move-object/from16 v27, v0

    if-nez v27, :cond_3a

    if-eqz v19, :cond_3a

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

    :cond_3a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3c

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

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v27, v0

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-interface/range {v27 .. v28}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v27

    if-eqz v27, :cond_3b

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

    :cond_3c
    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-super {v0, v1, v2}, Landroid/widget/AdapterView;->semNotifyMultiSelectedStop(II)V

    :cond_3d
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsPenPressed:Z

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsfirstMoveEvent:Z

    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedViewPosition:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartX:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragStartY:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndX:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragEndY:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockLeft:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockTop:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockRight:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragBlockBottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemArray:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDragSelectedItemSize:I

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemTrackedChild:Landroid/view/View;

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromTrackedChildLeft:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/SemHorizontalAbsListView;->mIsCloseChildSetted:Z

    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mOldHoverScrollDirection:I

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByLeft:Landroid/view/View;

    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByLeft:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildLeft:I

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildByRight:Landroid/view/View;

    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemCloseChildPositionByRight:I

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mSemDistanceFromCloseChildRight:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_3e

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v27

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mHoverHandler:Landroid/widget/SemHorizontalAbsListView$HoverScrollHandler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_2

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

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->draw(Landroid/graphics/Canvas;)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_3

    iget v3, p0, Landroid/view/View;->mScrollX:I

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v5, v1, v6}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0, v8, v8, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    :cond_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v1, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    invoke-virtual {v6}, Landroid/widget/EdgeEffect;->getMaxHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p0, v5, v8, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v5, :cond_4

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->drawQuickController(Landroid/graphics/Canvas;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/AdapterView;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method abstract fillGapRTL(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    if-eq v1, v2, :cond_1

    :goto_0
    return v1

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

    invoke-virtual {p0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public finishMultiChoiceMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public fling(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/SemHorizontalAbsListView$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/SemHorizontalAbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

.method protected getBottomPaddingOffset()I
    .locals 2

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

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getCheckedItemCount()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    return v0
.end method

.method public getCheckedItemIds()[J
    .locals 6

    const/4 v5, 0x0

    iget v4, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v4, :cond_1

    :cond_0
    new-array v4, v5, [J

    return-object v4

    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

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

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

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

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChoiceMode()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

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

.method public getHorizontalScrollbarHeight()I
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AdapterView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getLeftFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_3

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    return v4

    :cond_2
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-gtz v4, :cond_1

    :cond_3
    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v3, v4, :cond_4

    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    :cond_4
    return v1

    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    goto :goto_0
.end method

.method protected getLeftPaddingOffset()I
    .locals 2

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

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-super {p0}, Landroid/widget/AdapterView;->getRightFadingEdgeStrength()F

    move-result v1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_2

    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v5, :cond_3

    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    return v5

    :cond_2
    iget v5, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_1

    :cond_3
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v5, :cond_5

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le v3, v5, :cond_4

    sub-int v5, v3, v4

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v1, v5, v2

    :cond_4
    return v1

    :cond_5
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v3

    goto :goto_0
.end method

.method protected getRightPaddingOffset()I
    .locals 2

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

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getSelectionModeForAccessibility()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->getChoiceMode()I

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

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    return v0
.end method

.method public getTextFilter()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method protected getTopPaddingOffset()I
    .locals 2

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

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return v0
.end method

.method public getTranscriptMode()I
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return v0
.end method

.method getWidthForPosition(I)I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int v2, p1, v1

    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    return v5

    :cond_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v5}, Landroid/widget/SemHorizontalAbsListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v3

    iget v5, p0, Landroid/widget/SemHorizontalAbsListView;->mHeightMeasureSpec:I

    invoke-virtual {v3, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    return v4
.end method

.method protected handleDataChanged()V
    .locals 15

    const/4 v14, -0x1

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_0

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iget v11, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    if-eq v10, v11, :cond_0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v10, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mOldAdapterItemCount:I

    :cond_0
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_1

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->confirmCheckedPositionsById()V

    :cond_1
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clearTransientStateViews()V

    if-lez v1, :cond_f

    iget-boolean v10, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v10, :cond_8

    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v13, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_2
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    if-ne v10, v9, :cond_7

    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    if-eqz v10, :cond_3

    iput-boolean v12, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v5, v10, v11

    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v10, :cond_4

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    :goto_1
    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v10, v0

    if-lt v10, v3, :cond_6

    if-gt v4, v5, :cond_6

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    return-void

    :cond_4
    add-int/lit8 v10, v0, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_7
    iget v10, p0, Landroid/widget/AdapterView;->mSyncMode:I

    packed-switch v10, :pswitch_data_0

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    if-lt v6, v1, :cond_9

    add-int/lit8 v6, v1, -0x1

    :cond_9
    if-gez v6, :cond_a

    const/4 v6, 0x0

    :cond_a
    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_d

    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    return-void

    :cond_b
    invoke-virtual {p0}, Landroid/widget/AdapterView;->findSyncPosition()I

    move-result v6

    if-ltz v6, :cond_8

    invoke-virtual {p0, v6, v9}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ne v7, v6, :cond_8

    iput v6, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget-wide v8, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    :goto_2
    invoke-virtual {p0, v6}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_c
    const/4 v8, 0x2

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    goto :goto_2

    :pswitch_1
    const/4 v8, 0x5

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput v8, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    return-void

    :cond_d
    invoke-virtual {p0, v6, v12}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v7

    if-ltz v7, :cond_f

    invoke-virtual {p0, v7}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    return-void

    :cond_e
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    if-ltz v10, :cond_f

    return-void

    :cond_f
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eqz v10, :cond_10

    :goto_3
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iput v14, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    iput v14, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    const-wide/high16 v8, -0x8000000000000000L

    iput-wide v8, p0, Landroid/widget/AdapterView;->mNextSelectedRowId:J

    iput-boolean v12, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v13, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iput v14, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    invoke-virtual {p0}, Landroid/widget/AdapterView;->checkSelectionChanged()V

    return-void

    :cond_10
    move v8, v9

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hasTextFilter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method hideSelector()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mNextSelectedPosition:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    :cond_2
    return-void
.end method

.method public invalidateViews()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onScroll(III)V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget v3, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScroll(Landroid/widget/SemHorizontalAbsListView;III)V

    :cond_1
    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/view/View;->onScrollChanged(IIII)V

    return-void
.end method

.method public isFastScrollAlwaysVisible()Z
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    :cond_0
    return v0

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

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInFilterMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public isMultiFocusEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return v0
.end method

.method public isMultiWindows()Z
    .locals 2

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

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

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

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    return v0
.end method

.method public isTextFilterEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method keyPressed()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->touchModeDrawsInPressedState()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    return-void

    :cond_3
    iget v5, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_4
    invoke-virtual {v4, v8}, Landroid/view/View;->setPressed(Z)V

    :cond_5
    invoke-virtual {p0, v8}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v5, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_6

    if-eqz v1, :cond_7

    nop

    nop

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_6
    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v5, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-nez v5, :cond_8

    new-instance v5, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-direct {v5, p0, v7}, Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;)V

    iput-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    :goto_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {v5}, Landroid/widget/SemHorizontalAbsListView$WindowRunnnable;->rememberWindowAttachCount()V

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    :cond_8
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method protected layoutChildren()V
    .locals 0

    return-void
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 10

    const-string/jumbo v7, "obtainView"

    const-wide/16 v8, 0x8

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getTransientStateView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    iget v7, v2, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v4, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapterHasStableIds:Z

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    :goto_0
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->itemId:J

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eq v5, v4, :cond_1

    invoke-direct {p0, v5, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    return-object v4

    :cond_2
    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0, v6}, Landroid/widget/SemHorizontalAbsListView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_3
    move-object v1, v6

    check-cast v1, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    goto :goto_0

    :cond_4
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v7, 0x0

    return-object v7

    :cond_5
    if-eqz v3, :cond_7

    if-eq v0, v3, :cond_c

    invoke-virtual {v3}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->clearAccessibilityFocus()V

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_6
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v7, v3, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_7
    :goto_1
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v7}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_9
    invoke-direct {p0, v0, p1}, Landroid/widget/SemHorizontalAbsListView;->setItemViewLayoutParams(Landroid/view/View;I)V

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    if-nez v7, :cond_a

    new-instance v7, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v7

    if-nez v7, :cond_b

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mAccessibilityDelegate:Landroid/widget/SemHorizontalAbsListView$ListItemAccessibilityDelegate;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_b
    const-wide/16 v8, 0x8

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    :cond_c
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-boolean v7, p2, v8

    invoke-virtual {v0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/AdapterView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    if-eqz v1, :cond_4

    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v1, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    iput v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public onCancelPendingInputEvents()V
    .locals 1

    invoke-super {p0}, Landroid/widget/AdapterView;->onCancelPendingInputEvents()V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForKeyLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForKeyLongPress;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6

    const/4 v5, 0x0

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

    move-result-object v4

    return-object v4

    :cond_0
    sget-object v4, Landroid/widget/SemHorizontalAbsListView;->ENABLED_STATE_SET:[I

    aget v1, v4, v5

    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Landroid/widget/AdapterView;->onCreateDrawableState(I)[I

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

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/inputmethod/EditorInfo;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    :cond_0
    const/16 v0, 0xb1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/4 v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPublicInputConnection:Landroid/widget/SemHorizontalAbsListView$InputConnectionWrapper;

    return-object v0

    :cond_1
    return-object v1
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/AdapterView;->onDetachedFromWindow()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mGlobalLayoutListenerAddedFilter:Z

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v1}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_6
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPerformClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchModeReset:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    if-eq v1, v5, :cond_9

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    :cond_9
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mHapticPreDrawListener:Landroid/view/HapticPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_a
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v1, :cond_b

    iput v4, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    :cond_b
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

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
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    return-void

    :sswitch_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0

    :sswitch_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

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

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iget v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    iput v0, p0, Landroid/widget/AdapterView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/AdapterView;->mItemCount:I

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_0
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHorizontalScrollFactor()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v0, v2

    invoke-virtual {p0, v0, v0}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onGlobalLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_5

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x10

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void

    :cond_5
    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v7, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    return v9

    :cond_1
    return v8

    :cond_2
    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    return v8

    :pswitch_1
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v7, 0x6

    if-eq v3, v7, :cond_4

    const/4 v7, 0x5

    if-ne v3, v7, :cond_5

    :cond_4
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    return v9

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->findMotionRow(I)I

    move-result v1

    if-eq v3, v12, :cond_6

    if-ltz v1, :cond_6

    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v7, v1, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    :cond_6
    const/high16 v7, -0x80000000

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initOrResetVelocityTracker()V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/view/View;->startNestedScroll(I)Z

    if-ne v3, v12, :cond_3

    return v9

    :pswitch_2
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v10, :cond_7

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    :cond_7
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v5, v7, v11}, Landroid/widget/SemHorizontalAbsListView;->startScrollIfNeeded(IILandroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v9

    :pswitch_4
    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->recycleVelocityTracker()V

    invoke-virtual {p0, v8}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto/16 :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method onJumpScrollToTopFinished()V
    .locals 2

    const-string/jumbo v0, "SemHorizontalAbsListView"

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
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :sswitch_1
    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_0

    :sswitch_2
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

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

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return v7

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->performItemClick(Landroid/view/View;IJ)Z

    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/View;->setPressed(Z)V

    return v7

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :sswitch_0
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    if-nez v3, :cond_6

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v3, :cond_3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-nez v3, :cond_7

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCurrentFocusPosition:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    :cond_5
    :goto_2
    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    goto :goto_0

    :cond_6
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    iget v3, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, p0, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->semNotifyKeyPressState(Landroid/view/View;IJ)Z

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iget v4, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    invoke-direct {p0, v3, v4}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    goto :goto_2

    :sswitch_1
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_0

    :sswitch_2
    iput-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    iput v6, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto :goto_0

    :sswitch_3
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

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
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v2}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->markChildrenDirty()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/AdapterView;->mInLayout:Z

    sub-int v2, p4, p2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mOverscrollMax:I

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget v4, p0, Landroid/widget/AdapterView;->mItemCount:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onItemCountChanged(II)V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->useDefaultSelector()V

    :cond_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->top:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->right:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    iget v8, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v7, v8

    iput v7, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    if-ne v7, v5, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v4, v7, v8

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_2

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    :goto_1
    iget v7, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v7, v0

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mLastHandledItemCount:I

    if-lt v7, v8, :cond_5

    if-gt v2, v4, :cond_4

    :goto_2
    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mForceTranscriptScroll:Z

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    move v5, v6

    goto :goto_2

    :cond_5
    move v5, v6

    goto :goto_2
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez p4, :cond_2

    if-lez v0, :cond_2

    float-to-int v1, p2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->canScrollList(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMinimumVelocity:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    float-to-int v2, p2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->start(I)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {p0, p2, p3, p4}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 9

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    :goto_0
    if-eqz v7, :cond_0

    neg-int v0, p4

    neg-int v4, p4

    invoke-virtual {p0, v0, v4}, Landroid/widget/SemHorizontalAbsListView;->trackMotionScroll(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v3, p4

    const/4 v1, 0x0

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v1, v0, v8

    sub-int v3, p4, v1

    :cond_1
    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    :cond_2
    return-void

    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AdapterView;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->startNestedScroll(I)Z

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 3

    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->onScrollChanged(IIII)V

    iput p1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentIfNeeded()V

    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    :cond_0
    return-void
.end method

.method public onRemoteAdapterConnected()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->notifyDataSetChanged()V

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter;->semSuperNotifyDataSetChanged()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public onRemoteAdapterDisconnected()V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    instance-of v2, p1, Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v2, :cond_4

    move-object v0, p1

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iput-boolean v4, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    int-to-long v2, v2

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncHeight:J

    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_6

    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/AdapterView;->mSyncMode:I

    :cond_0
    :goto_1
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->setFilterText(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iget-boolean v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_4
    instance-of v2, p1, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    move-object v1, p1

    nop

    nop

    const-class v2, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo v2, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/SemHorizontalAbsListView$SavedState;

    goto :goto_0

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

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_6
    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v5}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iput-boolean v4, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    iput-wide v2, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v2, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget v2, v0, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v2, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    iput v4, p0, Landroid/widget/AdapterView;->mSyncMode:I

    goto/16 :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {p0}, Landroid/view/View;->semGetHorizontalScrollbarPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollbarPosition(I)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 18

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    invoke-super/range {p0 .. p0}, Landroid/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v11

    new-instance v10, Landroid/widget/SemHorizontalAbsListView$SavedState;

    invoke-direct {v10, v11}, Landroid/widget/SemHorizontalAbsListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-wide v0, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-boolean v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    iput-boolean v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->inActionMode:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iget-object v15, v15, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    return-object v10

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lez v15, :cond_3

    const/4 v5, 0x1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v8

    iput-wide v8, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->selectedId:J

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->width:I

    const-wide/16 v16, 0x0

    cmp-long v15, v8, v16

    if-ltz v15, :cond_4

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    :goto_1
    const/4 v15, 0x0

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->filter:Ljava/lang/String;

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

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v15

    iput-object v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkState:Landroid/util/SparseBooleanArray;

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v15, :cond_9

    new-instance v7, Landroid/util/LongSparseArray;

    invoke-direct {v7}, Landroid/util/LongSparseArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v15}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v2, :cond_8

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

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v15, :cond_6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    if-lt v4, v15, :cond_5

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v4, v15, -0x1

    :cond_5
    iput v4, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    goto/16 :goto_1

    :cond_6
    const/4 v15, 0x0

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->viewLeft:I

    const-wide/16 v16, -0x1

    move-wide/from16 v0, v16

    iput-wide v0, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->firstId:J

    const/4 v15, 0x0

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->position:I

    goto/16 :goto_1

    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_8
    iput-object v7, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkIdState:Landroid/util/LongSparseArray;

    :cond_9
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    iput v15, v10, Landroid/widget/SemHorizontalAbsListView$SavedState;->checkedItemCount:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v15}, Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V

    :cond_a
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v15, "android.widget.SemHorizontalAbsListView.SavedState"

    invoke-virtual {v14, v15, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v14
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onSizeChanged(IIII)V

    :cond_1
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isTextFilterEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    if-lez v1, :cond_2

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v3, v3, Landroid/widget/Filterable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

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

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    iput-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "You cannot call onTextChanged with a non filterable adapter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v9

    :cond_0
    return v9

    :cond_1
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v10}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_2
    iget-boolean v10, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDetaching:Z

    if-nez v10, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/view/View;->startNestedScroll(I)Z

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v10, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v9

    :cond_3
    return v12

    :cond_4
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->initVelocityTrackerIfNotExists()V

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_5

    iput v12, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    :cond_5
    iget v10, p0, Landroid/widget/SemHorizontalAbsListView;->mNestedXOffset:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    packed-switch v0, :pswitch_data_0

    :cond_6
    :goto_0
    :pswitch_0
    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_7

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    return v9

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, v6}, Landroid/widget/SemHorizontalAbsListView;->onTouchMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->onTouchCancel()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    iget v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iget v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    invoke-virtual {p0, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_8

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_6

    iget-object v10, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v10, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_0

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

    iput v12, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionCorrection:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mActivePointerId:I

    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionX:I

    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionY:I

    invoke-virtual {p0, v7, v8}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v5

    if-ltz v5, :cond_9

    iget v10, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v10, v5, v10

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mMotionPosition:I

    :cond_9
    iput v7, p0, Landroid/widget/SemHorizontalAbsListView;->mLastX:I

    goto/16 :goto_0

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

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    :cond_4
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_5
    iget v1, p0, Landroid/view/View;->mScrollX:I

    if-eqz v1, :cond_1

    iput v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->onVisibilityChanged(Landroid/view/View;I)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverPosition:I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHasWindowFocusForMotion:Z

    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_6

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {p0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_0
    iget v1, p0, Landroid/view/View;->mScrollY:I

    if-eqz v1, :cond_1

    iput v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/view/View;->invalidateParentCaches()V

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->finishGlows()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->dismissPopup()V

    if-ne v0, v4, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_2
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eqz v1, :cond_3

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    :cond_3
    :goto_1
    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-nez p1, :cond_4

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->releaseAllBoosters()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopupHidden:Z

    if-eqz v1, :cond_8

    :cond_7
    :goto_2
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    if-eq v0, v1, :cond_3

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastTouchMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-ne v0, v4, :cond_9

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->showPopup()V

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    const/16 v5, 0xc8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/AdapterView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    sparse-switch p1, :sswitch_data_0

    return v3

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

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    invoke-virtual {p0, v0, v5}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    return v4

    :cond_1
    return v3

    :sswitch_1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v1, v2

    neg-int v1, v0

    invoke-virtual {p0, v1, v5}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(II)V

    return v4

    :cond_2
    return v3

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 11

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v3, :cond_f

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_9

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_9

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v6, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_1
    :goto_1
    if-eqz v6, :cond_8

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :goto_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    const/4 v7, 0x0

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->updateOnScreenCheckedViews()V

    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v8, v1

    :cond_5
    return v8

    :cond_6
    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_1

    :cond_8
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_9
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    move v6, v1

    :goto_5
    if-eqz v6, :cond_d

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_a
    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :cond_b
    :goto_6
    const/4 v0, 0x1

    goto :goto_3

    :cond_c
    move v6, v2

    goto :goto_5

    :cond_d
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_e
    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_6

    :cond_f
    if-eqz p1, :cond_4

    goto :goto_4
.end method

.method performLongPress(Landroid/view/View;IJ)Z
    .locals 9

    const v7, 0xc369

    const/4 v2, 0x3

    const/4 v1, 0x1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    :cond_0
    invoke-virtual {p0, p2, v1}, Landroid/widget/SemHorizontalAbsListView;->setItemChecked(IZ)V

    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    return v1

    :cond_2
    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_3
    if-nez v6, :cond_4

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_4
    if-eqz v6, :cond_5

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->semGetEnableVibrationAtLongPress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_5
    :goto_0
    return v6

    :cond_6
    const-string/jumbo v0, "SemHorizontalAbsListView"

    const-string/jumbo v1, " does not need vibration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 7

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchFrame:Landroid/graphics/Rect;

    :cond_0
    instance-of v6, p0, Landroid/widget/SemHorizontalListView;

    if-eqz v6, :cond_1

    move-object v6, p0

    nop

    nop

    iget v2, v6, Landroid/widget/SemHorizontalListView;->mDividerHeight:I

    :cond_1
    if-lez v2, :cond_3

    move-object v6, p0

    check-cast v6, Landroid/widget/SemHorizontalListView;

    iget-object v6, v6, Landroid/widget/SemHorizontalListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    :goto_1
    if-ltz v5, :cond_5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    if-eqz v3, :cond_2

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    :cond_2
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v6, v5

    return v6

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_5
    const/4 v6, -0x1

    return v6
.end method

.method public pointToRowId(II)J
    .locals 4

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

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

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    return-void
.end method

.method positionSelectorLikeFocus(ILandroid/view/View;)V
    .locals 7

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    if-eq v0, p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;ZFF)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto :goto_0
.end method

.method positionSelectorLikeTouch(ILandroid/view/View;FF)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->positionSelectorLikeFocus(ILandroid/view/View;)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

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

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v5}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-get0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;

    if-eqz v4, :cond_0

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    iget v6, v4, Landroid/widget/SemHorizontalAbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v7}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    if-eqz v3, :cond_0

    invoke-interface {v3, v0}, Landroid/widget/SemHorizontalAbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Landroid/widget/AdapterView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method rememberSyncState()V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->rememberSyncStateHorizontal()V

    return-void
.end method

.method removePendingCallbacks()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForTap:Landroid/widget/SemHorizontalAbsListView$CheckForTap;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingCheckForLongPress:Landroid/widget/SemHorizontalAbsListView$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    return-void
.end method

.method public reportScrollStateChange(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_1
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v0, v2, :cond_2

    iget-boolean v0, p0, Landroid/view/View;->mSemScrollingByScrollbar:Z

    if-eqz v0, :cond_4

    :cond_2
    :goto_0
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverAreaEnter:Z

    if-eqz v0, :cond_6

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-eqz p1, :cond_5

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-nez v0, :cond_5

    invoke-static {v3}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    :cond_5
    if-nez p1, :cond_2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLastScrollState:I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    if-eqz v0, :cond_2

    invoke-static {v1}, Lcom/samsung/android/os/SemPerfManager;->onScrollEvent(Z)V

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDVFSLockAcquired:Z

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mQCstate:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/SemHorizontalAbsListView;I)V

    goto :goto_1
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetList()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method resetList()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    iput v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v0, :cond_0

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mLastPosition:I

    :cond_0
    iput-boolean v3, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    iput-boolean v3, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPendingSync:Landroid/widget/SemHorizontalAbsListView$SavedState;

    iput v2, p0, Landroid/widget/AdapterView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/AdapterView;->mOldSelectedRowId:J

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectedLeft:I

    iput v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public resetPressItemListArray()V
    .locals 2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method resurrectSelection()Z
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-gtz v2, :cond_0

    const/16 v17, 0x0

    return v17

    :cond_0
    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

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

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    const/4 v10, 0x1

    if-lt v15, v5, :cond_4

    add-int v17, v5, v2

    move/from16 v0, v17

    if-ge v15, v0, :cond_4

    move v13, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v17, v15, v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v14

    if-ge v12, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v12, v3, v17

    :cond_1
    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_2
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    invoke-direct/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v10}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v13

    if-lt v13, v5, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v17

    move/from16 v0, v17

    if-gt v13, v0, :cond_d

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/SemHorizontalAbsListView;->setSelectionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    if-ltz v13, :cond_e

    const/16 v17, 0x1

    :goto_3
    return v17

    :cond_3
    if-le v14, v4, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v4, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v18

    sub-int v12, v17, v18

    goto :goto_0

    :cond_4
    if-ge v15, v5, :cond_8

    move v13, v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v2, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    if-nez v6, :cond_6

    move v12, v8

    move v14, v9

    if-gtz v5, :cond_5

    if-ge v8, v3, :cond_6

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    add-int v3, v3, v17

    :cond_6
    if-lt v8, v3, :cond_7

    add-int v13, v5, v6

    move v12, v8

    move v14, v9

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/AdapterView;->mItemCount:I

    const/4 v10, 0x0

    add-int v17, v5, v2

    add-int/lit8 v13, v17, -0x1

    add-int/lit8 v6, v2, -0x1

    :goto_5
    if-ltz v6, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v9

    add-int/lit8 v17, v2, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_a

    move v12, v8

    move v14, v9

    add-int v17, v5, v2

    move/from16 v0, v17

    if-lt v0, v7, :cond_9

    if-le v9, v4, :cond_a

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHorizontalFadingEdgeLength()I

    move-result v17

    sub-int v4, v4, v17

    :cond_a
    if-gt v9, v4, :cond_b

    add-int v13, v5, v6

    move v12, v8

    move v14, v9

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AdapterView;->mSpecificTop:I

    goto/16 :goto_1

    :cond_d
    const/4 v13, -0x1

    goto/16 :goto_2

    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_3
.end method

.method resurrectSelectionIfNeeded()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resurrectSelection()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method protected semGetItemCount()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

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

.method protected semIsHorizontalScrollBarHidden()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->isFastScrollEnabled()Z

    move-result v0

    return v0
.end method

.method protected semIsShowingScrollbar()Z
    .locals 2

    const/4 v0, 0x0

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

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    if-eqz v1, :cond_0

    iget-boolean v6, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Landroid/widget/AdapterView;->semNotifyKeyPress(Landroid/view/View;IJZ)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public semSetClickableInMultiSelectMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemIsOnClickEnabled:Z

    return-void
.end method

.method public semSetCustomMultiChoiceMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemCustomMultiChoiceMode:Z

    return-void
.end method

.method public semSetDragBlockEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    return-void
.end method

.method public semSetEnableVibrationAtLongPress(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mEnableVibrationAtLongPress:Z

    return-void
.end method

.method public semSetHoverScrollEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public semSetMultiFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsMultiFocusEnabled:Z

    return-void
.end method

.method public semSetSelection(I)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int p1, v0, v1

    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method public semSmoothScrollBy(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v1, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    new-instance v1, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-direct {v1, p0, v2}, Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;-><init>(Landroid/widget/SemHorizontalAbsListView;Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDensityScale:F

    const/high16 v2, 0x43160000    # 150.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le v1, v2, :cond_3

    if-lez p1, :cond_2

    :goto_0
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    if-le p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v1, v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    sget v2, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    neg-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    sget v1, Landroid/widget/SemHorizontalAbsListView;->mSemScrollAmount:I

    add-int/2addr p1, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemScrollRemains:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSemSmoothScrollByMove:Landroid/widget/SemHorizontalAbsListView$SemSmoothScrollByMove;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method sendToTextFilter(IILandroid/view/KeyEvent;)Z
    .locals 8

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->acceptFilter()Z

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

    invoke-direct {p0, v5}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

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
    iget-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

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

    if-nez v5, :cond_4

    const/4 v2, 0x1

    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :sswitch_2
    iget-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    goto :goto_0

    :pswitch_0
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    const/16 v5, 0x3b

    if-eq p1, v5, :cond_6

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    goto :goto_1

    :cond_7
    const/16 v5, 0x71

    if-eq p1, v5, :cond_8

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    :cond_8
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, v1}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    const/16 v5, 0x3b

    if-eq p1, v5, :cond_9

    const/16 v5, 0x3c

    if-ne p1, v5, :cond_a

    :cond_9
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsShiftkeyPressed:Z

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mOldKeyCode:I

    const/4 v5, 0x0

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mCurrentKeyCode:I

    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mFirstPressedPoint:I

    const/4 v5, -0x1

    iput v5, p0, Landroid/widget/SemHorizontalAbsListView;->mSecondPressedPoint:I

    goto/16 :goto_1

    :cond_a
    const/16 v5, 0x71

    if-eq p1, v5, :cond_b

    const/16 v5, 0x72

    if-ne p1, v5, :cond_2

    :cond_b
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/SemHorizontalAbsListView;->mIsCtrlkeyPressed:Z

    goto/16 :goto_1

    :pswitch_2
    iget-object v5, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v5, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

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

.method public setChoiceMode(I)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    :cond_1
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    :cond_2
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    invoke-virtual {p0, v3}, Landroid/view/View;->setLongClickable(Z)V

    :cond_3
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v4, :cond_6

    iput-boolean v3, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0

    :cond_6
    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v0, v3, :cond_4

    :cond_7
    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsDragBlockEnabled:Z

    goto :goto_0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mDrawSelectorOnTop:Z

    return-void
.end method

.method public setEnableHoverDrawable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mHoveringEnabled:Z

    return-void
.end method

.method public setEnablePaddingInHoverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mIsEnabledPaddingInHoverScroll:Z

    return-void
.end method

.method public setFastScrollAlwaysVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollAlwaysVisible:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerAlwaysVisibleUiThread(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollEnabled(Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$3;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$3;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public setFastScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollEnabled:Z

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->isOwnerThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->setFastScrollerEnabledUiThread(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/widget/SemHorizontalAbsListView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/SemHorizontalAbsListView$2;-><init>(Landroid/widget/SemHorizontalAbsListView;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setFastScrollStyle(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScrollStyle:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setStyle(I)V

    goto :goto_0
.end method

.method public setFilterText(Ljava/lang/String;)V
    .locals 3

    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SemHorizontalAbsListView;->createTextFilter(Z)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilter:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v1, Landroid/widget/Filterable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mPopup:Landroid/widget/PopupWindow;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Landroid/widget/Filterable;

    invoke-interface {v1}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mFiltered:Z

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mDataSetObserver:Landroid/widget/SemHorizontalAbsListView$AdapterDataSetObserver;

    invoke-virtual {v1}, Landroid/widget/AdapterView$AdapterDataSetObserver;->clearSavedState()V

    goto :goto_0
.end method

.method public setForcedClick(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AdapterView;->setFrame(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

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

    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->positionPopup()V

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->-get0(Landroid/widget/SemHorizontalAbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/OverScroller;->setFriction(F)V

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 9

    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->hasWrappedCallback()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v1}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_1
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    if-ne v1, v6, :cond_a

    :cond_2
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_8

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_3
    :goto_0
    if-eq v0, p2, :cond_4

    if-eqz p2, :cond_9

    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    move v3, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_5
    :goto_2
    iget-boolean v1, p0, Landroid/widget/AdapterView;->mInLayout:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v1, :cond_11

    :cond_6
    :goto_3
    return-void

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "SemHorizontalAbsListView: attempted to start selection mode for CHOICE_MODE_MULTIPLE_MODAL but no choice mode callback was supplied. Call setMultiChoiceModeListener to set a callback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->delete(J)V

    goto :goto_0

    :cond_9
    iget v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_1

    :cond_a
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    :goto_4
    if-nez p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/widget/SemHorizontalAbsListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    if-eqz v7, :cond_c

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    :cond_c
    if-eqz p2, :cond_f

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v7, :cond_d

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedIdStates:Landroid/util/LongSparseArray;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_d
    iput v8, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_e
    const/4 v7, 0x0

    goto :goto_4

    :cond_f
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_10
    iput v3, p0, Landroid/widget/SemHorizontalAbsListView;->mCheckedItemCount:I

    goto :goto_2

    :cond_11
    iget-boolean v1, p0, Landroid/widget/SemHorizontalAbsListView;->mForcedClick:Z

    if-nez v1, :cond_12

    iput-boolean v8, p0, Landroid/widget/AdapterView;->mDataChanged:Z

    :cond_12
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_3
.end method

.method public setMultiChoiceModeListener(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V

    return-void
.end method

.method public setMultiFocusListItem(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mSemPressItemListArray:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->resetPressItemListArray()V

    invoke-direct {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView;->addToPressItemListArray(II)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/SemHorizontalAbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mOnScrollListener:Landroid/widget/SemHorizontalAbsListView$OnScrollListener;

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    return-void
.end method

.method public setOverScrollEffectPadding(II)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingTop:I

    iput p2, p0, Landroid/widget/SemHorizontalAbsListView;->mGlowPaddingBottom:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    new-instance v1, Landroid/widget/EdgeEffect;

    invoke-direct {v1, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setOverScrollMode(I)V

    return-void

    :cond_1
    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;

    goto :goto_0
.end method

.method public setRecyclerListener(Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    invoke-static {v0, p1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->-set0(Landroid/widget/SemHorizontalAbsListView$RecycleBin;Landroid/widget/SemHorizontalAbsListView$RecyclerListener;)Landroid/widget/SemHorizontalAbsListView$RecyclerListener;

    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 4

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent$FilterComparison;

    invoke-direct {v0, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->getRemoteViewsServiceIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent$FilterComparison;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mDeferNotifyDataSetChanged:Z

    new-instance v2, Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1, p0}, Landroid/widget/RemoteViewsAdapter;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;)V

    iput-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    :cond_1
    return-void
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    :cond_0
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->setScrollBarStyle(I)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mFastScroll:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-virtual {v0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->setScrollBarStyle(I)V

    :cond_0
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollingCacheEnabled:Z

    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/SemHorizontalAbsListView;->clearScrollingCache()V

    goto :goto_0
.end method

.method public setSelectionFromStart(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result p1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->setNextSelectedPositionInt(I)V

    :cond_1
    :goto_0
    if-ltz p1, :cond_4

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mLayoutMode:I

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    iput v0, p0, Landroid/widget/AdapterView;->mSpecificTop:I

    :goto_1
    iget-boolean v0, p0, Landroid/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_2

    iput p1, p0, Landroid/widget/AdapterView;->mSyncPosition:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/AdapterView;->mSyncRowId:J

    :cond_2
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void

    :cond_5
    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mResurrectToPosition:I

    goto :goto_0

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

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionLeftPadding:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionTopPadding:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionRightPadding:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->updateSelectorState()V

    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mSmoothScrollbarEnabled:Z

    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mStackFromBottom:Z

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setTextFilterEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTextFilterEnabled:Z

    return-void
.end method

.method public setTiltMotionEvent(Z)V
    .locals 0

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchSlop:I

    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mTranscriptMode:I

    return-void
.end method

.method public setVelocityScale(F)V
    .locals 0

    iput p1, p0, Landroid/widget/SemHorizontalAbsListView;->mVelocityScale:F

    return-void
.end method

.method setVisibleRangeHint(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mRemoteAdapter:Landroid/widget/RemoteViewsAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->setVisibleRangeHint(II)V

    :cond_0
    return-void
.end method

.method shouldShowSelector()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "finger_air_view_information_preview"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    const/4 v1, 0x1

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

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method

.method shouldShowSelectorDefault()Z
    .locals 1

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

    const/4 v6, 0x0

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {p0, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->pointToPosition(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v4, v1, v4

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p0}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v4

    return v4

    :cond_0
    iput-object v6, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    :cond_1
    invoke-super {p0}, Landroid/widget/AdapterView;->showContextMenu()Z

    move-result v4

    return v4
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_2

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AdapterView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    iget v0, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Landroid/widget/SemHorizontalAbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-super {p0, p1}, Landroid/widget/AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    :cond_1
    return v6

    :cond_2
    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollBy(IIZ)V

    return-void
.end method

.method smoothScrollBy(IIZ)V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    if-nez v7, :cond_0

    new-instance v7, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-direct {v7, p0}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    :cond_0
    iget v1, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int v2, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v5, v7, v8

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_3

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_0
    if-eqz p1, :cond_1

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-nez v7, :cond_4

    :cond_1
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->endFling()V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v7}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->stop()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_1

    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_5

    if-nez v1, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_5

    if-ltz p1, :cond_1

    :cond_5
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-nez v7, :cond_6

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_6

    if-gtz p1, :cond_1

    :cond_6
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_7

    if-nez v1, :cond_7

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    if-ne v7, v5, :cond_7

    if-gtz p1, :cond_1

    :cond_7
    iget-boolean v7, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v7, :cond_8

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ne v2, v7, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v7, v3, :cond_8

    if-ltz p1, :cond_1

    :cond_8
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->reportScrollStateChange(I)V

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mFlingRunnable:Landroid/widget/SemHorizontalAbsListView$FlingRunnable;

    invoke-virtual {v7, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$FlingRunnable;->startScroll(IIZ)V

    goto :goto_1
.end method

.method smoothScrollByOffset(I)V
    .locals 11

    const/high16 v10, 0x3f400000    # 0.75f

    const/4 v9, 0x0

    const/4 v2, -0x1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    :cond_0
    :goto_0
    const/4 v7, -0x1

    if-le v2, v7, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v2, v7

    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

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
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getCount()I

    move-result v7

    add-int v8, v2, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    :cond_2
    return-void

    :cond_3
    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

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

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(I)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->start(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/SemHorizontalAbsListView$PositionScroller;

    invoke-direct {v0, p0}, Landroid/widget/SemHorizontalAbsListView$PositionScroller;-><init>(Landroid/widget/SemHorizontalAbsListView;)V

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mPositionScroller:Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/SemHorizontalAbsListView$AbsPositionScroller;->startWithOffset(III)V

    return-void
.end method

.method public startMultiChoiceMode()V
    .locals 2

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mMultiChoiceModeCallback:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;

    invoke-virtual {p0, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    iget v0, p0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

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
    .locals 34

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-nez v7, :cond_0

    const/16 v32, 0x1

    return v32

    :cond_0
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v13

    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v21

    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getRight()I

    move-result v15

    add-int/lit8 v32, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getLeft()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    move-object/from16 v0, v23

    iget v10, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v23

    iget v11, v0, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v12, v32, v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    sub-int v28, v15, v12

    sub-int v29, v10, v20

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

    if-gez p1, :cond_4

    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-gez p2, :cond_5

    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-nez v14, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v15

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    :goto_3
    add-int v32, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v32, v32, v20

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

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

    :goto_6
    if-nez v5, :cond_2

    if-eqz v4, :cond_10

    :cond_2
    if-eqz p2, :cond_f

    const/16 v32, 0x1

    :goto_7
    return v32

    :cond_3
    sub-int v28, v10, v13

    sub-int v29, v21, v12

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto/16 :goto_1

    :cond_5
    add-int/lit8 v32, v31, -0x1

    move/from16 v0, v32

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    sub-int v32, v13, v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mFirstPositionDistanceGuess:I

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    add-int v32, v32, v21

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    move/from16 v32, v0

    add-int v32, v32, p2

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mLastPositionDistanceGuess:I

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x0

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    goto :goto_6

    :cond_c
    if-nez v14, :cond_d

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    move/from16 v0, v32

    if-lt v13, v0, :cond_d

    if-ltz p2, :cond_d

    const/4 v5, 0x1

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

    goto/16 :goto_6

    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_f
    const/16 v32, 0x0

    goto/16 :goto_7

    :cond_10
    if-gez p2, :cond_1b

    const/16 v27, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInTouchMode()Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->hideSelector()V

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getHeaderViewsCount()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mItemCount:I

    move/from16 v32, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->getFooterViewsCount()I

    move-result v33

    sub-int v16, v32, v33

    const/16 v30, 0x0

    const/4 v9, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_21

    if-eqz v27, :cond_1e

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    :cond_12
    add-int/lit8 v18, v7, -0x1

    :goto_a
    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-lt v0, v1, :cond_1c

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mMotionViewOriginalLeft:I

    move/from16 v32, v0

    add-int v32, v32, p1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/SemHorizontalAbsListView;->mMotionViewNewLeft:I

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    if-lez v9, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1, v9}, Landroid/view/ViewGroup;->detachViewsFromParent(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->removeSkippedScrap()V

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v32

    if-nez v32, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_15
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semOffsetChildrenLeftAndRight(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    if-eqz v27, :cond_27

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-nez v32, :cond_17

    if-eqz v27, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    :cond_17
    :goto_b
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    move/from16 v32, v0

    if-eqz v32, :cond_28

    move/from16 v0, v28

    if-lt v0, v3, :cond_18

    move/from16 v0, v29

    if-ge v0, v3, :cond_19

    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->fillGapRTL(Z)V

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

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    if-ltz v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_1a

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

    :cond_1a
    :goto_d
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/AdapterView;->mBlockLayoutRequests:Z

    invoke-virtual/range {p0 .. p0}, Landroid/widget/SemHorizontalAbsListView;->invokeOnItemScrollListener()V

    const/16 v32, 0x0

    return v32

    :cond_1b
    const/16 v27, 0x0

    goto/16 :goto_9

    :cond_1c
    move/from16 v30, v18

    add-int/lit8 v9, v9, 0x1

    add-int v25, v14, v18

    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_1d

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_1d
    add-int/lit8 v18, v18, -0x1

    goto/16 :goto_a

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1f

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    :cond_1f
    const/16 v18, 0x0

    :goto_e
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    add-int/lit8 v9, v9, 0x1

    add-int v25, v14, v18

    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_20

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_20
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    :cond_21
    if-eqz v27, :cond_24

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_22

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v32, v0

    add-int v22, v22, v32

    :cond_22
    const/16 v18, 0x0

    :goto_f
    move/from16 v0, v18

    if-ge v0, v7, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    add-int/lit8 v9, v9, 0x1

    add-int v25, v14, v18

    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_23

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_23
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    sub-int v26, v32, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x22

    const/16 v33, 0x22

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_25

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v32, v0

    sub-int v26, v26, v32

    :cond_25
    add-int/lit8 v18, v7, -0x1

    :goto_10
    if-ltz v18, :cond_13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v32

    move/from16 v0, v32

    move/from16 v1, v26

    if-le v0, v1, :cond_13

    move/from16 v30, v18

    add-int/lit8 v9, v9, 0x1

    add-int v25, v14, v18

    invoke-virtual {v6}, Landroid/view/View;->clearAccessibilityFocus()V

    move/from16 v0, v25

    move/from16 v1, v17

    if-lt v0, v1, :cond_26

    move/from16 v0, v25

    move/from16 v1, v16

    if-ge v0, v1, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mRecycler:Landroid/widget/SemHorizontalAbsListView$RecycleBin;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/widget/SemHorizontalAbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_26
    add-int/lit8 v18, v18, -0x1

    goto :goto_10

    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v32, v0

    add-int v32, v32, v9

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AdapterView;->mFirstPosition:I

    goto/16 :goto_b

    :cond_28
    move/from16 v0, v28

    if-lt v0, v3, :cond_29

    move/from16 v0, v29

    if-ge v0, v3, :cond_19

    :cond_29
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->fillGap(Z)V

    goto/16 :goto_c

    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v33, v0

    sub-int v8, v32, v33

    if-ltz v8, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v32

    move/from16 v0, v32

    if-ge v8, v0, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    const/16 v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/widget/SemHorizontalAbsListView;->positionSelector(ILandroid/view/View;)V

    goto/16 :goto_d

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_d
.end method

.method triggerDoubleFling(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    check-cast v2, Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0x2

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-gez p1, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v3, v1, 0x3

    if-le v2, v3, :cond_3

    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v3, v1, 0x3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    :cond_3
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    goto :goto_0
.end method

.method triggerJumpScrollToTop()V
    .locals 1

    sget v0, Landroid/widget/SemHorizontalAbsListView;->JUMP_SCROLL_TO_TOP_INITIATED:I

    iput v0, p0, Landroid/widget/SemHorizontalAbsListView;->mJumpScrollToTopState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->triggerDoubleFling(I)V

    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method updateScrollIndicators()V
    .locals 9

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_5

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v7, :cond_4

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    if-lez v3, :cond_0

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_7

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ge v4, v7, :cond_8

    const/4 v0, 0x1

    :cond_0
    :goto_2
    iget-object v7, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollLeft:Landroid/view/View;

    if-eqz v0, :cond_9

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_b

    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_a

    const/4 v1, 0x1

    :goto_4
    if-nez v1, :cond_2

    if-lez v3, :cond_2

    iget-boolean v4, p0, Landroid/widget/SemHorizontalAbsListView;->mIsRTL:Z

    if-eqz v4, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_5
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    iget v7, p0, Landroid/view/View;->mRight:I

    iget-object v8, p0, Landroid/widget/SemHorizontalAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    if-le v4, v7, :cond_e

    const/4 v1, 0x1

    :cond_2
    :goto_6
    iget-object v4, p0, Landroid/widget/SemHorizontalAbsListView;->mScrollRight:Landroid/view/View;

    if-eqz v1, :cond_f

    :goto_7
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lez v4, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    move v4, v6

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    iget v4, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    add-int/2addr v4, v3

    iget v7, p0, Landroid/widget/AdapterView;->mItemCount:I

    if-ge v4, v7, :cond_c

    const/4 v1, 0x1

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    goto :goto_6

    :cond_f
    move v5, v6

    goto :goto_7
.end method

.method updateSelectorState()V
    .locals 4

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/SemHorizontalAbsListView;->shouldShowSelector()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsHoveredByMouse:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorPosition:I

    iget v3, p0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findEllipsizedTextView(Landroid/view/View;)Z

    move-result v1

    iget-boolean v2, p0, Landroid/widget/SemHorizontalAbsListView;->mIsPenHovered:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/util/StateSet;->NOTHING:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

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
